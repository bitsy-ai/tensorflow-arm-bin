# Community-built TensorFlow binaries


## Raspbery Pi

The [TensorFlow team](https://www.tensorflow.org/install/pip) provides an official wheel for Python3.5 on Raspberry Pi 1-3 and Pi Zero. 

All other wheels were [cross-compiled from source](https://www.tensorflow.org/install/source_rpi).


| Raspberry Pi | Python | Arch    | URL                                                                                                                                     | Checksum                         |
|--------------|--------|---------|-----------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
| Pi Zero      | 3.5    | arm6l   | [2.3.0](https://storage.googleapis.com/tensorflow/raspberrypi/tensorflow-2.3.0-cp35-none-linux_armv6l.whl) (official)                             |                                  |
| Pi 2, 3      | 3.5    | arm7l   | [2.3.0](https://storage.googleapis.com/tensorflow/raspberrypi/tensorflow-2.3.0-cp35-none-linux_armv7l.whl) (official)                             |                                  |
| Pi 4 / PI 3B+| 3.7    | arm7l   | [2.4.0](https://github.com/bitsy-ai/tensorflow-arm-bin/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_armv7l.whl) (community) | 82114699b2988acd75bfc06ef62fafa6  |
| Pi 4         | 3.7    | aarch64 | [2.4.0](https://github.com/bitsy-ai/tensorflow-arm-bin/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_aarch64.whl) (community) | d8f5fe37d9e6c84c04b7862a77bc9567  |
### Build commands

arm7l
```bash
$ tensorflow/tools/ci_build/ci_build.sh PI-PYTHON37 \
    tensorflow/tools/ci_build/pi/build_raspberry_pi.sh
```

aarch64
```bash
$ tensorflow/tools/ci_build/ci_build.sh PI-PYTHON37 \
    tensorflow/tools/ci_build/pi/build_raspberry_pi.sh AARCH64
```

```bash
$ tensorflow/tools/ci_build/ci_build.sh PI-PYTHON38 \
    tensorflow/tools/ci_build/pi/build_raspberry_pi.sh AARCH64
```
