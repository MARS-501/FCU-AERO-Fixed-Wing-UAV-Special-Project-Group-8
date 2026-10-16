# 向上游貢獻的流程 / Upstream Contribution Workflow

## 1. 一次性設定 / One-time setup

```bash
# 1) 在 GitHub 網頁上 fork 上游專案（例如 ArduPilot/ardupilot）
# 2) 用腳本 clone 自己的 fork，並設定 upstream remote
./scripts/setup-upstream.sh <你的 GitHub 帳號> ardupilot
```

完成後在 `upstream/ardupilot/` 內：

| remote | 指向 | 用途 |
|---|---|---|
| `origin` | `github.com/<你>/ardupilot` | 推送自己的分支 |
| `upstream` | `github.com/ArduPilot/ardupilot` | 取得最新主線 |

Git 身分請用自己的名字與 GitHub 綁定的 email，上游會依此顯示作者：

```bash
git config user.name  "Your Name"
git config user.email "you@example.com"
```

## 2. 每次貢獻 / Every contribution

1. **確認沒人在做**：搜尋上游的 open PR 與 issue 留言；也看 [tracker/contributions.md](../tracker/contributions.md)，避免組員重複。
2. **登記**：在 tracker 新增一列，狀態設為 `進行中`。
3. **從最新主線開分支**（ArduPilot 主線是 `master`，PX4 是 `main`）：
   ```bash
   git fetch upstream
   git switch -c fix-gps-timeout upstream/master
   ```
4. **先重現問題**：在 SITL 中重現，記下步驟；修完後用同樣步驟驗證。
5. **小而專注的提交**：一個 PR 只解一件事。
6. **跑測試與格式檢查**（見下方各專案規範）。
7. **推送並開 PR**：
   ```bash
   git push -u origin fix-gps-timeout
   ```
   在 GitHub 上對上游開 PR，描述寫清楚：問題、做法、如何測試、關聯 issue（`Fixes #1234`）。
8. **回應審查**：維護者的意見要逐條回覆；修改後用 rebase 整理提交再 `git push --force-with-lease`。
9. **更新 tracker**：PR 連結、狀態（`審查中` / `已合併` / `已關閉`）。

### 保持分支與主線同步 / Keeping up to date

上游通常要求**線性歷史、不要 merge commit**，請用 rebase：

```bash
git fetch upstream
git rebase upstream/master
git push --force-with-lease
```

## 3. 各專案規範 / Per-project conventions

### ArduPilot

- 規範：<https://ardupilot.org/dev/docs/submitting-patches-back-to-master.html>
- **提交訊息以子系統名稱為前綴**，每個提交只動一個子系統（library 或 vehicle）：
  ```
  AP_GPS: fix timeout handling when GPS is disconnected
  Copter: use new GPS timeout in failsafe check
  ```
- Issue 標題同樣使用前綴，例如 `Copter: ...`。
- 不指派 issue，直接做、直接發 PR；但**開工前先查有沒有相關 PR**，有的話改去協助審查。
- 測試：`Tools/autotest/autotest.py`（例如 `./Tools/autotest/autotest.py build.Copter test.Copter.<TestName>`）。
- 交流：Discord `#general`、[開發者論壇](https://discuss.ardupilot.org/c/development-team)（不是使用者支援管道）。
- 支援問題（「我的飛機怎麼了」）應先到 [論壇](https://discuss.ardupilot.org)，不是開 issue。

### PX4

- 規範：<https://github.com/PX4/PX4-Autopilot/blob/main/CONTRIBUTING.md>
- 從 `main` 開分支。
- **Conventional Commits**，提交訊息與 PR 標題都要符合：
  ```
  fix(ekf2): handle GPS timeout during takeoff
  docs(sitl): update macOS setup steps
  ```
  type 可用 `feat` `fix` `docs` `style` `refactor` `perf` `test` `build` `ci` `chore` `revert`。
- C/C++ 格式由 astyle 在 CI 強制檢查：`make format_changed` / `make check_format`；另有 clang-tidy。
- Python 以 mypy、flake8 檢查。
- 文件位於 repo 內的 `docs/` 目錄。

### QGroundControl

- 規範：<https://github.com/mavlink/qgroundcontrol/blob/master/.github/CONTRIBUTING.md>
- C++20 + Qt，CMake 建置；repo 提供 `just` 指令（configure / build / test / lint）。
- Repo 中有 `AGENTS.md`，若使用 AI 輔助開發，請先閱讀。

### FOS_UAV

- 主線是 `master`，沒有 CONTRIBUTING 與 LICENSE，維護者自 2019 年後幾乎不活躍。
- 先用 issue 詢問（授權、規格矛盾、V4.0 DXF），再送小而明確的 PR；**不要讓專題進度卡在等它合併**。
- 詳見 [fos-uav-analysis.md](fos-uav-analysis.md)。

### OpenDroneMap

- 回報處理問題前，先到 [community.opendronemap.org](https://community.opendronemap.org) 搜尋；附上 ODM 版本、指令參數與能重現的資料集。

### MAVSDK / pymavlink / ardupilot_wiki

- 開 PR 前先讀各 repo 的 README 與既有 PR 風格，模仿其提交訊息格式。

## 4. AI 工具使用 / Using AI tools

- 使用 AI 輔助時，**送出的每一行都必須自己讀懂、自己測過**，維護者會針對細節提問。
- 開 PR 前查看該專案是否有 AI 使用政策（例如 QGroundControl 的 `AGENTS.md`），依規定揭露。

## 5. 好 PR 的檢查清單 / PR checklist

- [ ] 從最新主線開分支，已 rebase
- [ ] 一個 PR 只做一件事
- [ ] 提交訊息符合該專案格式
- [ ] 本地建置成功，格式檢查通過
- [ ] 在 SITL（或實機）驗證過，PR 描述寫了測試方法
- [ ] 若是修 bug，盡量附上能重現的 autotest
- [ ] 關聯 issue（`Fixes #...`）
- [ ] tracker 已更新

---

## English summary

1. Fork upstream on GitHub, then run `./scripts/setup-upstream.sh <user> <project>` to clone your fork with `origin` (your fork) and `upstream` (the official repo) remotes.
2. For each contribution: check nobody is already on it (upstream PRs and our tracker), log it in the tracker, branch from the latest upstream mainline, reproduce in SITL, keep the PR focused, run tests and format checks, push, open the PR with a clear description and `Fixes #...`, respond to review, and update the tracker.
3. Upstreams expect linear history: rebase on `upstream/<mainline>` and `git push --force-with-lease` rather than merging.
4. **ArduPilot** commit messages are prefixed by subsystem (`AP_GPS: ...`, `Copter: ...`), one subsystem per commit. **PX4** uses Conventional Commits (`fix(ekf2): ...`) with astyle and clang-tidy enforced in CI.
5. If you use AI tools, you must understand and test every line you submit, and follow each project's AI policy.
