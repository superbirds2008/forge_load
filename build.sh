  pip install -r requirements.txt
  python3 -m nuitka --standalone --onefile --output-dir=build --assume-yes-for-download --output-filename=soss-monitor.bin main.py 