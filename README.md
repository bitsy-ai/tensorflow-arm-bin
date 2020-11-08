# Community-built TensorFlow binaries


## Raspbery Pi

The [TensorFlow team](https://www.tensorflow.org/install/pip) provides an official wheel for Python3.5 on Raspberry Pi 1-3 and Pi Zero. All other wheels were [cross-compiled from source](https://www.tensorflow.org/install/source_rpi). 


| Raspberry Pi | Python | Arch    | TensorFlow wheel                                                                                             |
|--------------|--------|---------|---------------------------------------------------------------------------------------------------|
| Pi Zero      | 3.5    | arm6l   | [2.3.0](https://storage.googleapis.com/tensorflow/raspberrypi/tensorflow-2.3.0-cp35-none-linux_armv6l.whl) |
| Pi 2, 3      | 3.5    | arm7l   | [2.3.0](https://storage.googleapis.com/tensorflow/raspberrypi/tensorflow-2.3.0-cp35-none-linux_armv7l.whl) |
| Pi 4         | 3.7    | arm7l   | [2.4.0rc0](https://github.com/bitsy-ai/tensorflow-arm-bin/releases/download/2.4-rc0/tensorflow-2.4.0rc0-cp37-none-linux_armv7l.whl), [2.3.1](https://github.com/bitsy-ai/tensorflow-arm-bin/releases/download/2.3.1/tensorflow-2.3.1-cp37-none-linux_armv7l.whl)                                                                                                  |                                                                                                  |
| Pi 4         | 3.7    | aarch64 | [2.4.0rc0](https://github.com/bitsy-au/tensorflow-arm-bin/releases/download/2.4-rc0/tensorflow-2.4.0rc0-cp37-none-linux_aarch64.whl), [2.3.1](https://github.com/bitsy-ai/tensorflow-arm-bin/releases/download/2.3.1/tensorflow-2.3.1-cp37-none-linux_aarch64.whl)                                                                                                 |
| Pi 4         | 3.8    | aarch64 |                                                                                                   |
|              |        |         |                                                                                                   |



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
