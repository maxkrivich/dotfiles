# Neovim keymaps

`<leader>` is Space. Press `<leader>` and wait for which-key, or `<leader>sk` to search keymaps.

> Zellij grabs `Ctrl h/o/p/n/s/b/t/g` unless locked. Press `Ctrl g` to lock it while in Neovim.

## Search (Telescope)

| Key | Action |
|---|---|
| `<leader>sf` | Find files |
| `<leader>sg` | Grep |
| `<leader>sw` | Search word under cursor |
| `<leader>s.` | Recent files |
| `<leader><leader>` | Open buffers |
| `<leader>/` | Fuzzy search in current buffer |
| `<leader>s/` | Grep in open files |
| `<leader>sd` | Diagnostics |
| `<leader>sh` | Help |
| `<leader>sk` | Keymaps |
| `<leader>sc` | Commands |
| `<leader>sn` | Neovim config files |
| `<leader>sr` | Resume last search |
| `<leader>ss` | Pick a Telescope picker |
| `<leader>sR` | Search and replace (grug-far) |

## Code / LSP

| Key | Action |
|---|---|
| `K` | Hover docs |
| `grd` | Go to definition |
| `grD` | Go to declaration |
| `grr` | References |
| `gri` | Implementation |
| `grt` | Type definition |
| `grn` | Rename |
| `gra` | Code action |
| `grx` | Run codelens |
| `gO` | Document symbols |
| `gW` | Workspace symbols |
| `<leader>f` | Format buffer |
| `<leader>th` | Toggle inlay hints |
| `<leader>cd` | Generate docstring (neogen) |
| `Alt n` / `Alt p` | Next / previous reference of word under cursor |

## Diagnostics

| Key | Action |
|---|---|
| `]d` / `[d` | Next / previous diagnostic |
| `]D` / `[D` | Last / first diagnostic |
| `Ctrl w d` | Show diagnostic under cursor |
| `<leader>q` | Diagnostics to quickfix list |

## Completion (insert mode)

| Key | Action |
|---|---|
| `Ctrl l` | Open menu, then toggle docs (`Ctrl Space` is taken by macOS) |
| `Tab` / `Ctrl y` | Accept |
| `Ctrl n` / `Ctrl p` | Next / previous item (also `Down` / `Up`) |
| `Ctrl e` | Close menu |
| `Ctrl f` / `Ctrl b` | Scroll docs |
| `Ctrl k` | Toggle signature popup |
| `Tab` / `Shift Tab` | Jump snippet placeholders (when no menu) |

Brackets and quotes auto-close (mini.pairs).

## Git

| Key | Action |
|---|---|
| `<leader>gg` | Lazygit |
| `<leader>gB` | Open file / selection on GitHub |
| `<leader>gi` / `<leader>gI` | GitHub issues (open / all) |
| `<leader>gp` / `<leader>gP` | GitHub PRs (open / all) |
| `]c` / `[c` | Next / previous hunk |
| `<leader>hs` / `<leader>hr` | Stage / reset hunk (works on visual selection) |
| `<leader>hS` / `<leader>hR` | Stage / reset buffer |
| `<leader>hp` / `<leader>hi` | Preview hunk (popup / inline) |
| `<leader>hb` | Blame line |
| `<leader>hd` / `<leader>hD` | Diff against index / last commit |
| `<leader>hq` / `<leader>hQ` | Hunks to quickfix (file / repo) |
| `<leader>tb` | Toggle inline blame |
| `<leader>tw` | Toggle word diff |
| `ih` | Text object: inside hunk |

## Debug

| Key | Action |
|---|---|
| `F5` | Start / continue |
| `F1` / `F2` / `F3` | Step into / over / out |
| `F7` | Last session result |
| `<leader>b` | Toggle breakpoint |
| `<leader>B` | Conditional breakpoint |

## Windows / files

| Key | Action |
|---|---|
| `Ctrl h/j/k/l` | Move between windows |
| `\` | Reveal file in Neo-tree |
| `Esc Esc` | Exit terminal mode |
| `]b` / `[b` | Next / previous buffer |
| `]q` / `[q` | Next / previous quickfix item |

## Editing

| Key | Action |
|---|---|
| `gcc` / `gc{motion}` | Toggle comment |
| `sa{motion}{char}` | Add surrounding, e.g. `saiw)` |
| `sd{char}` | Delete surrounding, e.g. `sd'` |
| `sr{old}{new}` | Replace surrounding, e.g. `sr)'` |
| `sf` / `sF` / `sh` | Find right / left surrounding, highlight surrounding |
| `a` / `i` + object | Textobjects: `vaf` function, `ci'` quotes, `dia` argument |
| `aa` / `ii`, `al` / `il` | Next / last textobject |
| `]<Space>` / `[<Space>` | Add empty line below / above |
| `gx` | Open URL / file under cursor |

## Visual mode (treesitter selection)

| Key | Action |
|---|---|
| `an` / `in` | Expand / shrink selection to node |
| `]n` / `[n` | Next / previous node |
| `]N` / `[N` | Next / previous sibling node |
