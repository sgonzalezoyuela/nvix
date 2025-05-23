# Nvix Keybindings

This document provides a comprehensive list of keybindings available in Nvix. The keybindings are organized by module and functionality.

## Table of Contents

- [General](#general)
- [Buffer Management](#buffer-management)
- [Explorer](#explorer)
- [Git](#git)
- [LSP](#lsp)
- [Copilot](#copilot)
- [Auto-SessiA
- [Snacks](#snacks)
- [TeX](#tex)

---

## General

### Visual Mode

| Key      | Action                      |
|----------|-----------------------------|
| `<C-s>`  | Save File                   |
| `<C-c>`  | Escape                      |
| `<A-j>`  | Move Selected Line Down     |
| `<A-k>`  | Move Selected Line Up       |
| `<`      | Indent Out                  |
| `>`      | Indent In                   |
| `<Space>`| Mapped to Nothing           |

### Visual & Select Mode

| Key | Action     |
|-----|------------|
| `j` | Move Down  |
| `k` | Move Up    |

### Insert Mode

| Key      | Action              |
|----------|---------------------|
| `jk`     | Normal Mode         |
| `<C-s>`  | Save File           |
| `<A-j>`  | Move Line Down      |
| `<A-k>`  | Move Line Up        |

### Normal Mode

| Key             | Action                            |
|-----------------|-----------------------------------|
| `<C-s>`         | Save the File                     |
| `<C-A-=>`       | Increase Number                   |
| `<C-A-->`       | Decrease Number                   |
| `<A-j>`         | Move Line Down                    |
| `<A-k>`         | Move Line Up                      |
| `<Leader>qq`    | Quit All                          |
| `<Leader>qw`    | Quit                              |
| `<Leader><Leader>` | Remove Highlight               |
| `<Leader>A`     | Select All                        |
| `<Leader>\|`    | Vertical Split                    |
| `<Leader>-`     | Horizontal Split                  |
| `<Leader>o`     | Open Files/Links Smartly          |
| `n`             | Move to Next Search Result        |
| `N`             | Move to Previous Search Result    |
| `<Leader>ft`    | Set Filetype                      |

### Window Navigation

| Key         | Action                            |
|-------------|-----------------------------------|
| `<C-h>`     | Move Cursor Left                  |
| `<C-j>`     | Move Cursor Down                  |
| `<C-k>`     | Move Cursor Up                    |
| `<C-l>`     | Move Cursor Right                 |
| `<C-\>`     | Move Cursor Previous              |
| `<C-A-h>`   | Resize Window Left                |
| `<C-A-j>`   | Resize Window Down                |
| `<C-A-k>`   | Resize Window Up                  |
| `<C-A-l>`   | Resize Window Right               |

---

## Buffer Management

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>b.`    | Add File to Harpoon                   |
| `<Leader>bm`    | Buffer Manager                        |
| `<Leader>bb`    | Harpoon UI                            |
| `<Leader>bp`    | Buffer Line Pick                      |
| `<Leader>qc`    | Buffer Close                          |
| `<Leader>bP`    | Buffer Pin                            |
| `<Leader>bd`    | Buffer Sort by Directory              |
| `<Leader>be`    | Buffer Sort by Extension              |
| `<Leader>bt`    | Buffer Sort by Tabs                   |
| `<Leader>bL`    | Buffer Close All to Right             |
| `<Leader>bH`    | Buffer Close All to Left              |
| `<Leader>bc`    | Buffer Close All Except Current       |
| `<A-S-h>`       | Move Buffer to Left                   |
| `<A-S-l>`       | Move Buffer to Right                  |
| `<S-h>`         | Previous Buffer                       |
| `<S-l>`         | Next Buffer                           |

### Tab Management

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader><Tab>j` | Next Tab                             |
| `<Leader><Tab>k` | Previous Tab                         |
| `<Leader><Tab>l` | Next Tab                             |
| `<Leader><Tab>h` | Previous Tab                         |
| `<Leader><Tab>q` | Close Tab                            |
| `<Leader><Tab>n` | New Tab                              |

---

## Explorer

### Neo-tree

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>e`     | Toggle Neo-tree Explorer              |

### Oil

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>e`     | Open Oil Explorer                     |
| `<Leader>E`     | Open Snacks Explorer                  |

---

## Git

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>ghS`   | Stage Buffer                          |
| `<Leader>ghu`   | Undo Stage Hunk                       |
| `<Leader>ghR`   | Reset Buffer                          |
| `<Leader>ghp`   | Preview Hunk Inline                   |
| `<Leader>ghb`   | Blame Line (Full)                     |
| `<Leader>ghB`   | Blame Buffer                          |
| `<Leader>gb`    | Blame Line                            |
| `<Leader>ghd`   | Diff This                             |
| `<Leader>ghD`   | Diff This (`~`)                       |
| `[H`            | Navigate to First Hunk                |
| `]H`            | Navigate to Last Hunk                 |
| `<Leader>ghs`   | Stage Hunk                            |
| `<Leader>ghr`   | Reset Hunk                            |
| `<Leader>gB`    | Git Browse                            |
| `<Leader>gf`    | Lazygit Current File History          |
| `<Leader>gg`    | Open Lazygit                          |
| `<Leader>gl`    | Lazygit Log (cwd)                     |
| `<Leader>gL`    | Git Log (cwd)                         |

---

## LSP

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>/`     | Toggle Comment                        |
| `<Leader>lO`    | Force Otter                           |
| `<Leader>la`    | Code Action                           |
| `<Leader>lo`    | Show Outline                          |
| `<Leader>lw`    | Show Workspace Diagnostics            |
| `gd`            | Go to Definition                      |
| `<Leader>lr`    | Rename                                |
| `gt`            | Go to Type Definition                 |
| `<Leader>l.`    | Show Line Diagnostics                 |
| `gpd`           | Peek Definition                       |
| `gpt`           | Peek Type Definition                  |
| `[e`            | Jump to Previous Diagnostic           |
| `]e`            | Jump to Next Diagnostic               |
| `K`             | Hover Doc                             |
| `zR`            | Open All Folds                        |
| `zM`            | Close All Folds                       |
| `zK`            | Peek Folded Lines                     |
| `<Leader>lq`    | Stop LSP                              |
| `<Leader>li`    | LSP Info                              |
| `<Leader>ls`    | Start LSP                             |
| `<Leader>lR`    | Restart LSP                           |
| `<C-S-k>`       | Signature Help                        |
| `<Leader>lD`    | Definitions List                      |
| `<Leader>lf`    | Format File                           |
| `gD`            | Go to Declaration                     |
| `gi`            | Go to Implementation                  |
| `gR`            | Go to References                      |
| `gy`            | Go to Type Definition                 |
| `[d`            | Previous Diagnostic                   |
| `]d`            | Next Diagnostic                       |
| `<Leader>lL`    | Toggle Diagnostics                    |
| `<Leader>ll`    | Toggle Virtual Text                   |

---

## Copilot

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>ac`    | Toggle Copilot                        |
| `<C-Space>`     | Accept Ghosted Suggestion             |

---

## Auto-Session

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>q.`    | Restore Last Session                  |
| `<Leader>ql`    | List Sessions                         |
| `<Leader>qd`    | Delete Session                        |
| `<Leader>qs`    | Save Session                          |
| `<Leader>qD`    | Purge Orphaned Sessions               |

---

## Snacks

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>..`    | Toggle Scratch Buffer                 |
| `<Leader>.s`    | Select Scratch Buffer                 |
| `<Leader>sn`    | Show Notification History             |
| `<Leader>.r`    | Rename File/Variable + LSP            |
| `<Leader>un`    | Dismiss All Notifications             |
| `<Leader>ud`    | Toggle Diagnostics                    |
| `<Leader>ul`    | Toggle Line Number                    |
| `<Leader>uh`    | Toggle Inlay Hints                    |
| `<Leader>uT`    | Toggle Treesitter                     |
| `<Leader>us`    | Toggle Spelling                       |
| `<Leader>uw`    | Toggle Wrap                           |
| `<Leader>uL`    | Toggle Relative Number                |
| `<Leader>uc`    | Toggle Conceallevel                   |
| `<Leader>ub`    | Toggle Dark Background                |

### Picker

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>sP`    | Pickers                               |
| `<Leader>ss`    | Smart                                 |
| `<Leader>st`    | Todo                                  |
| `<Leader>sT`    | Todo/Fix/Fixme                        |
| `<Leader>s:`    | Command History                       |
| `<Leader>s,`    | Buffers                               |
| `<Leader>sh`    | Help Pages                            |
| `<Leader>sk`    | Keymaps                               |
| `<Leader>su`    | Undo                                  |
| `<Leader>fF`    | Find Files                            |
| `<Leader>ff`    | Smart                                 |
| `<Leader>f/`    | Grep                                  |
| `<Leader>fr`    | Recent                                |
| `<Leader>fp`    | Projects                              |

---

## TeX

TeX-specific keybindings are available with the local leader key `<Space>t`. Some of the most common ones include:

| Key                 | Action                            |
|---------------------|-----------------------------------|
| `<LocalLeader>ll`   | Compile                           |
| `<LocalLeader>lv`   | View                              |
| `<LocalLeader>lt`   | Table of Contents                 |
| `<LocalLeader>le`   | Errors                            |
| `<LocalLeader>lc`   | Clean                             |
| `<LocalLeader>lC`   | Full Clean                        |

For a complete list of TeX-specific keybindings, refer to the TeX module documentation.

---

## Markdown

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>pg`    | Markdown Glow Preview                 |
| `<Leader>pb`    | Markdown Browser Preview              |
| `<Leader>pp`    | Markdown Print PDF                    |

---

## UI Toggles

| Key             | Action                                |
|-----------------|---------------------------------------|
| `<Leader>ud`    | Toggle Diagnostics                    |
| `<Leader>ul`    | Toggle Line Number                    |
| `<Leader>uh`    | Toggle Inlay Hints                    |
| `<Leader>uT`    | Toggle Treesitter                     |
| `<Leader>us`    | Toggle Spelling                       |
| `<Leader>uw`    | Toggle Wrap                           |
| `<Leader>uL`    | Toggle Relative Number                |
| `<Leader>uc`    | Toggle Conceallevel                   |
| `<Leader>ub`    | Toggle Dark Background                |

---

## Leader Key Prefixes

| Prefix          | Description                           |
|-----------------|---------------------------------------|
| `<Leader>a`     | AI                                    |
| `<Leader>b`     | Buffers                               |
| `<Leader>e`     | Explorer                              |
| `<Leader>f`     | Find/Files                            |
| `<Leader>g`     | Git                                   |
| `<Leader>l`     | LSP                                   |
| `<Leader>p`     | Preview                               |
| `<Leader>q`     | Quit/Session                          |
| `<Leader>s`     | Search                                |
| `<Leader>t`     | TeX                                   |
| `<Leader>u`     | UI                                    |
| `<Leader>.`     | Utilities                             |
| `<Leader><Tab>` | Tabs                                  |
