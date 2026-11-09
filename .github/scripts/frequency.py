import sys
from pathlib import Path

VOWELS = "aeiou"


def vowel_profile(path):
    try:
        text = Path(path).read_text(encoding="utf-8").lower()
    except FileNotFoundError:
        print(f"Case file missing: {path}", file=sys.stderr)
        sys.exit(1)
    counts = {v: text.count(v) for v in VOWELS}
    total = sum(counts.values())
    summary = " ".join(f"{v}={n}" for v, n in counts.items())
    return f"{summary} (total {total})"


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: frequency.py <case_file>", file=sys.stderr)
        sys.exit(1)
    print(vowel_profile(sys.argv[1]))