import openpyxl

wb = openpyxl.Workbook()
sh = wb.active
sh.title= "Hello Test"
sh['C5'].value='Hello'

wb.create_sheet(title="Sheet Two")
sh1=wb['Sheet Two']
sh1['B3'].value='Hiiii'
wb.save("..//resources//CreatedExcel.xlsx")
