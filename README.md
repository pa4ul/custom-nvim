# Optimierte LazyVim Konfiguration

## UI

<img width="1654" height="1163" alt="Bildschirmfoto 2026-05-20 um 10 25 58" src="https://github.com/user-attachments/assets/f1e5aa96-2f09-41bb-84b9-9cb2b1cf70ff" />

*Die Hauptoberfläche mit dem Datei-Explorer, Splitscreen und Terminal*

<img width="1654" height="1163" alt="Bildschirmfoto 2026-05-20 um 10 28 27" src="https://github.com/user-attachments/assets/6761622a-0828-4217-a1c0-c520b386c434" />

*Find File Feature*

<img width="2047" height="963" alt="Bildschirmfoto 2026-05-20 um 10 31 00" src="https://github.com/user-attachments/assets/4e80c5cd-ef09-4ae6-a3cb-3810ca19ce52" />

*Live Markdown Preview (Hot Reload)*

---

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
| `Ctrl` + `s` | Das anvisierte File als **horizontalen** Split-Screen (darunter) öffnen |
| `a` | **A**dd: Neue Datei oder neuen Ordner erstellen (z. B. `ordner/datei.py` erstellt beides) |
| `d` | **D**elete: Die ausgewählte Datei / den Ordner löschen |
| `r` | **R**ename: Die ausgewählte Datei / den Ordner umbenennen |
| `R` | **R**efresh: Den Dateibaum manuell neu laden |

---

## Markdown Live-Vorschau

Interaktive Browser-Vorschau für Markdown-Dateien.

### Einrichtung

1. In Neovim den Befehl `:LazyExtras` eingeben.
2. Zu **`lang.markdown`** navigieren.
3. **`x`** drücken, um das Extra zu aktivieren, danach das Menü mit `q` schließen.

### Nutzung

- `:MarkdownPreview` – Startet die Live-Vorschau im Standardbrowser (aktualisiert sich in Echtzeit).
- `:MarkdownPreviewStop` – Beendet die Vorschau.

---
