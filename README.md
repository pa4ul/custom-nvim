# Custom LazyVim

Meine persönliche Neovim-Konfiguration, basierend auf [LazyVim](https://github.com/LazyVim/LazyVim). Dieses Repository dient als Backup für mein IDE-Setup, meine benutzerdefinierten Tastenkürzel (Keymaps) und als Cheatsheet für den Entwicklungsalltag.

---

## Eigene Shortcuts

Benutzerdefinierte Tastenkürzel, eingerichtet in `~/.config/nvim/lua/config/keymaps.lua`:

| Shortcut | Modus | Aktion |
| :--- | :---: | :--- |
| `,d` | Normal | Datei-Explorer (**Neo-tree**) öffnen / schließen |
| `,t` | Normal | Schwebendes Terminal (Floating Terminal) öffnen / schließen |
| `Space` + `r` | Normal | Aktuelles Python-Skript speichern und sofort ausführen (`:w` gefolgt von `:!python3 %`) |

---

## 🔍 Navigation & Dateisuche (Telescope)

LazyVim nutzt Telescope für eine blitzschnelle Suche im gesamten Projekt.

| Shortcut | Aktion |
| :--- | :--- |
| `Space` + `f` + `f` | **F**ind **F**ile: Suchen nach Dateien über den Namen |
| `Space` + `s` + `g` | **S**earch **G**rep: Suchen nach bestimmtem Text in *allen* Dateien |
| `Space` + `,` | Zwischen geöffneten Dateien (Buffers) wechseln |
| `Space` + `b` + `d` | **B**uffer **D**elete: Die aktuelle Datei schließen, ohne Neovim zu beenden |

---

## 🖥️ Fenstermanagement (Splits)

Arbeitsbereich direkt in Neovim aufteilen, ohne externe Tools wie tmux.

| Shortcut | Aktion |
| :--- | :--- |
| `Space` + `w` + `v` | Bildschirm **v**ertikal teilen (links/rechts) |
| `Space` + `w` + `s` | Bildschirm horizontal teilen (oben/unten) |
| `Ctrl` + `h` | Cursor in das **linke** Fenster bewegen |
| `Ctrl` + `j` | Cursor in das **untere** Fenster bewegen |
| `Ctrl` + `k` | Cursor in das **obere** Fenster bewegen |
| `Ctrl` + `l` | Cursor in das **rechte** Fenster bewegen |
| `Space` + `w` + `q` | Das aktuelle Fenster-Split schließen |

---

## 🚀 Code-Intelligenz & LSP

Erweiterte IDE-Funktionen über Sprachserver (LSP) für Fehlererkennung und Autovervollständigung.

| Shortcut | Aktion |
| :--- | :--- |
| `K` *(Shift + k)* | Dokumentation (Hover) für das Wort unter dem Cursor anzeigen |
| `g` + `d` | **G**o to **D**efinition: Direkt dorthin springen, wo die Funktion/Variable definiert wurde |
| `Space` + `c` + `a` | **C**ode **A**ctions: Schnelle Lösungsvorschläge für Fehler (z. B. fehlende Imports) |
| `Space` + `c` + `r` | **C**ode **R**ename: Eine Variable/Funktion projektweit auf einmal umbenennen |
| `]` + `d` / `[` + `d` | Zum **nächsten** (`]`) oder **vorherigen** (`[`) LSP-Fehler springen |

---

## 📂 Befehle im Datei-Explorer

Wenn der Datei-Explorer (`,d`) geöffnet und fokussiert ist:

| Taste | Aktion |
| :---: | :--- |
| `a` | **A**dd: Neue Datei oder neuen Ordner erstellen (z. B. `ordner/datei.py` erstellt beides) |
| `d` | **D**elete: Die ausgewählte Datei / den Ordner löschen |
| `r` | **R**ename: Die ausgewählte Datei / den Ordner umbenennen |
| `R` | **R**efresh: Den Dateibaum manuell neu laden |

---

## 📝 Markdown Live-Vorschau

LazyVim bietet eine interaktive Browser-Vorschau für Markdown-Dateien (wie diese README).

### Einrichtung

1. In Neovim den Befehl `:LazyExtras` eingeben.
2. Mit `j`/`k` nach unten zu **`lang.markdown`** navigieren.
3. **`x`** drücken, um das Extra zu aktivieren, danach das Menü mit `q` schließen.

### Nutzung

* `:MarkdownPreview` – Startet die Live-Vorschau im Standardbrowser (aktualisiert sich beim Tippen in Echtzeit).
* `:MarkdownPreviewStop` – Beendet die Vorschau.

---

## 💾 Git Backup & Versionierung

Um dieses Setup auf GitHub/GitLab zu sichern:

1. In den Konfigurationsordner wechseln:

   ```bash
   cd ~/.config/nvim
