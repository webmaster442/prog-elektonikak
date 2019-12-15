git clone --recurse-submodules -j8 --depth 1 https://github.com/espressif/arduino-esp32
cd arduino-esp32
cd tools
curl -L https://dl.espressif.com/dl/xtensa-esp32-elf-win32-1.22.0-80-g6c4433a-5.2.0.zip -o xtensa-esp32-elf-win32-1.22.0-80-g6c4433a-5.2.0.zip
curl -L https://dl.espressif.com/dl/esptool-2.3.1-windows.zip -o esptool-2.3.1-windows.zip
curl -L https://github.com/igrr/mkspiffs/releases/download/0.2.3/mkspiffs-0.2.3-arduino-esp32-win32.zip -o mkspiffs-0.2.3-arduino-esp32-win32.zip
unzip xtensa-esp32-elf-win32-1.22.0-80-g6c4433a-5.2.0.zip
unzip esptool-2.3.1-windows.zip
unzip mkspiffs-0.2.3-arduino-esp32-win32.zip
rm xtensa-esp32-elf-win32-1.22.0-80-g6c4433a-5.2.0.zip
rm esptool-2.3.1-windows.zip
rm mkspiffs-0.2.3-arduino-esp32-win32.zip
