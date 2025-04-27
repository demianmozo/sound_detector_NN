#!/Users/demian/miniforge3/envs/ml_env/bin/python

import numpy as np
import sounddevice as sd
import librosa
import serial
import time

# Parámetros
SR = 16000
N_MFCC = 13
N_FRAMES = 61
VECTOR_SIZE = N_MFCC * N_FRAMES
PUERTO_SERIAL = '/dev/ttyUSB0'  # O COM3 en Windows
BAUDRATE = 115200

# UART
uart = serial.Serial(PUERTO_SERIAL, BAUDRATE, timeout=1)
time.sleep(2)  # Espera a que el puerto esté listo

def grabar_audio(duracion=1, sr=SR):
    print("🎙️ Grabando...")
    audio = sd.rec(int(duracion * sr), samplerate=sr, channels=1, dtype='float32')
    sd.wait()
    return audio.flatten()

def extraer_mfcc(audio, sr=SR, n_mfcc=N_MFCC, n_frames=N_FRAMES):
    if len(audio) < sr:
        audio = np.pad(audio, (0, sr - len(audio)))
    elif len(audio) > sr:
        audio = audio[:sr]
    hop_length = int(len(audio) / (n_frames - 1))
    mfcc = librosa.feature.mfcc(y=audio, sr=sr, n_mfcc=n_mfcc, hop_length=hop_length)
    if mfcc.shape[1] < n_frames:
        pad_width = n_frames - mfcc.shape[1]
        mfcc = np.pad(mfcc, ((0, 0), (0, pad_width)))
    elif mfcc.shape[1] > n_frames:
        mfcc = mfcc[:, :n_frames]
    mfcc = mfcc.T  # (61, 13)
    vector = mfcc.reshape(-1)

    # 🔽 Normalizar a rango [0, 255]
    min_val = np.min(vector)
    max_val = np.max(vector)
    if max_val - min_val == 0:
        vector_norm = np.zeros_like(vector)
    else:
        vector_norm = 255 * (vector - min_val) / (max_val - min_val)
    return vector_norm.astype(np.uint8)


def enviar_uart(vector):
    uart.write(vector.tobytes())
    print("📤 Vector enviado a FPGA (uint8).")


# Loop continuo
try:
    while True:
        audio = grabar_audio()
        vector = extraer_mfcc(audio)
        enviar_uart(vector)
        time.sleep(0.1)  # Espera un poco antes de la siguiente captura
except KeyboardInterrupt:
    print("⛔ Interrumpido por el usuario.")
    uart.close()
