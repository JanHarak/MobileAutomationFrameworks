from subprocess import Popen, PIPE
import os

class AppiumServerManager:
    def __init__(self):
        self.process = None

    def start_appium(self):
        if not self.process:
            # Zadej absolutní cestu k souboru appium
            self.process = Popen(['C:\\Users\\JanHarakTesena\\AppData\\Roaming\\npm\\appium.cmd'], stdout=PIPE, stderr=PIPE)
            print("Appium server spuštěn")
            

    def stop_appium(self):
        # Zastavení Appium serveru
        if self.process:
            self.process.terminate()
            self.process = None
            print("Appium server zastaven")

class AppiumManager:
    def __init__(self):
        self.appium = AppiumServerManager()

    def start_appium(self):
        self.appium.start_appium()

    def stop_appium(self):
        self.appium.stop_appium()
