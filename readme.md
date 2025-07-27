PC-Logger
====================

Ez a projekt két fő funkciót valósít meg:
1. A számítógép bekapcsolási idejének naplózása (`PcTurnOnDateLog`)
2. Képernyőképek automatikus mentése (`ScreenshotLog`)

---

## Használat magyarul

### Automatikus indítás beállítása
Mindkét mappában található .bat fájlt (log.bat és run_screenshot.bat) be kell állítani, hogy automatikusan induljon a rendszerrel:

1. Nyomd meg a `Windows + R` billentyűkombinációt, írd be: `shell:startup` és nyomj Entert.
2. Hozz létre parancsikont a kívánt .bat fájlról, majd másold be ebbe a mappába.

### Fájlok mentési helye
A naplózott fájlok a következő mappába kerülnek:
```
C:\TXYLog\
```

### ScreenshotLog beállítása
A `run_screenshot.bat` futtatásához szerkeszd a fájlt, és állítsd be a `screenshot.ps1` pontos elérési útját.

---

## Usage in English

### Setting up automatic startup
You need to set both .bat files (log.bat and run_screenshot.bat) to start automatically with Windows:

1. Press `Windows + R`, type `shell:startup` and press Enter.
2. Create a shortcut for the desired .bat file and copy it into this folder.

### File save location
The log and screenshot files will be saved to:
```
C:\TXYLog\
```

### ScreenshotLog setup
To use `run_screenshot.bat`, edit the file and set the correct path to `screenshot.ps1`.