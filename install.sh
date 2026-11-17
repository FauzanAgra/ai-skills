#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="${REPO_DIR}/skills"
TARGET_DIR="${HOME}/.gemini/config/skills"

mkdir -p "${TARGET_DIR}"

echo "Installing custom Antigravity skills from ${SKILLS_SRC} -> ${TARGET_DIR}"

for skill_path in "${SKILLS_SRC}"/*; do
    [ -d "${skill_path}" ] || continue
    skill_name="$(basename "${skill_path}")"
    dest_path="${TARGET_DIR}/${skill_name}"

    if [ -L "${dest_path}" ]; then
        rm "${dest_path}"
    elif [ -d "${dest_path}" ]; then
        echo "Backing up existing directory ${dest_path} -> ${dest_path}.bak"
        mv "${dest_path}" "${dest_path}.bak"
    fi

    ln -s "${skill_path}" "${dest_path}"
    echo "  ✓ Linked ${skill_name}"
done

echo "Done! All skills are now active in Antigravity."
