#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
failures=0

require_text() {
  local file="$1"
  local pattern="$2"
  local label="$3"

  if ! grep -Eq "$pattern" "$ROOT/$file"; then
    printf 'FAIL: %s missing %s\n' "$file" "$label" >&2
    failures=$((failures + 1))
  fi
}

require_file() {
  local file="$1"

  if [[ ! -f "$ROOT/$file" ]]; then
    printf 'FAIL: missing %s\n' "$file" >&2
    failures=$((failures + 1))
  fi
}

require_file "research/2026-06-20-principal-feedback-roadmap.md"

require_text "ROADMAP.md" "Principal feedback triage" "feedback triage section"
require_text "framework/06-project-spec.md" "Current-attempt assumptions" "current-attempt assumptions section"

require_text "framework/03-county-screen.md" "County posture depth" "county posture depth section"
require_text "framework/03-county-screen.md" "[Ll]arge-tract blind spots" "large-tract blind-spot guardrail"
require_text "framework/04-signal-inventory.md" "Output provenance" "output provenance section"

require_text "results/states/_template.md" "Existing rights purchase/lease path" "water acquisition field"
require_text "results/states/_template.md" "Provenance" "provenance block"
require_text "results/counties/_template.md" "County posture depth" "county posture depth fields"
require_text "results/counties/_template.md" "Provenance" "provenance block"

require_text "ops/step-0-state-screens.md" "new appropriations/permits" "new-vs-existing water procedure"
require_text "ops/step-0-state-screens.md" "Provenance note" "state provenance task"
require_text "ops/step-1-county-pilot.md" "large-tract inventory" "large-tract inventory task"
require_text "ops/step-1-county-pilot.md" "County posture depth" "county posture depth task"
require_text "ops/data-sources.md" "Planning/zoning commission pages" "planning commission source"

if (( failures > 0 )); then
  exit 1
fi

printf 'validate-geodesic: OK\n'
