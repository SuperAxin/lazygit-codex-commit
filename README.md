# LazyGit Codex Commit

透過 **OpenAI Codex CLI** 自動產生符合 Conventional Commits 規範的 Git Commit Message，並整合至 **LazyGit**，簡化日常 Git 提交流程。

## 功能特色

- 使用 Codex CLI 分析 Git Staged Changes
- 自動產生 Conventional Commit Message
- 整合 LazyGit 快捷鍵
- 提交前可檢查與編輯 Commit Message
- 支援透過 ChatGPT 帳號進行 Codex 認證
- 不需要額外設定 OpenAI API Key（使用 ChatGPT 登入時）

## 安裝所需套件

### 1. 安裝 LazyGit

使用 Pacman 安裝 LazyGit：

```bash
sudo pacman -S --needed lazygit
```

確認安裝版本：

```bash
lazygit --version
```

### 2. 安裝 OpenAI Codex CLI

使用 npm 全域安裝：

```bash

npm install -g @openai/codex
```

確認安裝版本：

```bash
codex --version
```

## Codex CLI 登入認證

Codex CLI 支援透過 ChatGPT 帳號登入。

```bash
// 在具有瀏覽器的電腦執行：
codex login

// 如果透過 SSH 連線至 CachyOS，無法直接使用遠端電腦的瀏覽器，可以使用裝置授權流程：
codex login --device-auth
```

### 確認登入狀態

```bash
codex login status
```

確認 Codex CLI 已成功登入。

## 使用方式

本專案透過 LazyGit Custom Commands 整合 OpenAI Codex CLI，並使用 Neovim（LazyVim） 作為主要操作環境。

操作流程
1. 在 Neovim（LazyVim）按下 Space + g + g，開啟 LazyGit。
2. 在 LazyGit 的 Files 面板按下 Space，將要提交的檔案加入 Staging Area。
3. 按下 Ctrl + A，執行 Codex Commit 腳本。
4. 等待 Codex 分析 Staged Changes，自動產生符合 Conventional Commits 規範的 Commit Message。
5. Neovim 會開啟產生的 Commit Message，供使用者檢查或修改。
6. 確認後輸入 :wq 儲存並提交，或使用 :cq 取消提交。
7. 回到 LazyGit，按下 Shift + P，將 Commit Push 至 GitHub。

### Commit Message 範例

```text
feat(lazygit): integrate Codex CLI for commit generation
```

```text
fix(config): correct LazyGit custom command configuration
```

```text
docs(readme): improve installation instructions
```
