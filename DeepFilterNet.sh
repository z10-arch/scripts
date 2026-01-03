#/bin/sh
apt install python3-pip -y
pip3 install torch torchaudio --index-url https://download.pytorch.org/whl/cu121 --break-system-packages
pip3 install deepfilternet soundfile numpy tqdm sympy==1.13.1 --break-system-packages --ignore-installed packaging
python3 -c "import torch; from df.enhance import init_df; print(f'✅ GPU: {torch.cuda.get_device_name(0)}'); print('✅ DeepFilterNet Loaded Successfully')"
