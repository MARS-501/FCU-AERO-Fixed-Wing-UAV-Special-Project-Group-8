# 團隊協作規則 / Team Collaboration Rules

這份文件規範**本工作區**（文件、tracker、腳本）的協作方式。向上游貢獻的流程請見 [docs/contribution-workflow.md](docs/contribution-workflow.md)。

This file covers collaboration on **this workspace** (docs, tracker, scripts). For contributing upstream, see [docs/contribution-workflow.md](docs/contribution-workflow.md).

## 規則 / Rules

1. **認領先登記**：開始處理任何上游 issue 前，先在 [tracker/contributions.md](tracker/contributions.md) 新增一列，避免組員重工。
   *Log before you start*: add a row to the tracker before working on any upstream issue.
2. **每週同步**：每週更新一次 tracker 的狀態欄，卡住超過一週的項目標記 `卡關` 並在會議討論。
   *Weekly sync*: update tracker status weekly; mark items stuck for over a week as `卡關 / blocked`.
3. **知識沉澱**：踩過的坑、建置問題的解法，寫回 `docs/` 對應文件，不要只留在聊天群組。
   *Write it down*: put fixes for setup problems and lessons learned back into `docs/`, not just chat.
4. **工作區提交訊息**：使用簡短的 Conventional Commits，例如 `docs: add PX4 SITL troubleshooting`、`tracker: claim ArduPilot#12345`。
   *Commit messages* in this workspace use short Conventional Commits.
5. **不要把上游程式碼放進本 repo**：上游 clone 一律放在 `upstream/`（已 gitignore）。
   *Never commit upstream code here*: upstream clones live in the gitignored `upstream/` folder.
6. **飛行紀錄檔**（`.bin`、`.ulg`、`.tlog`）不進版控，需要分享時附在上游 issue 或雲端硬碟。
   *Flight logs* stay out of git; attach them to upstream issues or a shared drive.

## 文件語言 / Documentation language

文件以繁體中文為主，每份文件結尾附英文摘要；README 為完整中英雙語。
Docs are primarily Traditional Chinese with an English summary at the end; the README is fully bilingual.
