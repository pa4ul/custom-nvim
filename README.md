# Optimierte LazyVim Konfiguration

<!--toc:start-->
- [Optimierte LazyVim Konfiguration](#optimierte-lazyvim-konfiguration)
  - [Eigene Shortcuts](#eigene-shortcuts)
  - [Navigation & Dateisuche (Telescope)](#navigation-dateisuche-telescope)
  - [Fenstermanagement (Splits)](#fenstermanagement-splits)
  - [Code-Intelligenz & LSP](#code-intelligenz-lsp)
  - [📂 Befehle im Datei-Explorer](#📂-befehle-im-datei-explorer)
  - [📝 Markdown Live-Vorschau](#📝-markdown-live-vorschau)
    - [Einrichtung](#einrichtung)
    - [Nutzung](#nutzung)
  - [💾 Git Backup & Versionierung](#💾-git-backup-versionierung)
<!--toc:end-->

Meine Neovim-Konfiguration, basierend auf [LazyVim](https://github.com/LazyVim/LazyVim). Dieses Repository dient als Backup für mein IDE-Setup, meine angepassten Tastenkürzel und als schnelles Cheatsheet für den Entwicklungsalltag.

> **Hinweis zur Konfiguration:** Der globale `mapleader` wurde in der `options.lua` auf das Komma (`,`) umgestellt. Alle Standard-LazyVim-Befehle, die normalerweise mit `Space` beginnen, werden hier mit `,` ausgeführt.

---

## Installation

### 1. Voraussetzungen installieren

Bevor du die Konfiguration klonst, müssen die System-Tools installiert sein:

- **macOS (Homebrew):** `brew install neovim git ripgrep fd lazygit`
- **Debian/Ubuntu:** `sudo apt install neovim git ripgrep fd-find lazygit`
- **Fedora/RHEL:** `sudo dnf install neovim git ripgrep fd-find lazygit`

### 2. Alte Config löschen & Eigene klonen

Lösche eventuelle Reste und klone dein Repository direkt in den Zielordner:

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
git clone https://github.com/pa4ul/custom-nvim.git ~/.config/nvim
```

## Eigene Shortcuts

Benutzerdefinierte Tastenkürzel, eingerichtet in `~/.config/nvim/lua/config/keymaps.lua` (nutzen dynamisch das Komma als `<leader>`):

| Shortcut | Modus | Aktion |
| :--- | :---: | :--- |
| `,` + `d` | Normal | Datei-Explorer (**Neo-tree**) öffnen / schließen |
| `,` + `t` | Normal | Schwebendes Terminal (Floating Terminal) öffnen / schließen |
| `,` + `r` | Normal | Aktuelles Python-Skript speichern und sofort ausführen (`:w` gefolgt von `:!python3 %`) |

---

## Navigation & Dateisuche (Telescope)

Blitzschnelle Suche im gesamten Projekt.

| Shortcut | Aktion |
| :--- | :--- |
| `,` + `f` + `f` | **F**ind **F**ile: Suchen nach Dateien über den Namen |
| `,` + `s` + `g` | **S**earch **G**rep: Suchen nach bestimmtem Text in *allen* Dateien |
| `,` + `,` | Zwischen geöffneten Dateien (Buffers) wechseln |
| `,` + `b` + `d` | **B**uffer **D**elete: Die aktuelle Datei schließen, ohne Neovim zu beenden |

---

## Fenstermanagement (Splits)

Arbeitsbereich direkt in Neovim aufteilen.

| Shortcut | Aktion |
| :--- | :--- |
| `,` + `w` + `v` | Bildschirm **v**ertikal teilen (links/rechts) |
| `,` + `w` + `s` | Bildschirm horizontal teilen (oben/unten) |
| `Ctrl` + `h` | Cursor in das **linke** Fenster bewegen |
| `Ctrl` + `j` | Cursor in das **untere** Fenster bewegen |
| `Ctrl` + `k` | Cursor in das **obere** Fenster bewegen |
| `Ctrl` + `l` | Cursor in das **rechte** Fenster bewegen |
| `,` + `w` + `q` | Das aktuelle Fenster-Split schließen |

---

## Code-Intelligenz & LSP

Erweiterte IDE-Funktionen über Sprachserver (LSP) für Fehlererkennung und Autovervollständigung.

| Shortcut | Aktion |
| :--- | :--- |
| `K` *(Shift + k)* | Dokumentation (Hover) für das Wort unter dem Cursor anzeigen |
| `g` + `d` | **G**o to **D**efinition: Direkt dorthin springen, wo die Funktion/Variable definiert wurde |
| `,` + `c` + `a` | **C**ode **A**ctions: Schnelle Lösungsvorschläge für Fehler (z. B. fehlende Imports) |
| `,` + `c` + `r` | **C**ode **R**ename: Eine Variable/Funktion projektweit auf einmal umbenennen |
| `]` + `d` / `[` + `d` | Zum **nächsten** (`]`) oder **vorherigen** (`[`) LSP-Fehler springen |

---

## Befehle im Datei-Explorer

Wenn der Datei-Explorer (`,d`) geöffnet und fokussiert ist:

| Taste | Aktion |
| :---: | :--- |
| `Ctrl` + `v` | Das anvisierte File als **vertikalen** Split-Screen (nebenan) öffnen |
| `Ctrl` + `x` | Das anvisierte File als **horizontalen** Split-Screen (darunter) öffnen |
| `a` | **A**dd: Neue Datei oder neuen Ordner erstellen (z. B. `ordner/datei.py` erstellt beides) |
| `d` | **D**elete: Die ausgewählte Datei / den Ordner löschen |
| `r` | **R**ename: Die ausgewählte Datei / den Ordner umbenennen |
| `R` | **R**efresh: Den Dateibaum manuell neu laden |

---

## 📝 Markdown Live-Vorschau

Interaktive Browser-Vorschau für Markdown-Dateien.

### Einrichtung

1. In Neovim den Befehl `:LazyExtras` eingeben.
2. Zu **`lang.markdown`** navigieren.
3. **`x`** drücken, um das Extra zu aktivieren, danach das Menü mit `q` schließen.

### Nutzung

- `:MarkdownPreview` – Startet die Live-Vorschau im Standardbrowser (aktualisiert sich in Echtzeit).
- `:MarkdownPreviewStop` – Beendet die Vorschau.

---
