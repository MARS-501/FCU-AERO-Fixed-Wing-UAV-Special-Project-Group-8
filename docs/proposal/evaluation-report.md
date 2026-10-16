# 構想評估報告 / Evaluation Report

> 評估標準由 idea-to-proposal skill 的 8 個維度改寫為航太專題適用的版本，門檻 7/10。文獻依據沿用 [2026-10-16 文獻調查](../literature-survey/2026-10-16/survey_report.md)。
> The skill's 8 dimensions were adapted for an aerospace capstone; threshold 7/10. Literature context reuses the 2026-10-16 survey.

## 評估維度說明

| 維度 | 本專題的判斷問題 |
|---|---|
| 新穎性 | 跟 FOS_UAV 和既有文獻比，有沒有別人沒做過的東西？ |
| 技術合理性 | 方法有沒有理論依據？有沒有邏輯漏洞？ |
| 可行性 | 4–6 週、12,000 元以內、現有技能做得到嗎？ |
| 重要性 | 對課程要求、對 FOS_UAV、對下一屆有多大價值？ |
| 清晰度 | 交付物和合格標準是否明確到組員能直接執行？ |
| 驗證有效性 | 主張能不能用量測驗證？指標和誤差容許是否明確？ |
| 可延伸性 | 能不能延伸到專題（三）和下一屆？ |
| 定位 | 是否對準系上規範與期末報告項目？ |

## 第 0 輪評估（第 0 版構想）

| 維度 | 分數 | 理由 |
|---|---|---|
| 新穎性 | 4/10 | 系統工程套用在 DIY 飛翼不是新方法；「預測 vs 實測閉環」對 FOS_UAV 是新的，但沒有具體的研究問題 |
| 技術合理性 | 6/10 | 相似放大有依據，但三個點沒處理：泡棉替代材料密度未知、210 g 推進馬達讓重心後移、XFLR5 如何建模 KFm 階梯翼型 |
| 可行性 | 5/10 | 4 週內要首飛加載重飛行；飛控代購出貨 7–14 天；組員沒有飛翼製作經驗；老師對增穩模式熟悉度不明 |
| 重要性 | 7/10 | 完整涵蓋專題（二）報告要求，也補上 FOS_UAV 的缺口 |
| 清晰度 | 5/10 | 「工程基準」太抽象，沒有交付物清單與合格標準 |
| 驗證有效性 | 4/10 | **沒有空速計**：只靠 GPS 地速，在有風時無法算出空速、升力係數與阻力；預測值沒有誤差容許 |
| 可延伸性 | 7/10 | 自然延伸到專題（三）的起落架、KFm 對照、自動投放 |
| 定位 | 8/10 | 直接對應報告項目 (1)(a)–(d) 與 (2) |
| **總分** | **5.8/10** | 低於門檻：新穎性、技術合理性、可行性、清晰度、驗證有效性 |

## 第 1 輪修正

| 維度 | 修正內容 |
|---|---|
| 新穎性 | 加入一個**可量測的研究問題**（來自文獻調查的研究缺口 1）：**XFLR5 對 KFm6 飛翼中性點的預測，與飛行配平實測差多少？** 做法是在兩個重心位置各飛一段定速平飛，從配平舵量反推中性點。文獻中沒有 KFm 的俯仰力矩與飛行數據 |
| 技術合理性 | ① 第 1 週先買一片泡棉板秤重，算出實際面密度，再定機翼尺寸；② 重量與重心預算明列馬達後移的力矩，用電池前移平衡；③ XFLR5 以「階梯外包絡線」近似 KFm6，並列為已知誤差來源，正好由研究問題來量化；④ 檢查雷諾數：放大後巡航約 12 m/s、平均弦長約 0.36 m，Re ≈ 2.8×10⁵，與 FOS_UAV 同量級 |
| 可行性 | ① **4 道關卡**，每道過關才進下一步，載重飛行若來不及就移到專題（三）；② 飛控、空速計、電池第 1 週下單；③ 一次做兩副機翼；④ 起飛台車或彈射繩，草地機腹著陸；⑤ 首飛前與老師做一次地面操作說明 |
| 清晰度 | 列出交付物 D1–D8，每項附合格標準 |
| 驗證有效性 | ① BOM 加入數位空速計（MS4525D 約 NT$800 起）；② 每個預測值附誤差容許（如巡航速度 ±15%、續航 ±20%）；③ 試飛條件：風速 < 4 m/s，每個動作至少重複 3 次 |

## 第 1 輪評估（第 1 版構想）

| 維度 | 第 0 輪 | 第 1 輪 | 狀態 |
|---|---|---|---|
| 新穎性 | 4 | 6 | ✗（結構性限制，見下） |
| 技術合理性 | 6 | 7 | ✓ |
| 可行性 | 5 | 7 | ✓ |
| 重要性 | 7 | 7 | ✓ |
| 清晰度 | 5 | 8 | ✓ |
| 驗證有效性 | 4 | 7 | ✓ |
| 可延伸性 | 7 | 7 | ✓ |
| 定位 | 8 | 8 | ✓ |
| **總分** | **5.8** | **7.1** | 除新穎性外皆達門檻 |

### 結構性限制

- **新穎性上限約 6/10**：本專題的主要目標是在 4–6 週內做出可飛、可驗證的載具，不是發表研究。再提高新穎性就要加入 KFm 與一般翼型的對照實驗，這會增加變數，與「第一版變數最少」的原則衝突，因此保留到專題（三）。

---

## English summary

The idea was scored on eight dimensions adapted for an aerospace capstone (threshold 7). Round 0 scored 5.8, weak on novelty (no concrete research question), technical soundness (unknown foam density, aft CG from the 210 g pusher motor, KFm modeling in XFLR5), feasibility (4 weeks, procurement lead time), clarity (no deliverables), and validity (no airspeed sensor, no tolerances). Round 1 added a measurable research question (XFLR5-predicted vs flight-measured neutral point of the KFm6 wing from trim at two CG positions), a foam-density check, an explicit CG budget, four go/no-go gates, two airframes, an airspeed sensor, tolerances, and test conditions. Round 1 scored 7.1. Novelty stays at about 6 as a structural limitation, because raising it would add variables that conflict with the fly-first goal.
