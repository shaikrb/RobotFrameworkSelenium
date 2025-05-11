import time

from robot.libraries.BuiltIn import BuiltIn
from selenium.webdriver.common.by import By

class SeleniumExtKeywords:

    def _get_driver(self):
        seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
        return seleniumlib.driver

    def enter_text(self, text):
        driver = self._get_driver()
        field = driver.find_element(By.NAME, 'fld_username')
        field.send_keys(text)
        time.sleep(5)