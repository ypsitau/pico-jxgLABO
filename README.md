# pico-jxgLABO

Introduction is [here](https://ypsitau.github.io/pico-jxgLABO/).

## How to Build

At first, clone this repository including submodules:

```bash
$ git clone https://github.com/ypsitau/pico-jxgLABO.git
$ cd pico-jxgLABO
$ git submodule update --init --recursive
```

The easiest way to build is to use Visual Studio Code (VS Code) with Raspberry Pi Pico extension. In `pico-jxgLABO` directory, execute VS Code as follows:

```bash
$ code .
```
Press `F7` key to build. After building, the UF2 file will be located in `build`.

You can also build from the command line using CMake and Ninja.

```
$ cmake -S . -B build -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=BOARD
$ cmake --build build --config Release
```

Where `BOARD` takes one of the following values:

- `pico`: Original Raspberry Pi Pico
- `pico_w`: Original Raspberry Pi Pico W (with Wi-Fi)
- `pico2`: Raspberry Pi Pico 2
- `pico2_w`: Raspberry Pi Pico 2 W (with Wi-Fi)

After building, the UF2 file will be located in `build`.
