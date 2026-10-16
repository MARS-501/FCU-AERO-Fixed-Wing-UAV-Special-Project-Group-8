# FOS_UAV 專案分析 / FOS_UAV Analysis

> 來源：<https://github.com/rahulsarchive/FOS_UAV>，本地 clone 於 `upstream/FOS_UAV/`，分析日期 2026-10-16。
> Source: the repo above, cloned to `upstream/FOS_UAV/`, analyzed 2026-10-16.

## 1. 專案概要

- **目標**：用低成本、開源的軟硬體，做一台**固定翼飛翼（flying wing）航拍測繪無人機**，並建立「資料擷取 → 影像處理」的完整流程。
- **背景**：印度 [ICFOSS](https://icfoss.in/)（International Centre for Free and Open Source Software）無人機研究計畫的一部分。
- **規模**：64 ★、15 forks、49 個 commit。
- **活躍度**：開發集中在 2018-06 ～ 2019-03；之後只有 2021-07 一次合併三個 PR（其中兩個是 2018-09 送出的錯字修正，**等了近三年才合併**）。歷來 **0 個 issue**。
- **授權**：**repo 中沒有 LICENSE 檔**（GitHub 頁面也沒有顯示授權）。

## 2. 內容

| 路徑 | 內容 |
|---|---|
| `README.md` | 飛翼氣動原理（重心、壓力中心、後掠角、reflex）、KFm 階梯翼型、動力系統選型、BOM、V4.0 製作過程、V5.0 VTOL 預告 |
| `Build Log/README.md` | V1.0 → V4.0 每一版的設計、材料、試飛結果與教訓 |
| `Design Files/` | 可 CNC 切割的 DXF 檔：Trainer V0.5、Albatross V2.0、Tomcat V2.1、Orange Fury V3.0（機身、馬達座、電池板） |
| `Images/` | 各版本照片與示意圖 |

### 機型演進

| 版本 | 名稱 | 翼展 | 後掠角 | 翼型 | 材料 | 全重 | 結果 | DXF |
|---|---|---|---|---|---|---|---|---|
| V0.5 | Trainer | — | — | — | — | — | 練習機 | ✅ |
| V1.0 | Phoenix | 800 mm | 30° | Clark Y | 保麗龍 + 熱線切割 | 870 g | 尾重、推力不足，首飛失敗 | ❌ |
| V1.5 | — | — | — | KFm6 | — | — | 暫停 | ❌ |
| V2.0 | Albatross | 1000 mm | 35° | KFm6 | 瓦楞塑膠板 | 1200 g | 首飛成功，但翼負載偏高 | ✅ |
| V2.1 | Tomcat | 1200 mm | 35° | KFm4 | 5 mm Depron | 1000 g | **飛行表現最好**，滑翔佳、慢速穩定 | ✅ |
| V3.0 | Orange Fury | 1400 mm | 30° | KFm4 | 瓦楞塑膠板 | 1500 g | 結構不夠硬、尾重 | ✅ |
| V4.0 | Stingray | 1250 mm | 30° | KFm6 | 5 mm Depron | 1300 g | 飛行良好，可載 GoPro | ❌ |
| V5.0 | VTOL 尾座式 | 1 m | — | — | — | 2.5 kg | 只有一張圖 | ❌ |

### 技術棧

| 層 | 選用 | 對應的活躍開源專案 |
|---|---|---|
| 飛控硬體 | Matek F405-Wing（STM32F405） | — |
| 飛控韌體 | ArduPilot Plane（ChibiOS）；INAV 為備選 | [ArduPilot/ardupilot](https://github.com/ArduPilot/ardupilot)（GPL-3.0）、[iNavFlight/inav](https://github.com/iNavFlight/inav)（GPL-3.0） |
| 地面站 | Mission Planner | [ArduPilot/MissionPlanner](https://github.com/ArduPilot/MissionPlanner)（GPL-3.0）、QGroundControl |
| 影像處理 | OpenDroneMap | [OpenDroneMap/ODM](https://github.com/OpenDroneMap/ODM)（AGPL-3.0，6.5k ★） |
| 其他硬體 | BN-880 GPS、SiK 433 MHz 數傳、FrSky S8R、GoPro | — |

## 3. 發現的問題 = 可以貢獻的地方

| # | 問題 | 類型 | 難度 |
|---|---|---|---|
| 1 | **沒有 LICENSE**。README 說是 open source，但沒有授權檔時，法律上預設為作者保留所有權利，fork 後修改、再散布設計檔都缺乏明確許可 | issue | 低 |
| 2 | README 主推的 **V4.0 Stingray 沒有 DXF 設計檔**，`Design Files/` 只到 V3.0 | issue / 重建設計 | 中～高 |
| 3 | README 的 V4.0 段落用的是 V3.0 的圖（`Images/V3.0/1.png`） | PR | 低 |
| 4 | **馬達規格前後矛盾**：BOM 寫「DYS D3536 1400KV」，描述欄卻寫「1000Kv 700W」；Build Log V3.0 寫「3536 1100Kv」；V4.0 規格 README 寫 3536、Build Log 寫 3530 | PR（需向作者確認） | 低 |
| 5 | DXF 多為 R12 格式（AC1009），未設定單位（`$INSUNITS`），從尺寸推測為 mm，但沒有寫明 | PR（補說明） | 低 |
| 6 | 大量錯字（brun、arieal、autonomysly、Photogrametry、apped、saftey…） | PR | 低 |
| 7 | 沒有 ArduPilot **參數檔**、沒有測繪任務的具體步驟（相機觸發、航線重疊率、ODM 參數） | PR（新增文件） | 中 |
| 8 | V5.0 VTOL 與 Build Log 的「Resources」段落是空的 | PR | 中 |
| 9 | BOM 部分零件可能已停產或有新版（例如 Matek 飛控），需要確認現況並列出替代品 | PR | 中 |
| 10 | `Images/V4.0/.picasaoriginals/`、`.picasa.ini` 是 Picasa 留下的多餘檔案 | PR | 低 |

## 4. 評估

**優點**
- 主題明確（固定翼測繪），從設計、製作、飛控到影像處理的整條流程都有涵蓋，很適合當專題的起點。
- 有實際試飛的教訓紀錄，DXF 可以直接 CNC 或雷切。
- 技術棧（ArduPilot、OpenDroneMap）都是非常活躍的開源專案，有很多可以回饋的地方。

**風險**
- **維護者幾乎不活躍**：PR 可能要很久才被合併，甚至不會被回應。專題成果不能只依賴「FOS_UAV 合併我們的 PR」。
- **授權不明**：在作者補上授權前，以它為基礎公開散布修改後的設計檔有法律疑慮。
- 沒有程式碼可以貢獻，軟體貢獻必須到上游（ArduPilot、ODM 等）進行。

## 5. 建議路線

以 FOS_UAV 為**專題主軸**，貢獻分三個層次：

1. **回饋 FOS_UAV 本身**（低成本、先做）
   - 開 issue 請作者補上授權（草稿見下方）。
   - 送小 PR：修錯字、修正 V4.0 圖片、註明 DXF 單位、清除 Picasa 檔案。
   - 規格矛盾（第 4 項）先用 issue 詢問，不要自己猜。
2. **延續專案**（主要成果）
   - 授權明確後，在團隊的 fork 中補上：V4.0 DXF 重建、ArduPilot 參數檔、測繪任務 SOP、BOM 更新、中英文件。
   - 如果作者一直沒回應授權問題，改成「參考其設計理念、自行重新設計」，並在文件中註明出處。
3. **回饋活躍的上游**（軟體貢獻）
   - **ArduPilot Plane**：飛翼（elevon）設定、Matek 飛控相關文件或 bug。
   - **OpenDroneMap**：處理流程、文件、測試資料集回報。
   - 這部分沿用 [contribution-workflow.md](contribution-workflow.md) 的流程。

### 建議時程

| 階段 | 內容 | 需要實機？ |
|---|---|---|
| 1 | 在 ArduPilot SITL 中跑**飛翼 Plane** 與測繪航線（Survey grid + 相機觸發）；用 ODM 處理公開範例資料集 | 否 |
| 2 | 對 FOS_UAV 開授權 issue、送錯字等小 PR | 否 |
| 3 | 依 DXF 製作機身（建議從有 DXF 且表現最好的 **Tomcat V2.1** 開始），裝上飛控並調參 | 是 |
| 4 | 實際測繪飛行 → ODM 產出正射影像 / DSM | 是 |
| 5 | 把參數檔、SOP、經驗回寫到 fork，並向上游提 PR | 否 |

> 實機飛行請依交通部民用航空局遙控無人機相關規定辦理註冊、操作證與空域申請，並在合法場地進行。

ArduPilot SITL 模擬飛翼：

```bash
cd upstream/ardupilot
./Tools/autotest/sim_vehicle.py -v ArduPlane -f plane-elevon --console --map
```

`plane-elevon` 是升降副翼（elevon）控制的固定翼，對應飛翼；V5.0 尾座式 VTOL 可用 `-f plane-tailsitter`。完整 frame 清單在 `Tools/autotest/pysim/vehicleinfo.json`。

## 6. 授權 issue 草稿 / Draft license issue

> 由團隊成員用自己的帳號貼到 <https://github.com/rahulsarchive/FOS_UAV/issues/new>。

```markdown
**Title:** Could you add a license to this repository?

Hi @rahulsarchive, thank you for sharing FOS_UAV and the detailed build log.

We are a student team in Taiwan and would like to build on this project for our
capstone (fixed-wing aerial mapping), and contribute improvements back
(typo fixes, DXF unit notes, ArduPilot parameter files, an updated BOM, and
possibly a rebuilt V4.0 design file).

The README describes the project as open source, but the repository does not
include a LICENSE file, so it is unclear under what terms the design files and
documentation can be modified and shared. Would you consider adding one?
For hardware designs, CERN-OHL-S/W/P or CC BY-SA 4.0 are common choices.

Also, are the V4.0 (Stingray) DXF files available anywhere?

Thank you!
```

---

## English summary

FOS_UAV is an ICFOSS project for a low-cost, open-source **fixed-wing flying-wing aerial mapping drone**: airframe theory, a build log from V1.0 to V4.0, CNC-ready DXF files, a BOM, and a stack of Matek F405-Wing + ArduPilot Plane + Mission Planner + OpenDroneMap. It has 64 stars and 15 forks, but development stopped in 2019; the only later activity was merging three PRs in 2021 (two of them had waited nearly three years). It has never had an issue.

Key gaps: **no LICENSE file** (legally all rights reserved despite the README calling it open source), **no DXF for V4.0** (the version the README features), a V3.0 image in the V4.0 section, contradictory motor specs, DXF files without declared units, many typos, no ArduPilot parameter files or concrete mapping SOP, and empty VTOL/Resources sections.

Recommendation: use FOS_UAV as the project's backbone and contribute at three levels — (1) small issues/PRs to FOS_UAV itself, starting with a license request (draft above); (2) continue the design in a team fork once licensing is clear, or redesign independently with attribution if it never is; (3) contribute software work to active upstreams in its stack, mainly ArduPilot Plane and OpenDroneMap. Start in SITL (`sim_vehicle.py -v ArduPlane -f plane-elevon`) and with ODM sample datasets before building hardware, beginning with Tomcat V2.1 (has DXF files and the best flight results).
