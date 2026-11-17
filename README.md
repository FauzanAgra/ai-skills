# 🧠 Custom AI Skills (`ai-skills`)

Repositori backup terpusat untuk seluruh **Global Skills** Antigravity milik **Fauzan Agra Pracasta**.

Dengan menyimpan seluruh skill di repositori ini dan menghubungkannya menggunakan **symlink** (`install.sh`) ke `~/.gemini/config/skills/`:
- **Anti-Hilang Saat Reset / Install Ulang Laptop**: Cukup clone repo ini dan jalankan `./install.sh`.
- **Auto-Sync**: Setiap perubahan yang diedit di folder repo ini langsung aktif di Antigravity dan siap di-commit ke GitHub.

---

## 📦 Daftar Skill

| Nama Skill | Lokasi | Deskripsi |
|---|---|---|
| `project-blueprint-kickoff` | [`skills/project-blueprint-kickoff/`](skills/project-blueprint-kickoff/SKILL.md) | Workflow 6-fase standar untuk mengubah ide mentah menjadi blueprint proyek siap koding (`Discovery`, `PRD`, `ERD`, `TECH_SPEC`, `TASKS`, `AGENTS.md`, `DESIGN.md`, `STITCH_PROMPTS.md` / Prototype HTML, `Foundation`, `Implementation`, & `QA`). |

---

## ⚡ Cara Restore Setelah Install Ulang / Pindah Laptop

Jalankan 2 perintah berikut di terminal (WSL / Linux / macOS):

```bash
git clone https://github.com/FauzanAgra/ai-skills.git ~/workspaces/projects/ai-skills
~/workspaces/projects/ai-skills/install.sh
```

Seluruh skill di folder `skills/` akan otomatis terhubung ke `~/.gemini/config/skills/` dan langsung dikenali oleh Antigravity.

---

## ➕ Cara Menambah Skill Baru Nanti

1. Buat folder skill baru di dalam `skills/<nama-skill-baru>/SKILL.md`.
2. Jalankan `./install.sh` untuk membuat symlink-nya ke `~/.gemini/config/skills/`.
3. Commit dan push ke GitHub:
   ```bash
   git add .
   git commit -m "feat(skill): add <nama-skill-baru> skill"
   git push
   ```
