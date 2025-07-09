# pico-jxgLABO

A comprehensive development platform and demonstration project for Raspberry Pi Pico using the pico-jxglib library. This project showcases advanced USB device functionality, file system integration, and interactive shell capabilities.

## Getting Started

### Prerequisites

- Raspberry Pi Pico SDK
- Visual Studio Code with Raspberry Pi Pico extension (recommended)

### Building

1. **Clone the repository** (including submodules):

   ```bash
   git clone --recursive https://github.com/your-username/pico-jxgLABO.git
   cd pico-jxgLABO
   ```

2. **Build using VS Code tasks**:
   - Open the project in VS Code
   - Use `Ctrl+Shift+P` → "Tasks: Run Task" → "Compile Project"

3. **Manual build**:

   BUild for Pico 1 (RP2040):

   ```bash
   cmake -B build -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico
   cmake --build build --configu Release
   ```

    Build for Pico 2 (RP2350):

   ```bash
   cmake -B build -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico
   cmake --build build --configu Release
   ```

### Flashing

1. **Using VS Code**: Use the "Run Project" or "Flash" task
2. **Manual method**:
   - Hold BOOTSEL button while connecting Pico to USB
   - Copy `pico-jxgLABO.uf2` or `pico2-jxgLABO.uf2` to the mounted USB drive

## Usage

### USB Mass Storage

When connected to a computer, the device appears as both:

1. **Mass Storage Device**: Access to the internal flash-based file system
2. **Serial Port**: Interactive shell access

### Shell Commands

Connect to the CDC serial port (usually appears as a COM port on Windows or /dev/ttyACM* on Linux) to access the interactive shell. Available command categories include:

- File system operations
- GPIO control and monitoring
- PWM signal generation
- I2C device communication
- SPI interface control

### File System

- **Capacity**: 1MB (Pico 1) or 3MB (Pico 2) of flash memory
- **Format**: FAT file system
- **Access**: Via USB MSC or shell commands
