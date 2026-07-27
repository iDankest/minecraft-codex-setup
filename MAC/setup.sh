#!/usr/bin/env bash
set -euo pipefail

missing=0

printf '%s\n' 'Mac workspace verification'
printf '%s\n' '========================='

if [[ "$(uname -s)" != "Darwin" ]]; then
  printf '%s\n' 'ERROR: this script must be run on macOS.' >&2
  exit 1
fi

printf 'Architecture: %s\n' "$(uname -m)"

if command -v git >/dev/null 2>&1; then
  printf 'Git: %s\n' "$(git --version)"
else
  printf '%s\n' 'ERROR: Git is not installed or is not on PATH.' >&2
  missing=1
fi

if command -v opencode >/dev/null 2>&1; then
  printf 'OpenCode: %s\n' "$(opencode --version)"
else
  printf '%s\n' 'ERROR: OpenCode is not installed or is not on PATH.' >&2
  printf '%s\n' 'Install it from https://opencode.ai/docs/ and run this script again.' >&2
  missing=1
fi

if command -v git >/dev/null 2>&1; then
  root="$(git rev-parse --show-toplevel 2>/dev/null || true)"
  if [[ -z "$root" ]]; then
    printf '%s\n' 'ERROR: run this script from a Git checkout.' >&2
    missing=1
  else
    printf 'Checkout: %s\n' "$root"
    git status --short --branch
    if [[ -f "$root/opencode.json" && -f "$root/AGENTS.md" ]]; then
      printf '%s\n' 'Project OpenCode files: present'
    else
      printf '%s\n' 'ERROR: opencode.json or AGENTS.md is missing from the checkout.' >&2
      missing=1
    fi
  fi
fi

if command -v git >/dev/null 2>&1; then
  if git config --global --get user.name >/dev/null 2>&1 && git config --global --get user.email >/dev/null 2>&1; then
    printf '%s\n' 'Git identity: configured'
  else
    printf '%s\n' 'WARNING: configure a local Git name and email before committing.' >&2
  fi
fi

if command -v java >/dev/null 2>&1; then
  printf '%s\n' 'Java: installed (the required version is still TBD)'
else
  printf '%s\n' 'Java: not installed (allowed until Mac-side project checks require it)'
fi

if (( missing != 0 )); then
  exit 1
fi

printf '%s\n' 'Verification passed. Open the checkout with: opencode'
