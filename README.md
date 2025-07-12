# pico-jxgLABO

## What's this?

This is a project for Raspberry Pi Pico that provides a command-line interface to control GPIO, ADC, PWM, I2C, and SPI functionalities. It is designed to work with the jxglib library, which is a C++ library for embedded systems that provides a set of tools to easily manage hardware components.

## Environment

- Raspberry Pi Pico or Pico2
- Visual Studio Code (installed with Raspberry Pi Pico extension)
- Termimal emulator (e.g., PuTTY, Tera Term)

## How to build

```bash
git clone https://github.com/ypsitau/pico-jxgLABO.git
cd pico-jxgLABO
git submodule update --init --recursive
code .
```

In the Visual Studio Code, open the command palette (Ctrl+Shift+P) and select "CMake: Build". This will compile the project and generate a binary file in the `build` directory.

## How to run

Connect your Raspberry Pi Pico to your computer's USB port while holding down the BOOTSEL button. This will mount the Pico as a mass storage device. If you are using Windows, it will appear as a drive (e.g., D:). Once mounted, you can copy the generated binary to the Pico:

```bash
copy build/pico-jxgLABO.uf2 D:
```

After copying the binary, the Pico will reboot and start running the program.

## How to use

Once the Pico is running, you can connect to it using a terminal emulator. Set the serial port to the appropriate COM port (e.g., COM7) and the baud rate to 115200. You will see a command prompt like this:

```text
G:/>
```

Typing `help` will display a list of available commands:

```text
G:/>help
about-me
about-platform
...
```

The following command will set GPIO15 to output mode and turn it on:

```text
G:/>gpio15 func:sio dir:out put:1
```

The following is an example of blinking an LED connected to GPIO 15:

```text
G:/>gpio15 func:sio dir:out repeat { toggle sleep:300 }
```
