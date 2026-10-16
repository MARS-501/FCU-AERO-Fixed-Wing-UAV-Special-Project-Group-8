# 候選上游專案評估 / Candidate Upstream Projects

> 資料取自 GitHub API，查詢日期 2026-10-16。星數與 issue 數會變動，挑 issue 前請再到上游確認。
> Data from the GitHub API on 2026-10-16. Numbers change; re-check upstream before picking an issue.

## 專題主軸：FOS_UAV / Anchor project

團隊選定的出發點是 [rahulsarchive/FOS_UAV](https://github.com/rahulsarchive/FOS_UAV)（固定翼飛翼測繪平台），詳細分析見 [fos-uav-analysis.md](fos-uav-analysis.md)。
它沒有程式碼、維護者已不活躍，因此下表的活躍專案是**軟體貢獻**的主要去處；其中 FOS_UAV 實際使用的是 **ArduPilot（Plane）、Mission Planner、OpenDroneMap**。

The team's starting point is FOS_UAV (a fixed-wing mapping platform); see [fos-uav-analysis.md](fos-uav-analysis.md). It has no code and is no longer maintained, so software contributions go to the active projects below — mainly the ones FOS_UAV itself uses: ArduPilot (Plane), Mission Planner, and OpenDroneMap.

## 總覽 / Overview

| 專案 Project | 用途 Purpose | 語言 Lang | 授權 License | ★ | 開放 issue | 新手標籤 Beginner label（開放數） |
|---|---|---|---|---|---|---|
| [ArduPilot/ardupilot](https://github.com/ArduPilot/ardupilot) | 飛控韌體（Copter/Plane/Rover/Sub） | C++ / Python | GPL-3.0 | 16.1k | 3288 | [`good first issue`](https://github.com/ArduPilot/ardupilot/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22)（47） |
| [PX4/PX4-Autopilot](https://github.com/PX4/PX4-Autopilot) | 飛控韌體（多旋翼/固定翼/VTOL） | C++ | BSD-3-Clause | 12.8k | 455 | `community:good-first-issue`（0）、[`scope:docs`](https://github.com/PX4/PX4-Autopilot/issues?q=is%3Aissue+is%3Aopen+label%3Ascope%3Adocs)（3） |
| [mavlink/qgroundcontrol](https://github.com/mavlink/qgroundcontrol) | 地面站 GCS（Qt） | C++ / QML | Apache-2.0（雙授權） | 5.0k | 472 | `Docs`（0） |
| [mavlink/MAVSDK](https://github.com/mavlink/MAVSDK) | 機載/地面 API SDK | C++ | BSD-3-Clause | 0.9k | 41 | [`help wanted`](https://github.com/mavlink/MAVSDK/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)（4） |
| [mavlink/mavlink](https://github.com/mavlink/mavlink) | 通訊協定定義與產生器 | Python / XML | 產生器 LGPL-3.0、產生的程式碼 MIT（見 repo） | 2.5k | 123 | — |
| [ArduPilot/pymavlink](https://github.com/ArduPilot/pymavlink) | Python MAVLink 函式庫 | Python | LGPL-3.0（見 repo） | 0.7k | 244 | `help wanted`（0） |
| [ArduPilot/ardupilot_wiki](https://github.com/ArduPilot/ardupilot_wiki) | ArduPilot 官方文件 | reStructuredText | CC-BY-SA（見 repo） | 0.7k | 177 | `docs` |
| [OpenDroneMap/ODM](https://github.com/OpenDroneMap/ODM) | 航拍影像處理（正射影像、DSM、點雲） | Python / C++ | AGPL-3.0 | 6.5k | — | — |
| [ArduPilot/MissionPlanner](https://github.com/ArduPilot/MissionPlanner) | Windows 地面站 | C# | GPL-3.0 | 2.4k | 1376 | — |
| [betaflight/betaflight](https://github.com/betaflight/betaflight) | FPV 競速飛控 | C | GPL-3.0 | 11.7k | 168 | `Help Wanted`（0） |
| [iNavFlight/inav](https://github.com/iNavFlight/inav) | 導航型 FPV 飛控 | C | GPL-3.0 | 4.3k | 455 | `Documentation needed` |
| [aerostack2/aerostack2](https://github.com/aerostack2/aerostack2) | ROS 2 自主飛行框架 | C++ | BSD-3-Clause | 0.4k | 70 | — |

## 評估重點 / Criteria

1. **新手友善度**：是否有持續標註的新手 issue、維護者是否回應 PR。
2. **能否只用模擬開發**：學生專題不一定每人都有實機，SITL 能在筆電上跑最重要。
3. **入門門檻**：建置時間、程式碼規模、需要的背景知識。
4. **貢獻類型多元**：程式碼、測試、文件、翻譯都能貢獻，讓不同專長的組員都有事做。

## 建議 / Recommendation

### 主攻：ArduPilot（Plane）

- **FOS_UAV 本身就是用 ArduPilot Plane 飛**，在 ArduPilot 上做的事可以直接用在專題的飛翼上；SITL 有飛翼 frame（`-f plane-elevon`）。

- **新手 issue 最多**（47 個 `good first issue`），官方 CONTRIBUTING 明確表示**不需事先認領**，直接做、直接發 PR。
- **SITL 在 macOS 上可原生建置執行**，不需要實機就能重現大部分問題。
- 有 Python 撰寫的**自動化測試框架**（`Tools/autotest/`），適合邊學邊寫測試。
- 文件在獨立的 [ardupilot_wiki](https://github.com/ArduPilot/ardupilot_wiki)，修文件不必碰韌體建置，是最快拿到第一個合併 PR 的途徑。
- 注意：GPL-3.0，提交的程式碼也會是 GPL-3.0。

### 副攻：OpenDroneMap

- FOS_UAV 測繪流程的後半段（影像 → 正射影像 / DSM）。可以貢獻文件、回報處理問題、提供測試資料集。
- AGPL-3.0。

### 選配：PX4 生態系（PX4 / MAVSDK / QGroundControl）

- FOS_UAV 沒有用到 PX4；只有在專題轉向多旋翼、ROS 2 或自主任務時才需要。

- 若組員偏好 ROS 2、或專題後續想做自主任務，PX4 + MAVSDK 較主流。
- PX4 目前新手標籤幾乎沒有開放 issue，建議從**文件**（`scope:docs`，文件位於 PX4-Autopilot repo 的 `docs/` 目錄）或 **MAVSDK `help wanted`** 切入。
- 提交規範較嚴格（Conventional Commits、astyle、clang-tidy），適合第二階段。

### 建議分工 / Suggested split

| 角色 | 主要上游 | 第一個目標 |
|---|---|---|
| FOS_UAV 組 | FOS_UAV | 開授權 issue、送錯字與文件修正 PR |
| 韌體組 | ArduPilot | 解一個 `good first issue`（優先選 Plane 相關），附上 autotest |
| 測試/工具組 | ArduPilot autotest、pymavlink | 為既有功能補測試或修 Python 工具 |
| 文件組 | ardupilot_wiki、PX4 docs | 修正過時內容、補範例、截圖 |
| 測繪組 | OpenDroneMap | 用範例資料集跑通流程，回報問題或補文件 |

---

## English summary

The team's anchor is **FOS_UAV** (see fos-uav-analysis.md). Because it has no code and is unmaintained, software contributions go to the active projects in its stack. We recommend **ArduPilot (Plane) as the primary target** — FOS_UAV flies on ArduPilot Plane, and SITL has a flying-wing frame (`-f plane-elevon`): it has the most open beginner issues (47 labeled `good first issue`), its CONTRIBUTING guide says issues are not assigned and you can simply work on one and open a PR, SITL builds and runs natively on macOS, and it has a Python autotest framework that is a good way to learn the codebase. Its docs live in a separate wiki repo, which is the fastest path to a first merged PR.

**OpenDroneMap** (AGPL-3.0) is the secondary target, covering the image-processing half of the mapping workflow. The **PX4 ecosystem** is optional: FOS_UAV does not use it, so it only matters if the project shifts toward multirotors, ROS 2, or autonomous missions. PX4 currently has almost no open beginner-labeled issues, so start with docs (`scope:docs`, which live under `docs/` in the PX4-Autopilot repo) or MAVSDK `help wanted` issues. Its commit rules are stricter (Conventional Commits, astyle, clang-tidy), so it suits a second phase.
