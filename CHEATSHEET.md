# Dotfiles Cheatsheet

Quick reference for keybindings and shortcuts across all configured tools.

---

## Table of Contents

- [Neovim](#neovim)
- [Tmux](#tmux)
- [Git Aliases](#git-aliases)
- [Zsh / fzf](#zsh--fzf)

---

## Neovim

**Leader key:** `<Space>`

### General / Navigation

| Key | Action | Mode |
|-----|--------|------|
| `j` / `k` | Move by display line (respects word wrap) | n |
| `<C-t>` | Toggle floating terminal | n |

### Telescope — Fuzzy Finding

| Key | Action |
|-----|--------|
| `<leader>?` | Recently opened files |
| `<leader><space>` | Open buffers |
| `<leader>/` | Fuzzy search in current buffer |
| `<leader>sf` | Search files |
| `<leader>gf` | Search Git files |
| `<leader>sh` | Search help tags |
| `<leader>sw` | Search current word (grep_string) |
| `<leader>sg` | Search by grep (live_grep) |
| `<leader>sd` | Search diagnostics |

### LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references (Telescope) |
| `gI` | Go to implementation |
| `<leader>D` | Type definition |
| `<leader>ds` | Document symbols |
| `<leader>ws` | Workspace symbols |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `K` | Hover documentation |
| `<C-k>` | Signature documentation |
| `<leader>wa` | Workspace: add folder |
| `<leader>wr` | Workspace: remove folder |
| `<leader>wl` | Workspace: list folders |
| `:Format` | Format buffer with LSP |

### Diagnostics

| Key | Action |
|-----|--------|
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>e` | Show floating diagnostic |
| `<leader>q` | Open diagnostics list (loclist) |

### Gitsigns

| Key | Action |
|-----|--------|
| `<leader>gp` | Previous hunk |
| `<leader>gn` | Next hunk |
| `<leader>ph` | Preview hunk |

### Treesitter — Incremental Selection

| Key | Action |
|-----|--------|
| `<C-Space>` | Init / expand node selection |
| `<C-s>` | Expand to scope |
| `<M-Space>` | Shrink selection |

### Treesitter — Text Objects

| Key | Object |
|-----|--------|
| `aa` / `ia` | Around / inner parameter |
| `af` / `if` | Around / inner function |
| `ac` / `ic` | Around / inner class |

### Treesitter — Motion

| Key | Action |
|-----|--------|
| `]m` / `[m` | Next / previous function start |
| `]M` / `[M` | Next / previous function end |
| `]]` / `[[` | Next / previous class start |
| `][` / `[]` | Next / previous class end |

### Treesitter — Swap Parameters

| Key | Action |
|-----|--------|
| `<leader>a` | Swap with next parameter |
| `<leader>A` | Swap with previous parameter |

### Completion (nvim-cmp)

| Key | Action |
|-----|--------|
| `<C-n>` / `<C-p>` | Next / previous item |
| `<C-Space>` | Trigger completion |
| `<C-d>` / `<C-f>` | Scroll docs up / down |
| `<CR>` | Confirm selection |
| `<Tab>` / `<S-Tab>` | Next / previous item or snippet jump |

---

## Tmux

**Prefix key:** `C-a`

### Sessions & Config

| Key | Action |
|-----|--------|
| `prefix + r` | Reload tmux config |

### Windows

| Key | Action |
|-----|--------|
| `S-Left` | Previous window (no prefix) |
| `S-Right` | Next window (no prefix) |

### Panes

| Key | Action |
|-----|--------|
| `prefix + "` | Split horizontally (current path) |
| `prefix + %` | Split vertically (current path) |

### Navigation (vim-tmux-navigator — no prefix needed)

| Key | Action |
|-----|--------|
| `C-h` | Move to pane / split left |
| `C-j` | Move to pane / split down |
| `C-k` | Move to pane / split up |
| `C-l` | Move to pane / split right |

### Copy Mode (vi keys)

| Key | Action |
|-----|--------|
| `prefix + [` | Enter copy mode |
| `v` | Begin selection |
| `y` | Copy selection (tmux-yank → clipboard) |
| `q` | Exit copy mode |

---

## Git Aliases

Run as `git <alias>`.

### Staging & Committing

| Alias | Command |
|-------|---------|
| `git a` | `add -A` — stage all changes |
| `git ap` | `add --patch` — interactive staging |
| `git c "msg"` | `commit -m "msg"` |
| `git ci` / `ic` | `commit -v` — verbose commit |
| `git ca` | `commit --amend --no-edit` |
| `git amend` / `ammend` | `commit --amend` |
| `git st` | `status --untracked-files=all` |
| `git unstage` | `reset HEAD` — unstage file |
| `git rollback` | `reset --soft HEAD^1` — undo last commit, keep changes staged |

### Branching & Rebasing

| Alias | Command |
|-------|---------|
| `git co` | `checkout` |
| `git br` | `branch -vv` — list branches with tracking info |
| `git b` | List branches sorted by last commit date |
| `git cf` | Checkout base branch (strips `--feature` suffix) |
| `git mainbranch` | Detect `main` or `master` from remote |
| `git rc` | `rebase --continue` |
| `git rs` | `rebase --skip` |
| `git ra` | `rebase --abort` |
| `git rh` | `reset --hard` |

### Push & Sync

| Alias | Command |
|-------|---------|
| `git pp` | `push` |
| `git ph` | `push -u origin HEAD` — push new branch |
| `git pf` | `push --force-with-lease origin HEAD` |
| `git pt` | `push --tags` |
| `git sync` | Fetch + rebase upstream + push |

### Diff

| Alias | Command |
|-------|---------|
| `git df` | `diff` |
| `git dc` / `diff-staged` | `diff --cached` — staged diff |
| `git cp` | `cherry-pick` |
| `git diff-changes` | `diff --name-status -r` |
| `git diff-stat` | `diff --stat --ignore-space-change -r` |
| `git diff-upstream` | Diff local master vs origin/master |
| `git diff-all` | Open difftool for each changed file |

### Remote / Misc

| Alias | Command |
|-------|---------|
| `git pr` | Open PR comparison page on GitHub |
| `git hub` | Open repo on GitHub |
| `git restore <file>` | Restore a deleted file from history |

---

## Zsh / fzf

### fzf Key Bindings (shell-level)

| Key | Action |
|-----|--------|
| `Ctrl+R` | Search shell history interactively |
| `Ctrl+T` | Fuzzy-find a file and insert path |
| `Alt+C` | Fuzzy `cd` into a directory |

### Useful oh-my-zsh Plugin Aliases

#### git plugin

| Alias | Command |
|-------|---------|
| `gst` | `git status` |
| `gco` | `git checkout` |
| `gcmsg` | `git commit -m` |
| `gp` | `git push` |
| `gl` | `git pull` |
| `glog` | `git log --oneline --decorate --graph` |
| `gd` | `git diff` |
| `gds` | `git diff --staged` |
| `ga` | `git add` |
| `gaa` | `git add --all` |
| `gb` | `git branch` |
| `gcb` | `git checkout -b` |
| `grb` | `git rebase` |
| `grbа` | `git rebase --abort` |
| `grbc` | `git rebase --continue` |
| `gsta` | `git stash push` |
| `gstp` | `git stash pop` |

#### kubectl plugin

| Alias | Command |
|-------|---------|
| `k` | `kubectl` |
| `kgp` | `kubectl get pods` |
| `kgs` | `kubectl get services` |
| `kdel` | `kubectl delete` |
| `kd` | `kubectl describe` |
| `kl` | `kubectl logs` |
| `kex` | `kubectl exec -it` |

#### docker-compose plugin

| Alias | Command |
|-------|---------|
| `dco` | `docker-compose` |
| `dcup` | `docker-compose up` |
| `dcdn` | `docker-compose down` |
| `dcr` | `docker-compose run` |
| `dclf` | `docker-compose logs -f` |

### Misc

| Command | Action |
|---------|--------|
| `fuck` | Re-run previous command with correction (thefuck) |
