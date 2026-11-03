#!/usr/bin/env bash
# Check this month's GitHub billable usage and fail if anything would be charged.
#
#   ./bin/check-billing.sh            # current calendar month
#   ./bin/check-billing.sh 2026 10    # a specific year/month
#
# Requires the gh CLI logged in with the `user` scope:
#   gh auth refresh -h github.com -s user

set -euo pipefail

USER_LOGIN="${GH_USER:-edwardvillarin07}"
YEAR="${1:-$(date -u +%Y)}"
MONTH="${2:-$(date -u +%m)}"

USAGE_JSON="$(gh api "/users/${USER_LOGIN}/settings/billing/usage?year=${YEAR}&month=${MONTH}")"
export USAGE_JSON USER_LOGIN YEAR MONTH

python3 - <<'PY'
import json, os, sys

login = os.environ["USER_LOGIN"]
year, month = os.environ["YEAR"], os.environ["MONTH"]
items = json.loads(os.environ["USAGE_JSON"]).get("usageItems", [])

print(f"GitHub usage — {login} — {year}-{month}\n")
if not items:
    print("  no metered usage")
else:
    row = "  {:<12} {:<26} {:>12} {:>9} {:>9}"
    print(row.format("date", "sku", "units", "gross", "billed"))
    print("  " + "-" * 72)
    for i in items:
        print(row.format(
            i["date"][:10],
            f'{i["product"]}/{i["sku"]}',
            f'{i["quantity"]:g} {i["unitType"].lower()}',
            "$%.2f" % i["grossAmount"],
            "$%.2f" % i["netAmount"],
        ))

gross = sum(i.get("grossAmount", 0) for i in items)
net = sum(i.get("netAmount", 0) for i in items)
discount = sum(i.get("discountAmount", 0) for i in items)

print("  " + "-" * 72)
print("  gross $%.2f   discounts -$%.2f   BILLED $%.2f\n" % (gross, discount, net))
if net > 0:
    print("WARNING: $%.2f will be charged this cycle." % net)
    sys.exit(1)
print("OK: nothing to pay, billed amount is $0.00.")
PY
