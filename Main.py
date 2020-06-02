import requests
from bs4 import BeautifulSoup as bs
import sys
import io
from base64 import b64encode
import eel
import subprocess
from pynput.mouse import Button, Controller
import time

eel.init('web')

def start_edm():
    subprocess.call([r'batch_scripts\start_edm.bat'])
    
def start_upload():
    mouse = Controller() 
    # click upload
    mouse.position = (175, 100)
    mouse.click(Button.left, 2)

@eel.expose
def upload():
    start_edm()
    time.sleep(2)
    start_upload()
    #finish upload
    subprocess.call([r'batch_scripts\upload.bat'])
    return "upload successful"

eel.start('index.html', size=(800, 600))