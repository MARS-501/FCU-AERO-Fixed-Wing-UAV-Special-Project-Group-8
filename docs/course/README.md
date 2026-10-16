# 課程規範與專案限制 / Course Requirements and Project Constraints

> 原始文件：[航太專題與實作_課程說明.pdf](航太專題與實作_課程說明.pdf)（系上提供）。以下為文字整理，若與 PDF 不一致，以 PDF 為準。
> Source: the PDF above (from the department). If this transcription differs, the PDF wins.

## 1. 載具規範（需求編號）

需求編號方便之後做需求追溯：每一項分析、測試都要能對回某一條需求。

| 編號 | 需求 | 驗證方式 |
|---|---|---|
| REQ-01 | 定翼機 | 檢查 |
| REQ-02 | 翼展以不大於 3 m 為原則 | 量測 |
| REQ-03 | 起飛／降落方式不限 | — |
| REQ-04 | 以電動無刷馬達為推力來源，數量不限 | 檢查 |
| REQ-05 | 滯空時間至少約 3–5 分鐘 | 分析＋飛行測試 |
| REQ-06 | 可額外承載至少 350 g 重物 | 分析＋載重飛行 |
| REQ-07 | 附加功能（FPV、投彈…）、特殊性能或載具特色（加分項） | 展示 |
| REQ-08 | 系上提供 Futaba 遙控器一組，耗材經費不大於 NT$8,000 | 經費表 |
| REQ-09 | 專題（三）期末完成：空機五邊飛行、載重五邊飛行、附加功能的動態與靜態展示及檢測 | 飛行測試 |
| REQ-10 | 專題（三）期末完成海報、口頭簡報、書面報告 | 繳交 |

## 2. 專題（二）期末報告項目

1. **UAV 初步設計**：提出分析與模擬結果，證明載具可達成設計要求。
   - (a) 升阻力模擬、Cmα 曲線圖、巡航速度
   - (b) 推力與阻力計算、最大起飛重量、推重比
   - (c) 翼負載、最大飛行速度、穩定度分析
   - (d) 推力（含槳）估算、結構分析等
2. **UAV 細部設計**：載具設計圖、各加工元件以爆炸圖呈現、加工方式與材料、製作經費規劃。
3. 介紹所屬實驗室的軟硬體設備可用於 UAV 設計、分析、模擬、製作的用途（國外案例亦可）。
4. Google Site 協作平台（或其他師生、同儕互動佐證資料）的使用情形。
5. 期末成果報告與展示（海報、簡報、縮小模型等）。
6. 專題（三）的進度規劃。

**其他要求**：組員分工並列出負責項目、定期開會報告。專題（三）時要以師徒制協助下一屆，並在開學前輔導大一新生的 Freshman Project。

## 3. 已確認的專案限制（2026-10-16）

| 項目 | 內容 |
|---|---|
| 遙控器 | 系上提供。附件說明書為 **Futaba T12K**（規範寫 10J，待確認），**有附接收機**（R3008SB，S.BUS） |
| 馬達 | 系上提供 Dualsky **ECO 3520C-V2，510KV**（210 g；原廠建議 5S 15×6／15×8、6S 14×6／14×7） |
| 電調 | 系上提供好盈 **Platinum 60A V4**（直升機電調，**使用前要切成固定翼模式**；3–6S，BEC 5–8 V） |
| 飛控 | 系上**沒有提供**，需自行採購（傾向支援 ArduPilot 的 F405 固定翼飛控） |
| 試飛 | 由系上有執照的老師操作。老師是否飛過增穩飛控的飛機：**待確認** |
| 試飛時間 | 可能在 **11 月中到 12 月初** |
| 場地 | 限制場域；**草地與柏油跑道都有** |
| 起飛方式 | 老師無法自行手擲。規範寫「起飛／降落方式不限」，所以起飛台車、彈射繩、組員手擲都可以 |

## 4. 目前的討論結論

- **方向**：以 FOS_UAV 為基礎，用系統工程流程補齊它缺少的分析，例如需求、重量與重心預算、性能、穩定度、結構、構型管理、測試計畫。
- **第一版原則**：只改不得不改的地方（動力換成系上零件、加上 350 g 載重、材料替代），其他照抄 FOS_UAV 已飛過的設計。
- **機翼**：相似放大，讓翼負載維持在 V4.0 已飛過的約 35 g/dm²。全重粗估 1.8 kg，翼展約 1.47 m，待第一週重量預算確認。
- **起飛**：第一版用起飛台車或彈射繩，降落用機腹著陸。固定式起落架留到專題（三）當優化題目。
- **提案簡化**：第一版只做分析、手飛固定動作加紀錄、手動投放；自動化腳本和自動投放留到專題（三）。

---

## English summary

The course requires a fixed-wing electric UAV with a span of at most 3 m, any takeoff/landing method, 3–5+ minutes endurance, at least 350 g extra payload, optional extra features, a Futaba radio from the department, and at most NT$8,000 in consumables. The final demo (capstone III) includes empty and loaded traffic-pattern flights. The capstone II report must cover lift/drag simulation, a Cmα curve, cruise speed, thrust/drag, MTOW, thrust-to-weight, wing loading, max speed, stability, structure, exploded drawings, and a budget. Confirmed constraints: the department supplies a Futaba T12K with receiver, an ECO 3520C-V2 510KV motor, and a Platinum 60A V4 ESC (switch it to fixed-wing mode). The team buys its own flight controller. A licensed teacher will fly, probably mid-November to early December, on a restricted field with both grass and asphalt. Version 1 keeps FOS_UAV's proven design, scaled for the same wing loading, and uses a takeoff dolly or bungee with belly landing.
