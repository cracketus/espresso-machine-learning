#!/usr/bin/env bash
#
# bootstrap-espresso.sh
#
# Creates the folder/file skeleton for the
# “espresso-machine-learning” repo.
#
# Usage:
#   chmod +x bootstrap-espresso.sh
#   ./bootstrap-espresso.sh        # writes into ./espresso-machine-learning
#   ./bootstrap-espresso.sh /path  # writes into /path/espresso-machine-learning
#

set -euo pipefail

ROOT=${1:-$(pwd)}
BASE="$ROOT"

echo "☕ Brewing folders in: $BASE"

# Dir array
DIRS=(
  "$BASE/.github/ISSUE_TEMPLATE"
  "$BASE/prompts/general"
  "$BASE/prompts/domain-specific"
  "$BASE/parameters/openai"
  "$BASE/parameters/llama-cpp"
  "$BASE/parameters/vllm"
  "$BASE/resources"
  "$BASE/scripts"
  "$BASE/tools"
)

# File array (relative to BASE)
FILES=(
  "README.md"
  "LICENSE"
  "CONTRIBUTING.md"
  "CODE_OF_CONDUCT.md"
  ".github/PULL_REQUEST_TEMPLATE.md"
  "resources/websites.md"
  "resources/courses.md"
  "resources/papers.md"
  "resources/telegram_channels.md"
  "resources/communities.md"
  "scripts/prompt_tester.py"
  "scripts/batch_inference.py"
  "scripts/requirements.txt"
)

# mkdir -p for each directory
for d in "${DIRS[@]}"; do
  mkdir -p "$d"
done

# touch each file (empty placeholders)
for f in "${FILES[@]}"; do
  touch "$BASE/$f"
done

echo "✅ Espresso structure ready!"
