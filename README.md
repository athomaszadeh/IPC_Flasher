This is a limited application that is intended for temporary use at Sienna for converting P4 IPC boards into P5 after the resistor rework. The application will also write genealogy in addition to flashing the special bootloader which does the conversion.
Please note that the following dependencies are needed for this application to work:
LabVIEW Run-time engine 2021 64-bit
Python 3.12 from Microsoft store
pip install python-can udsoncan
pip install git+https://github.com/pylessard/python-can-isotp
download and install PCAN VIEW from https://www.peak-system.com/Software.305.0.html?&L=1
Run Peak Settings after installation to configure the PCAN Dongle as a USB device on address 0x51.
