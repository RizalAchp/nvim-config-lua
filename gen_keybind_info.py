import sys
import os
from dataclasses import dataclass
import re


@dataclass
class Binding:
    mode: str
    key: str
    cmd: str
    desc: str

    def get_md(self) -> str:
        return f"|{self.mode}|{self.key}|{self.cmd}|{self.desc}|"


def generatebind(binds: list[Binding]) -> int:
    fileout: str = "binding.md"
    with open(fileout, "w") as wr:
        if not wr.writable():
            print(f"ERROR: cannot write on file: {fileout}", file=sys.stderr)
            return 1
        wr.write("### binding for the key bind for this config\n")
        wr.write("| Mode | Key | Commands | Descriptions |\n")
        wr.write("| :----: | :----: | :----: | ----: |\n")
        for bind in binds:
            wr.write(f"{bind.get_md()}\n")

    print(f"INFO: Done Generating binding file: {fileout}")
    return 0


def main() -> int:
    pattern = re.compile(r"^map\((.*)\).*\-\-(.*)$", re.MULTILINE)

    bindings: list[Binding] = []
    with open(KEYBINDFILE, "r") as fl:
        if not fl.readable():
            print(f"ERROR: cannot read file: {KEYBINDFILE}", file=sys.stderr)
            return 1
        lines = fl.read()
    for matchs in pattern.finditer(lines):
        mps, grp = matchs.groups()
        maps = mps.replace('"', '').split(",")
        bindings.append(
                Binding(
                    mode=maps[0],
                    key=maps[1],
                    cmd=maps[2],
                    desc=grp.strip()
                )
        )
    return generatebind(bindings)


KEYBINDFILE: str = os.path.abspath("lua/keybindings.lua")

if __name__ == "__main__":
    sys.exit(main())
