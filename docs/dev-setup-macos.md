# macOS 開發環境建置 / macOS Development Setup

> 適用 Apple Silicon（M 系列）與 macOS 26。上游建置方式常更新，**以官方文件為準**，本文只整理流程與常見坑。
> For Apple Silicon and macOS 26. Upstream instructions change often; **the official docs are authoritative**.

## 0. 共同前置 / Prerequisites

```bash
xcode-select --install          # Command Line Tools（含 git、clang）
# Homebrew：https://brew.sh
```

clone 上游請用 `./scripts/setup-upstream.sh`（會一併初始化 submodule），程式碼會放在 `upstream/<專案>/`。

---

## ArduPilot SITL

官方文件：<https://ardupilot.org/dev/docs/building-setup-mac.html>、<https://github.com/ArduPilot/ardupilot/blob/master/BUILD.md>

```bash
cd upstream/ardupilot

# 1) 安裝相依套件（官方腳本）
sh ./Tools/environment_install/install-prereqs-mac.sh
# 完成後依腳本提示重新開終端機，或 source 它修改過的 shell 設定檔

# 2) 建置 SITL
./waf configure --board sitl
./waf copter

# 3) 啟動模擬（含 MAVProxy console 與地圖）
./Tools/autotest/sim_vehicle.py -v ArduCopter --console --map
```

在 MAVProxy 中試飛：

```
mode guided
arm throttle
takeoff 10
```

能看到高度上升即成功。

**常見問題**

- 建置錯誤時先試 `./waf distclean` 後重新 configure。
- Homebrew 的 `binutils` 可能干擾建置，官方建議移除：`brew uninstall binutils`。
- 跑單一 autotest：`./Tools/autotest/autotest.py build.Copter test.Copter.<TestName>`。

---

## PX4 SITL

官方文件：<https://docs.px4.io/main/en/dev_setup/dev_env_mac.html>

```bash
cd upstream/PX4-Autopilot

# 1) 安裝相依套件；--sim-tools 會一併安裝 Gazebo Harmonic（需要輸入密碼）
./Tools/setup/macos.sh --sim-tools

# 2) 啟用腳本建立的 Python 虛擬環境（每個新終端機都要做一次）
source .venv/bin/activate

# 3) 建置並啟動 Gazebo 模擬（x500 四旋翼）
make px4_sitl gz_x500
```

在 PX4 shell（`pxh>`）中試飛：

```
commander takeoff
```

**注意**

- 官方說明 PX4 CI 只在 Apple Silicon 上驗證 macOS 環境，Intel Mac 沒有 CI 覆蓋。
- Gazebo 不是由 Homebrew 安裝，而是腳本透過 pixi 從 conda-forge 安裝到 `Tools/setup/macos/.pixi`。
- 腳本會安裝 XQuartz，第一次安裝後可能需要登出再登入。
- 只要建置硬體韌體、不需要模擬，可省略 `--sim-tools`。

---

## 地面站 / Ground control station

- **QGroundControl**：到 <https://qgroundcontrol.com> 下載 macOS 版，啟動後會自動連上 SITL（UDP 14550）。
- ArduPilot 的 `sim_vehicle.py` 預設已提供 MAVProxy；也可同時開 QGC。

## 硬體（選配）/ Hardware (optional)

大部分新手 issue 只需 SITL。若要實機驗證，請在 tracker 註明使用的飛控板型號與韌體版本，並遵守當地法規（台灣：民用航空法遙控無人機相關規定）在合法場地試飛。

---

## English summary

- **ArduPilot**: run `sh ./Tools/environment_install/install-prereqs-mac.sh`, then `./waf configure --board sitl && ./waf copter`, then `./Tools/autotest/sim_vehicle.py -v ArduCopter --console --map`. In MAVProxy: `mode guided`, `arm throttle`, `takeoff 10`. If builds break, try `./waf distclean`; Homebrew `binutils` can interfere.
- **PX4**: run `./Tools/setup/macos.sh --sim-tools`, `source .venv/bin/activate` (in every new terminal), then `make px4_sitl gz_x500`. In `pxh>`: `commander takeoff`. PX4 CI covers macOS on Apple Silicon only; Gazebo is installed via pixi/conda-forge, not Homebrew.
- **QGroundControl** auto-connects to SITL on UDP 14550.
