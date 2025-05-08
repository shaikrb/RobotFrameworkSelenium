import os

def create_folder():
    os.mkdir("D:\\Temp")

def create_folder_with_name(folderName):
    os.mkdir("D:\\"+folderName)

def concat_strings(str1, str2):
    return str1+" "+str2