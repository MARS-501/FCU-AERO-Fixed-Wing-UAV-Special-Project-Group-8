# UAV 專題：開源無人機專案貢獻工作區

> **繁體中文** | [English](#english)

本專題的目標是**參與既有的開源無人機專案**。主軸是 [FOS_UAV](https://github.com/rahulsarchive/FOS_UAV)（ICFOSS 的開源固定翼飛翼測繪平台），並向它使用的活躍上游（ArduPilot Plane、OpenDroneMap 等）回饋：回報問題、修正錯誤、改善文件與新增功能，提交被接受的 Pull Request。

這個資料夾是團隊的共用工作區，用來放：

- 候選上游專案的評估與選擇理由
- 統一的貢獻流程（fork → branch → PR）與各專案的提交規範
- 開發環境（SITL 模擬）建置筆記
- 團隊的貢獻追蹤紀錄
- 各上游專案 fork 的本地 clone（放在 `upstream/`，不納入本 repo 版控）

## 目錄結構

```
.
├── README.md                     本文件（中英雙語）
├── CONTRIBUTING.md               團隊內部協作規則
├── CLAUDE.md                     給 Claude Code 的專案背景
├── LICENSE                       MIT（僅適用於本工作區自己的文件與腳本）
├── docs/
│   ├── course/                   系上課程規範（PDF＋文字版）與已確認的專案限制
│   ├── fos-uav-analysis.md       FOS_UAV 專案分析與可貢獻項目
│   ├── v4-stingray-taiwan-bom.md V4.0 簡述與台灣採購報價
│   ├── literature-survey/        文獻調查報告（研究方向提案、BibTeX、原始搜尋資料）
│   ├── proposal/                 計劃書（組內執行版）、構想評估與演進紀錄
│   ├── upstream-projects.md      候選上游專案評估與建議
│   ├── contribution-workflow.md  向上游貢獻的標準流程與各專案規範
│   └── dev-setup-macos.md        macOS (Apple Silicon) 開發環境建置
├── tracker/
│   └── contributions.md          團隊認領的 issue 與 PR 追蹤表
├── scripts/
│   └── setup-upstream.sh         一鍵 clone 自己的 fork 並設定 upstream remote
└── upstream/                     （gitignore）各上游專案的本地 clone
```

## 快速開始

1. 閱讀 [docs/fos-uav-analysis.md](docs/fos-uav-analysis.md) 與 [docs/upstream-projects.md](docs/upstream-projects.md)，和組員分工。
2. 在 GitHub 上 fork 該專案，然後執行：
   ```bash
   ./scripts/setup-upstream.sh <你的 GitHub 帳號> fos_uav
   ./scripts/setup-upstream.sh <你的 GitHub 帳號> ardupilot
   ```
3. 依照 [docs/dev-setup-macos.md](docs/dev-setup-macos.md) 建好 SITL 模擬環境，確認能起飛。
4. 從上游的新手 issue 挑一個，登記到 [tracker/contributions.md](tracker/contributions.md)。
5. 依照 [docs/contribution-workflow.md](docs/contribution-workflow.md) 開發並送出 PR。

## 授權

本工作區內**由團隊自行撰寫**的文件與腳本採用 [MIT 授權](LICENSE)。
提交到上游的程式碼一律遵循**該上游專案自己的授權**（例如 PX4 為 BSD-3-Clause、ArduPilot 為 GPL-3.0）。

---

<a id="english"></a>

# UAV Project: Open-Source Drone Contribution Workspace

> [繁體中文](#uav-專題開源無人機專案貢獻工作區) | **English**

This project's goal is to **contribute to existing open-source drone projects**. Our anchor is [FOS_UAV](https://github.com/rahulsarchive/FOS_UAV), ICFOSS's open-source fixed-wing mapping platform, and we contribute back to the active upstreams it relies on (ArduPilot Plane, OpenDroneMap, and others) by reporting bugs, fixing issues, improving documentation, and adding features.

This folder is the team's shared workspace. It holds:

- Evaluation of candidate upstream projects and the reasoning behind our choice
- A common contribution workflow (fork → branch → PR) and each project's commit rules
- Notes for setting up development environments (SITL simulation)
- A tracker of the team's contributions
- Local clones of our upstream forks (under `upstream/`, not tracked by this repo)

## Layout

```
.
├── README.md                     This file (bilingual)
├── CONTRIBUTING.md               Internal team collaboration rules
├── CLAUDE.md                     Project context for Claude Code
├── LICENSE                       MIT (covers only this workspace's own docs and scripts)
├── docs/
│   ├── course/                   Course rules (PDF + text) and confirmed project constraints
│   ├── fos-uav-analysis.md       FOS_UAV analysis and contribution opportunities
│   ├── v4-stingray-taiwan-bom.md V4.0 summary and Taiwan parts quote
│   ├── literature-survey/        Literature survey (research proposals, BibTeX, raw search data)
│   ├── proposal/                 Project plan (internal), idea evaluation and evolution log
│   ├── upstream-projects.md      Candidate upstream projects and recommendation
│   ├── contribution-workflow.md  Standard upstream workflow and per-project conventions
│   └── dev-setup-macos.md        macOS (Apple Silicon) environment setup
├── tracker/
│   └── contributions.md          Issues and PRs the team has claimed
├── scripts/
│   └── setup-upstream.sh         Clone your fork and configure the upstream remote
└── upstream/                     (gitignored) local clones of upstream projects
```

## Getting started

1. Read [docs/fos-uav-analysis.md](docs/fos-uav-analysis.md) and [docs/upstream-projects.md](docs/upstream-projects.md), then split up the work.
2. Fork that project on GitHub, then run:
   ```bash
   ./scripts/setup-upstream.sh <your-github-username> fos_uav
   ./scripts/setup-upstream.sh <your-github-username> ardupilot
   ```
3. Follow [docs/dev-setup-macos.md](docs/dev-setup-macos.md) to set up SITL and confirm you can take off in simulation.
4. Pick a beginner issue upstream and log it in [tracker/contributions.md](tracker/contributions.md).
5. Develop and open a PR following [docs/contribution-workflow.md](docs/contribution-workflow.md).

## License

Documents and scripts **written by this team** in this workspace are licensed under [MIT](LICENSE).
Code contributed upstream is always licensed under **that upstream project's own license** (e.g. BSD-3-Clause for PX4, GPL-3.0 for ArduPilot).
