# Literature Survey: 以 FOS_UAV 開源飛翼為基礎的航太專題研究方向

**Date:** 2026-10-16 | **Papers Found:** 278（去重後；其中約 30 篇判定為核心）| **Date Range:** 近 3 年為主（2023–2026），經典文獻不限年份 | **Search Queries:** 25

> **範圍與限制**
> - 資料庫：arXiv（skill 內建工具）＋ **OpenAlex**（涵蓋 AIAA、MDPI、Elsevier 等航太期刊）＋ Crossref（核對書目）。Semantic Scholar 被限流（HTTP 429），DBLP 只收資訊類，沒有可用結果。
> - 只讀了**摘要**，沒有讀全文。數據與結論引用前請回原文確認。
> - 沒有搜尋 Google Scholar、華藝、國內碩博士論文，這部分建議由組員補查。
> - 設計限制取自系上規範：定翼機、翼展 ≤ 3 m、電動、滯空 3–5 分鐘以上、額外載重 ≥ 350 g、附加功能加分、耗材經費 ≤ NT$8,000；系上提供 Futaba T12K 遙控器、Dualsky ECO 3520C-V2 馬達、好盈 Platinum 60A V4 電調。

---

## Paper Summary Table

| # | Title | Authors | Year | Venue | Citations | Notes |
|---|-------|---------|------|-------|-----------|-------|
| 1 | [New Airfoil-Design Concept with Improved Aerodynamic Characteristics](https://doi.org/10.1061/(asce)0893-1321(1994)7:3(328)) | Fertis | 1994 | J. Aerospace Eng. | — | **Seminal**：KF 階梯翼型的代表性學術論文 |
| 2 | [Discussion of "New Airfoil-Design Concept…"](https://doi.org/10.1061/(asce)0893-1321(1995)8:4(197)) | Lazauskas & Kirke | 1995 | J. Aerospace Eng. | — | 對 #1 的公開質疑（爭議證據） |
| 3 | [Aerodynamic Performance of an Airfoil with Step-Induced Vortex for Lift Augmentation](https://doi.org/10.1061/(asce)0893-1321(1998)11:1(9)) | Finaish & Witherspoon | 1998 | J. Aerospace Eng. | — | **Seminal**：階梯渦流增升機制 |
| 4 | [Investigation of the Kline-Fogleman Airfoil Section for Rotor Blade Applications](https://openalex.org/W110706867) | Lumsdaine et al. | 1974 | NASA TRS | 12 | **Seminal**：風洞結果為**升阻比低於平板** |
| 5 | [Numerical Study on Aerodynamic Characteristics of KF Airfoil and Its 3D Application at Low Re](https://doi.org/10.3795/ksme-c.2014.2.1.029) | Roh & Yee | 2014 | Trans. KSME C | 2 | Re < 2.4×10⁵ 時升阻比提升；3D 機翼應用 |
| 6 | [Effect of Step Depth and Angle in KFm-2 Airfoil](https://openalex.org/W2625779366) | Mishriky & Walsh | 2016 | Global J. Res. Eng. | 5 | CFD；高 Re（5.9×10⁶） |
| 7 | [Experimental investigation of multi-step airfoils in low Reynolds numbers applications](https://doi.org/10.1016/j.heliyon.2024.e32919) | Aziz et al. | 2024 | Heliyon | 17 | 1–5 階梯翼型風洞實驗 |
| 8 | [Comparison of NACA 0012 and KFm-4 Wing Profiles for High Speed UAVs](https://doi.org/10.70858/tijmet.1402218) | Gözüm & Özarpa | 2024 | TIJMET | 0 | 2D CFD，僅 0° 攻角 |
| 9 | [Effect of the Backward-Facing Step Location on the Aerodynamics of a Morphing Wing](https://doi.org/10.3390/aerospace3030025) | — | 2016 | Aerospace | 22 | 階梯位置效應 |
| 10 | [The effect of cavity modified stepped geometry on aerodynamic performance at low Re](https://doi.org/10.1063/5.0264523) | — | 2025 | Physics of Fluids | 10 | 階梯＋凹槽 |
| 11 | [Impact of Passive Modifications on Darrieus VAWT Utilizing the KF Blade Design](https://doi.org/10.3390/en18112718) | — | 2025 | Energies | 11 | 跨領域：KF 用於風機葉片 |
| 12 | [Stability-Constrained Aerodynamic Shape Optimization of Flying Wings](https://doi.org/10.2514/1.c031956) | Mader & Martins | 2013 | J. Aircraft | 93 | **Seminal**：穩定度約束對飛翼外形影響很大 |
| 13 | [Design and Flight Tests of a Small Flying Wing UAV](https://doi.org/10.3390/aerospace13030240) | Zięba et al. | 2026 | Aerospace | 1 | 無垂尾、無人工增穩的飛翼，飛行驗證 |
| 14 | [Flying wing conceptual design and flight testing](https://doi.org/10.5937/fme2404556m) | Milenković-Babić et al. | 2024 | FME Trans. | 5 | 開源軟體設計＋熱線切割保麗龍，飛行極曲線對照 |
| 15 | [Aerodynamic investigation… of a flying wing UAV for cargo delivery and surveillance](https://doi.org/10.3846/aviation.2024.22639) | Muta'ali et al. | 2024 | Aviation | 2 | 載貨飛翼，CFD＋風洞，L/D ≈ 15–17 |
| 16 | [Integrated framework for static stability design of tailless BWB mini-UAVs (XFLR5, LHS, GPR)](https://doi.org/10.1051/meca/2026024) | Hakim et al. | 2026 | Mechanics & Industry | 0 | XFLR5＋代理模型算 Cmα、Cm0 |
| 17 | [Two-Way Coupled Aero-Structural Optimization of Stable Flying Wings](https://doi.org/10.3390/aerospace10040346) | Hoyos et al. | 2023 | Aerospace | 5 | 含 reflex 翼型的氣動結構最佳化 |
| 18 | [Machine-optimized parametric CAD of a stable flying wing UAV glider](https://doi.org/10.1007/s42401-026-00530-w) | Grimm et al. | 2026 | Aerospace Systems | 0 | FreeCAD＋OpenFOAM 自動最佳化，以穩定度為主軸 |
| 19 | [Aerodynamic modeling of a delta-wing UAV for model-based navigation](https://doi.org/10.1007/s13272-024-00727-9) | Longobardi & Škaloud | 2024 | CEAS Aero. J. | 15 | 戶外風洞＋飛行資料辨識氣動模型 |
| 20 | [Flight-Test System Identification Techniques… for Small, Low-Cost, Fixed-Wing Aircraft](https://doi.org/10.2514/1.c037260) | Simmons et al. | 2023 | J. Aircraft | 30 | **Key**：低成本小飛機的系統辨識流程 |
| 21 | [Stalls and Splines: Current Trends in Flight Testing and Aerodynamic Model Identification](https://doi.org/10.2514/1.c037283) | de Visser & Pool | 2023 | J. Aircraft | 5 | 氣動模型辨識綜述 |
| 22 | [Experimental evaluation of the drag curves of small fixed wing UAVs](https://doi.org/10.1017/aer.2023.61) | Weishäupl et al. | 2023 | Aeronautical J. | 1 | **Key**：自動滑翔／減速機動求阻力曲線 |
| 23 | [Experimental Validation of a Stepwise Automatic Determination Method for TECS Parameters in ArduPilot](https://doi.org/10.3390/aerospace13020193) | Fukada et al. | 2026 | Aerospace | 0 | **Key**：ArduPilot Lua 腳本在飛行中自動決定參數 |
| 24 | [Real-Time Wind Estimation for Fixed-Wing UAVs](https://doi.org/10.3390/drones9080563) | Fu et al. | 2025 | Drones | 4 | 只用 GNSS＋空速管＋IMU 估風（UKF） |
| 25 | [Ballistic model of uncontrolled cargo during autonomous high-precision drop from a fixed-wing UAV](https://doi.org/10.15587/1729-4061.2024.313102) | Humennyi et al. | 2024 | EEJET | 0 | 定翼機無導引投放彈道模型（400–600 m、20 m/s） |
| 26 | [AeroThrow: An Autonomous Aerial Throwing System for Precise Payload Delivery](http://arxiv.org/abs/2507.13903) | Li et al. | 2025 | arXiv | — | 多旋翼精準拋投 |
| 27 | [Steps to build a DIY low-cost fixed-wing drone for biodiversity conservation](https://doi.org/10.1371/journal.pone.0255559) | Mesquita et al. | 2021 | PLoS ONE | 18 | DIY 開源定翼機，載重 500 g、65 分鐘 |
| 28 | [Performance Estimation of Fixed-Wing UAV Propulsion Systems](https://doi.org/10.3390/drones8090424) | Etewa et al. | 2024 | Drones | 6 | 馬達＋槳＋電調整合模型 |
| 29 | [The impact of processing parameters on high-accuracy measurements in UAV photogrammetry](https://doi.org/10.1016/j.measurement.2026.120315) | Ćwiąkała et al. | 2026 | Measurement | 4 | 測繪處理參數對精度的影響 |
| 30 | [NeuralFoil: An Airfoil Aerodynamics Analysis Tool Using Physics-Informed ML](http://arxiv.org/abs/2503.16323) | Sharpe & Hansman | 2025 | arXiv | — | 開源翼型快速分析工具 |
| 31 | XFOIL: An Analysis and Design System for Low Reynolds Number Airfoils | Drela | 1989 | Springer LNE 54 | — | **Seminal**：低雷諾數翼型分析工具 |
| 32 | Aircraft System Identification: Theory and Practice | Klein & Morelli | 2006 | AIAA | — | **Seminal**：系統辨識教科書 |
| 33 | Tailless Aircraft in Theory and Practice | Nickel & Wohlfahrt | 1994 | AIAA | — | **Seminal**：無尾翼機設計經典 |

---

## Theme Clusters

### Theme 1：KF／階梯翼型的空氣動力特性

**Summary**：KF 翼型源自 1960 年代的紙飛機專利。Fertis（1994）在學術期刊提出改良性能的主張，但隨即被 Lazauskas & Kirke（1995）公開質疑；更早的 NASA 風洞報告（Lumsdaine, 1974）甚至得到升阻比**低於平板**的結果。近年研究多為 2D CFD（Mishriky 2016、Gözüm 2024）或 2D 風洞（Aziz 2024），結論隨雷諾數、階梯深度與位置而變。Roh & Yee（2014）指出 Re < 2.4×10⁵ 時升阻比可提升。

**Key Papers**：Lumsdaine 1974；Fertis 1994；Lazauskas & Kirke 1995；Finaish & Witherspoon 1998；Roh & Yee 2014；Aziz 2024

**Contribution**：提供階梯渦流機制與 2D 升阻資料，但幾乎都只看 **Cl、Cd、L/D，沒有討論俯仰力矩 Cm**，也**沒有任何飛行實測**。

### Theme 2：小型飛翼／無尾翼 UAV 的穩定性設計

**Summary**：飛翼最難的是縱向靜穩定：需要正的 Cm0（reflex 或後掠加扭轉）和足夠的靜穩定裕度。Mader & Martins（2013）證明加入穩定度約束會大幅改變最佳外形。近兩年出現多篇「用開源工具（XFLR5、OpenVSP、OpenFOAM、FreeCAD）設計，再用飛行測試驗證」的小型飛翼研究（Zięba 2026、Milenković-Babić 2024、Grimm 2026、Hakim 2026）。

**Key Papers**：Nickel & Wohlfahrt 1994；Mader & Martins 2013；Hoyos 2023；Milenković-Babić 2024；Zięba 2026；Grimm 2026；Hakim 2026

**Contribution**：建立「開源工具設計 → 低成本製作 → 飛行驗證」的研究範式，跟系上專題的要求（升阻力模擬、Cmα、穩定度分析）幾乎一致。

### Theme 3：低成本飛行測試與氣動參數辨識

**Summary**：Simmons et al.（2023）整理了低成本小飛機的系統辨識完整流程；Weishäupl et al.（2023）證明用自動滑翔與減速機動就能求出阻力曲線，推力可由轉速或電壓電流估算；Fukada et al.（2026）在 ArduPilot Plane 4.6 用 **Lua 腳本**在飛行中自動決定 TECS 參數，並經 SITL 與實飛驗證；Longobardi（2024）結合戶外風洞與飛行資料辨識三角翼氣動模型。

**Key Papers**：Klein & Morelli 2006；Simmons 2023；de Visser & Pool 2023；Weishäupl 2023；Longobardi 2024；Fukada 2026

**Contribution**：證明**不需要昂貴儀器**也能用飛行資料驗證設計，而且 ArduPilot＋Lua 已有學術先例。

### Theme 4：定翼機精準投放與風場估計

**Summary**：投放研究多集中在降落傘系統、多旋翼投放（IEEE Access 2022、AeroThrow 2025）或高空彈道模型（Humennyi 2024：400–600 m、20 m/s）。Fu et al.（2025）只用一般航電（GNSS、空速管、IMU）就能即時估風，這正是計算投放點所需的輸入。

**Key Papers**：Humennyi 2024；Fu 2025；AeroThrow 2025

**Contribution**：彈道與風估計方法都有，但**低空（數十公尺）、小型定翼機、開源飛控上即時計算投放點**的整合研究很少。

### Theme 5：DIY 開源定翼機與測繪應用

**Summary**：Mesquita et al.（2021）證明 DIY 開源定翼機可載 500 g、飛 65 分鐘並用於生態調查；測繪精度研究（Ćwiąkała 2026）指出處理參數影響很大。這是 FOS_UAV 原本的用途。

**Key Papers**：Mesquita 2021；Ćwiąkała 2026；Etewa 2024（動力系統估算）

**Contribution**：應用面成熟，學術新意較低，但適合作為「附加功能／載具特色」。

---

## Research Gaps

1. **KFm 翼型的俯仰力矩與飛翼穩定性完全沒有數據**：所有 KF 研究都只報告升阻力。飛翼最關鍵的是 Cm0 與 Cmα（決定能不能配平、靜穩定裕度多少），而階梯渦流很可能改變壓力中心。FOS_UAV 實際用 KFm6 飛翼成功飛行，卻沒有任何量化數據。

2. **KF 翼型的學術結論互相矛盾，且沒有飛行實測**：NASA 1974 說比平板差、KSME 2014 說低 Re 時升阻比提升 26%、Fertis 1994 被公開質疑。差異可能來自雷諾數、階梯幾何、2D 與 3D 的不同，但**沒有人用真實飛行資料仲裁**。

3. **開源飛翼專案缺乏「設計預測 vs 實測」的閉環**：FOS_UAV 這類 DIY 專案只有「飛得好／不好」的主觀描述。Theme 3 的低成本辨識方法還沒有被用來回饋開源設計（例如提供可重現的氣動資料、參數檔）。

4. **飛翼載重投放的重心突變效應**：飛翼對重心極敏感（FOS_UAV 日誌多次因重心失敗）。350 g 載重投放瞬間會改變重心與重量，但現有投放研究只關心貨物落點，**沒有討論小型無尾翼機在投放瞬間的縱向響應與配平需求**。

5. **低空、低成本的即時投放點計算缺乏開源實作**：彈道模型（Humennyi 2024）和估風方法（Fu 2025）各自存在，但沒有在 ArduPilot 這類開源飛控上整合、並在數十公尺低空驗證落點精度的研究。

---

## Cross-Domain Findings

- **Finding 1：KF 階梯從風機葉片得到驗證方法**：Darrieus 垂直軸風機研究（Energies 2025、JAFM 2024）把 KF 階梯放在葉片後緣，用 CFD 比較功率係數。它們的網格與紊流模型設定（處理階梯分離流）可以直接借用來算 KFm 飛翼剖面的 Cm。

- **Finding 2：代理模型加速穩定度設計空間探索**：Hakim 2026 用 XFLR5 + 拉丁超立方取樣 + 高斯過程回歸預測 Cmα、Cm0；ML 翼型工具（NeuralFoil 2025）也能快速分析翼型。可以借用來快速掃描「後掠角 × 扭轉 × 翼型」組合；但階梯翼型可能超出 NeuralFoil 的訓練範圍，需要用 CFD 抽樣驗證。

- **Finding 3：自駕飛控腳本化的飛行測試**：Fukada 2026 把「飛行測試機動＋穩態判斷」寫成 ArduPilot Lua 腳本；Weishäupl 2023 證明滑翔／減速機動能求阻力曲線。兩者結合就是**可重現、可開源的自動化飛行測試**。這是從「控制參數調校」轉移到「氣動參數量測」。

- **Finding 4：氣象 UAV 的估風 → 投放點計算**：Fu 2025 為氣象觀測開發的無額外感測器估風法，可轉用到投放落點預測（風是低空投放的主要誤差來源）。

- **Finding 5：多旋翼拋投的軌跡規劃 → 定翼機投放**：AeroThrow（2025）、Parabolic Airdrop（IEEE Access 2022）的釋放時機最佳化概念可借給定翼機，只是定翼機不能懸停，釋放窗口更短。

---

## Innovation Proposals

> 共通前提：以 FOS_UAV 的 V3.0／V4.0 幾何（翼根 380 mm、翼尖 220 mm、後掠 30°）為基準，**放大翼展**以承載 350 g 與系上較重的 ECO 3520C 馬達（210 g）。粗估全重 1.8–2.0 kg；若把翼展放大到約 1.6 m，翼負載約 36 g/dm²（尚未驗證，需在專題二計算）。

### Proposal 1：KFm 階梯翼型對後掠飛翼縱向穩定性的影響——模擬與飛行實測比較

**Description**：同一個平面形狀做兩種剖面（FOS_UAV 的 KFm6 vs 一般 reflex 翼型），分別用 CFD 和 XFLR5 預測 Cl、Cd、**Cm0、Cmα、中性點**，再用飛行實測（不同重心位置下的升降副翼配平量 vs 升力係數）反推中性點，填補 Gap 1、2。

**Feasibility**：
- Data：自己產生。模擬靠 XFLR5／OpenFOAM；實測靠 ArduPilot 日誌（空速、姿態、舵面輸出）。需要一支空速管。
- Compute：2D CFD 在筆電或實驗室工作站即可；XFLR5 秒級。
- Novelty：**KFm 的 Cm 與飛行實測在文獻中幾乎空白**，適合系上專題、國內研討會（如航太學會年會）或 MDPI *Drones*／*Aerospace* 等級的學生論文。
- Timeline：專題二（本學期）完成模擬與 Cmα 曲線；暑假製作；專題三上半學期試飛與實測。

**Potential Weaknesses**：
- 小飛機飛行資料雜訊大，空速量測誤差會直接影響 CL 估算。
- 要做兩副機翼。泡棉便宜，但製作工時加倍；而且手工誤差（FOS_UAV V1.0 的後掠角做歪了 6°）可能大於翼型差異。
- 階梯流場的 CFD 結果對紊流模型很敏感。

**Landing Plan**：
1. **MVP**：XFLR5 建兩種剖面的 3D 飛翼，比較 Cm-α 曲線與中性點（這也直接滿足專題二的 Cmα 報告要求）。
2. 2D CFD 計算 KFm6 剖面的 Cm，檢驗 XFLR5（面板法）是否低估或高估階梯效應。
3. 實飛：在兩到三個重心位置做定速平飛，記錄配平舵量，用「配平舵量對 CL 斜率外插為零」求中性點，和預測比較。
- Success Metrics：預測與實測中性點的差距（例如 < 3% MAC）；兩種翼型的配平阻力差異。
- Fallback Strategy：如果實測雜訊太大，改做地面方法（自製簡易風洞或車頂測試架量力矩），或只保留 CFD 與 XFLR5 的交叉比較。

### Proposal 2：開源自動化飛行測試工具——用 ArduPilot Lua 腳本量測小型 UAV 的阻力曲線與推力

**Description**：把 Weishäupl 2023 的滑翔／減速機動，以 Fukada 2026 的 Lua 腳本方式實作在 ArduPilot Plane 上，自動執行機動並從日誌求出阻力曲線、最佳滑翔速度與巡航速度，填補 Gap 3。工具開源並回饋 ArduPilot（Lua applet）。

**Feasibility**：
- Data：SITL 模擬可先產生資料，再用實機驗證。
- Compute：筆電即可（ArduPilot SITL 官方支援 macOS；這台電腦尚未安裝）。
- Novelty：方法各自存在，整合成**開源、可重現的工具**並回饋上游，是工程貢獻而非理論創新；但完全符合「參與開源專案」的組別目標。
- Timeline：專題二用 SITL 開發與測試；專題三實飛驗證。

**Potential Weaknesses**：
- 學術新意中等；評審可能認為是工具開發。
- 需要空速管。推力估算依賴系上馬達的原廠數據（ECO 3520C 規格書有完整推力表，正好可用）。
- 自動機動有安全風險，需要地理圍欄與手動接管設計。

**Landing Plan**：
1. **MVP**：在 ArduPilot SITL（`plane-elevon` frame）寫 Lua 腳本，自動執行「爬升 → 關油門等速滑翔 → 記錄」，用 Python 解析日誌求阻力曲線。
2. 用 ECO 3520C 規格書的推力表建立「油門 → 推力」模型，求有動力平飛的阻力。
3. 實機驗證，並把結果和專題二手算的推阻力、巡航速度比較。
4. 整理成 PR 送到 ArduPilot 的 Lua applets。
- Success Metrics：SITL 中求得的阻力曲線與 SITL 模型真值誤差 < 10%；實機至少完成一組完整曲線；PR 被上游接受或進入審查。
- Fallback Strategy：如果上游不收，改放在團隊 fork，並寫成可重現的教學文件。

### Proposal 3：小型飛翼的精準投放——ArduPilot 即時投放點計算與重心突變響應

**Description**：在 ArduPilot 上用 Lua 結合內建風估計與簡化彈道模型，即時計算 350 g 載重的投放點（滿足系上「投彈」附加功能）；同時量測投放瞬間的俯仰響應，分析飛翼重心突變的影響，填補 Gap 4、5。

**Feasibility**：
- Data：落點用地面標記和捲尺量測；俯仰響應來自飛控日誌。
- Compute：筆電即可。
- Novelty：低空、開源、飛翼重心突變三者結合的研究少見；同時是系上規範明確加分的「附加功能」。
- Timeline：專題二做彈道模型與 SITL；專題三實測。

**Potential Weaknesses**：
- 低空投放時間只有 2–3 秒，風的影響和釋放機構延遲可能主導誤差。
- 投放 350 g 重物有地面安全風險，需要空曠場地與安全規範。
- 如果把載重艙設計在重心正下方，重心突變效應可能小到測不出來（但這本身也是有用的設計結論）。

**Landing Plan**：
1. **MVP**：建立含阻力與風的 2D 彈道模型，在 SITL 中用 Lua 計算釋放點並觸發舵機。
2. 設計載重艙與釋放機構，分析載重在不同位置時的重心變化與配平需求（可放進專題二的穩定度分析）。
3. 實測：多次投放沙包，統計落點誤差（CEP），並記錄投放前後的俯仰角與舵量。
- Success Metrics：落點 CEP（例如 < 10 m，需依實測調整目標）；投放後俯仰擾動在可接受範圍。
- Fallback Strategy：如果自動計算精度不佳，退回「手動觸發＋地面標記」以確保期末展示，研究部分改成誤差來源分析。

### 建議組合

- **Proposal 1 當研究主軸**：學術新意最高，而且直接產出系上要求的 Cmα、穩定度分析。
- **Proposal 2 當量測工具**：提供 Proposal 1 需要的實測資料，同時完成開源貢獻。
- **Proposal 3 當附加功能**：投放是系上明確加分項目，可以依人力決定做到哪個程度。

三者共用同一架飛機、同一套 ArduPilot 與日誌分析流程，分工上可以分成氣動組、飛控／軟體組、結構／投放組。

---

## References

完整 BibTeX 見本資料夾的 `references.bib`：26 筆由 DOI 自動取得，6 筆經典文獻為手動輸入，正式引用前請再核對。

---

**Generated**: 2026-10-16 | **Tool**: literature-survey skill v1.0（資料庫改用 OpenAlex＋Crossref，詳見 `search_log.json`）
