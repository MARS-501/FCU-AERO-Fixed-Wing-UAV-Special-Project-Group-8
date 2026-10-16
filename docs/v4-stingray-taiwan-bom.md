# FOS_UAV V4.0 Stingray 簡述與台灣採購報價

> 報價查詢日期：2026-10-16。來源以露天拍賣為主（透過露天公開搜尋 API 取得），另參考台灣模型店網站。價格隨時變動，下單前請再確認。
> Prices checked 2026-10-16, mainly from Ruten (露天) and Taiwan hobby shops. Re-check before ordering.

## 1. V4.0 Stingray 簡述

FOS_UAV 製作日誌中最後一架**實際飛行**的版本（V5.0 VTOL 只有一張示意圖）。

| 項目 | 規格 |
|---|---|
| 構型 | 無尾飛翼（flying wing），升降副翼（elevon）控制 |
| 翼型 | **KFm6** 階梯翼型（Kline-Fogleman） |
| 翼展 | 1250 mm |
| 後掠角 | 30° |
| 翼根弦長 / 翼尖弦長 | 380 mm / 220 mm |
| 全重（AUW） | 約 1300 g |
| 動力 | 3536 1400KV 馬達 + 9×6 螺旋槳（日誌寫 3530，README 寫 3536） |
| 電池 | 5000 mAh（README 未寫串數；依同級配置推測為 3S） |
| 材料 | 5 mm Depron（XPS 發泡板）多層疊合 |
| 飛控 | Matek F405-Wing + ArduPilot |

**設計思路**
- 綜合前幾版的經驗：V2.1 Tomcat 證明 Depron 好加工、飛得好；V3.0 Orange Fury 用瓦楞塑膠板，結果太重太軟，KFm4 也沒有發揮效果。因此 V4.0 改回 Depron，翼型改用 KFm6。
- 這一版要載更多重量（GoPro、大電池），所以後掠角從 35° 降到 30°，配合重心前移。

**製作方式**
1. 把設計匯出成 2D 輪廓，用 ShopBot CNC 切割 Depron。線條大多是直線，也可以用尺和美工刀手工切。
2. 兩片底板當基礎，接縫用上方的補強板蓋住，再把 KFm 階梯層疊上去。膠合處刻意錯開，避免應力集中。
3. 用聚氨酯類泡棉膠（建議 UHU Por）黏合。
4. 升降副翼砂磨出翼型，用尼龍鉸鏈固定。
5. 噴漆後整體包一層膠帶，增加抗拉強度並保護表面。

**飛行結果**：要在機頭裝 5000 mAh 電池和 GoPro 才能配平重心。配平後飛行很穩（作者形容 flies like on rails），滑翔和失速特性都好，KFm6 跟這個機身很搭。

**要注意的問題**
- **repo 沒有 V4.0 的 DXF 設計檔。** 不過 V4.0 的翼根、翼尖弦長和後掠角都跟 V3.0 Orange Fury 一樣（380 / 220 mm、30°），只差翼展（1400 → 1250 mm）。可以用 `Design Files/Orange Fury V3.0/1.4m kfm4.dxf` 為基礎，縮短翼展並改成 KFm6 的層數來重建。
- 馬達規格前後矛盾（KV 值有 1000、1100、1400 三種寫法），電池串數也沒寫。實際配置要用推力測試確認。

## 2. 台灣採購可行性與報價

### 2.1 原 BOM 逐項

| # | 原規格 | 台灣可得性 | 建議採購 | 參考價（NT$） | 來源 |
|---|---|---|---|---|---|
| 1 | Matek F405-Wing | ⚠️ 原型號已停產 | 後繼型號 **Matek F405-WTE**；或 **SpeedyBee F405 Wing**（兩者 ArduPilot 都支援） | F405-WTE 約 2,400–4,800；SpeedyBee 約 2,000–2,600 | [露天 F405-WTE](https://www.ruten.com.tw/item/show?22640783082608)、[露天 SpeedyBee](https://www.ruten.com.tw/item/show?22629106330666) |
| 2 | Beitian BN-880 GPS | ✅ | BN-880 / BN-880Q（Q 版的羅盤晶片是 QMC5883L） | 500–800 | [露天](https://www.ruten.com.tw/item/show?22621730471151) |
| 3 | DYS D3536 1400KV | ✅（DYS 品牌少見） | EMP N3536 1400KV 或同級 3536 外轉子馬達 | 550–850 | [露天](https://www.ruten.com.tw/item/show?22640764587360) |
| 4 | Skywalker 60A ESC | ✅ 台灣店家有現貨 | 好盈 Hobbywing 天行者 60A | 750 | [翔大模型](https://www.sdmodel.com.tw/content.php?cn=item&tid=1448&start=0) |
| 5 | TowerPro MG90S ×2 | ✅ | TowerPro MG90S 全金屬齒 | 70 ×2 | [露天 DIY_LAB（銷售 2,000+）](https://www.ruten.com.tw/item/show?21533365028019) |
| 6 | 連桿頭 ×2 | ✅ | 拉桿頭 / 連桿夾頭（另購鋼絲） | 10–20 ×2 | [露天 天鷹遙控](https://www.ruten.com.tw/item/show?21623839440989) |
| 7 | Gemfan 9×6 槳 | ✅ 台灣店家有現貨 | 乾豐 Gemfan 9×6E（2 支裝），多買備用 | 45／包 | [露天 搞啥飛機](https://www.ruten.com.tw/item/show?21549233768370) |
| 8 | Tattu 5000mAh 30C | ✅ | 3S 5000 mAh 30C 以上（格氏、雷鵬、富力） | 1,700–3,000 | [露天 雷鵬](https://www.ruten.com.tw/item/show?22521593850417)、[露天 格氏 ACE](https://www.ruten.com.tw/item/show?22640804845070) |
| 9 | FrSky S8R 接收機 | ⚠️ 露天找不到 S8R，FrSky 舊協定也逐漸淘汰 | **改用 ELRS 接收機**（要搭配 ELRS 遙控器） | 450–850 | [露天](https://www.ruten.com.tw/item/show?22536826819158) |
| 10 | SiK 433 MHz 數傳 | ⚠️ 買得到，但**有法規疑慮**（見 2.3） | Holybro SiK V3；或改用不需另外買數傳的方案 | 2,300–3,850 | [露天 天鷹科技](https://www.ruten.com.tw/item/show?21449918836128) |
| 11 | 5 mm Depron ×10 | ❌ **台灣幾乎買不到**，露天只有成品套件 | **5 mm 珍珠板**（60×90 cm）替代；或少量從國外進口 Depron | 640（15 片） | [露天 找找美術](https://www.ruten.com.tw/item/show?42445148184454) |

### 2.2 BOM 沒列但一定要買的

| 項目 | 建議 | 參考價（NT$） | 來源 |
|---|---|---|---|
| 遙控器 | RadioMaster Pocket（ELRS 版） | 3,000–3,700 | [露天](https://www.ruten.com.tw/item/show?22540078039101) |
| 鋰電池平衡充電器 | SkyRC E430 或同級 2–4S 平衡充 | 500–1,100 | [露天](https://www.ruten.com.tw/item/show?22603974082429) |
| 泡棉膠 | UHU Por | 60–120 | [露天 飛揚模型](https://www.ruten.com.tw/item/show?21620728582104)、[露天 港都RC](https://www.ruten.com.tw/item/show?21851265569493) |
| 尼龍鉸鏈 | 平面 6 孔合頁 ×8 | 約 50 | [露天](https://www.ruten.com.tw/item/show?22546444950241) |
| XT60 接頭、矽膠線、熱縮套 | — | 約 100 | [露天](https://www.ruten.com.tw/item/show?22611235131658) |
| 包覆膠帶、噴漆 | 文具店、五金行 | 約 200 | — |
| 相機（選配） | 原設計用 GoPro。測繪用相機建議先向學校或系上借用 | 新品約 9,000 起 | — |

### 2.3 預算估算

| 方案 | 內容 | 估計總價（NT$） |
|---|---|---|
| **A. 照原 BOM** | 原 11 項（F405-WTE、ELRS 接收機取代 S8R、SiK 數傳、珍珠板）+ 必要配件（遙控器、充電器、膠、鉸鏈、接頭、膠帶） | **約 16,000–17,500** |
| **B. 省數傳** | A 扣掉 SiK 數傳，改用 ELRS 鏈路傳遙測（MAVLink） | **約 13,000–14,000** |
| 另計 | 運費（每個賣家約 50–60 元）、備用電池／槳／舵機、相機 | — |

估算方式：每項取上表的中間價。重點不在精確數字，而是**機體材料很便宜（不到 1,000 元），錢主要花在飛控、電池、數傳和遙控器**。

### 2.4 風險與注意事項

1. **露天上很多是大陸代購賣場**（銷售量 0、價格偏高、出貨要 7–14 天）。盡量選有銷售紀錄的台灣賣家或實體模型店，例如翔大模型、搞啥飛機、天鷹遙控、飛揚模型、港都RC。
2. **Depron 替代品會改變重量。** 珍珠板的密度和強度跟 Depron 不同，機身可能變重，重心和翼負載也要重新估算。建議先買一片秤重、做小樣測試。
3. **數傳頻率的法規。** 台灣開放給低功率物聯網設備的是 920–925 MHz，而且須取得 NCC 型式認證。433 MHz 和 915 MHz 的 SiK 數傳不在這個範圍內，合法性有疑慮。建議：
   - 優先用 ELRS 2.4 GHz 遙控鏈路同時傳遙測（新版 ELRS 支援 MAVLink），或
   - 選購有 NCC 認證標章的數傳模組。
   - 正式使用前以 NCC 公告為準。
4. **無人機註冊與操作證。** 依民航局規定，自然人持有 250 g 以下的無人機可以免註冊；但**學校、法人所有的無人機不分重量都要註冊**。這架約 1.3 kg，必須註冊，操作人也要取得操作證。詳細級別、考試與空域規定以民航局最新公告為準。
5. **鋰電池運送。** 部分物流不收鋰電池，下單前先確認運送方式，或直接到實體店購買。
6. **ArduPilot 在 F405 上的限制。** F4 飛控的快閃記憶體只有 1 MB，ArduPilot 會關掉部分功能。如果之後需要更多功能（例如進階測繪、Lua 腳本），可以考慮 Matek H743-WING V3（露天台灣現貨約 5,135 元）。

---

## English summary

**V4.0 Stingray** is the last flown version in FOS_UAV's build log: a tailless flying wing with a KFm6 stepped airfoil, 1250 mm span, 30° sweep, 380/220 mm root/tip chord, about 1300 g AUW, a 3536 1400KV motor with a 9×6 prop, a 5000 mAh battery (cell count unstated; likely 3S), and stacked 5 mm Depron sheets glued with UHU Por. It needs the battery and a GoPro in the nose to balance, and then flies very steadily. The repo has **no V4.0 DXF**, but V4.0 shares root/tip chord and sweep with V3.0 Orange Fury, so it can be rebuilt from `1.4m kfm4.dxf` with a shorter span and KFm6 layers.

**Buying in Taiwan**: almost everything is available on Ruten (露天) or from local hobby shops. The exceptions: the Matek F405-Wing is discontinued (use the F405-WTE or SpeedyBee F405 Wing), the FrSky S8R is hard to find (use ELRS), and **5 mm Depron is essentially unavailable** (use 5 mm 珍珠板 foam board, which changes weight). Estimated total is about **NT$16,000–17,500** including a transmitter and charger, or **NT$13,000–14,000** without a separate SiK radio. The legality of 433/915 MHz SiK radios in Taiwan is questionable (the low-power IoT band is 920–925 MHz with NCC certification), so prefer telemetry over ELRS. School-owned drones must be registered regardless of weight, and many Ruten listings are slow, overpriced China drop-ship stores.

## 來源 / Sources

- 露天拍賣各商品頁（連結見上表）
- [翔大模型：好盈天行者 60A](https://www.sdmodel.com.tw/content.php?cn=item&tid=1448&start=0)
- [BigGo：Matek F405 比價](https://biggo.com.tw/s/Matek%20F405/)
- [酷飛：Tattu ACE 系列](https://coolfly.cyberbiz.co/products/tattu%E6%A0%BC%E6%B0%8Face-3300400050005300mah-%E9%81%99%E6%8E%A7%E7%84%A1%E4%BA%BA%E6%A9%9F%E8%88%AA%E6%A8%A1-2s3s4s6s7s-%E9%8B%B0%E9%9B%BB%E6%B1%A0)
- [匯流新聞網：NCC 完備 LoRa、NB-IoT 檢測規定（920–925 MHz）](https://cnews.com.tw/119171207a01/)
- [NCC 法規解釋函令](https://ncclaw.ncc.gov.tw/FLAW/FLAWDOC01.aspx?id=FL012846&flno=4)
- [iThome：無人機註冊與操作證規定](https://www.ithome.com.tw/news/115743)
- [屏科大：遙控無人機管理規則說明](https://www.npust.edu.tw/portaldoc/news/113637_1.pdf)
