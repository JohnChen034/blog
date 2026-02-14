from pathlib import Path
import re

SRC = Path("docs/")

def grab(field, text):
    m = re.search(rf"^{field}:\s*(.+)$", text, re.M)
    if not m:
        raise RuntimeError(f"missing {field}")
    return m.group(1).strip()

def slugify(s):
    s = s.strip()
    s = re.sub(r"\s+", "-", s)
    return s

year_dirs = [p for p in SRC.iterdir() if p.is_dir() and re.fullmatch(r"\d{4}", p.name)]

for year_dir in year_dirs:
    for md in year_dir.rglob("*.md"):
        if md.name == "index.md":
            continue
        text = md.read_text()

        if not text.startswith("---"):
            raise RuntimeError(f"{md} missing front matter")

        front = text.split("---", 2)[1]

        title = grab("title", front)
        date  = grab("date", front)

        target = SRC / f"{date}-{slugify(title)}.md"

        if md.name != target.name:
            print(f"rename: {md.name} → {target.name}")
            md.rename(target)

print("All names fixed!")
