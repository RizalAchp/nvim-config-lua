import sys
import os
from dataclasses import dataclass
import re
from typing_extensions import Self


def parse_mode(mode: str) -> str:
    if mode == "n":
        return "Normal"
    if mode == "n":
        return "Normal"
    if mode == "v":
        return "Visual Select"
    if mode == "x":
        return "Visual"
    return "Default"


def parse_commands(cmd: str) -> str:
    if not cmd:
        return ""
    if "<CMD>" in cmd:
        return cmd.replace("<CMD>", "*").replace("<CR>", "*").strip(" ")
    if "<Plug>" in cmd:
        return f'{cmd.replace("<Plug>", "*plugcommand: ").strip(" ")}*'
    return f'*{cmd.strip(" ")}*'


def parse_key_pressed(key: str) -> str:
    if "<Leader>" in key:
        return f'**{key.replace("<Leader>", "spasi + ").strip(" ")}**'
    if "<Silent>" in key:
        return f'**{key.replace("<Silent>", "silent + ").strip(" ")}**'
    rgx = re.match(r".*<(M-(.*))>.*", key)
    if rgx is not None:
        print(rgx.groups())
        return f"**Altkey + {rgx.group(1)}**"
    return f'**{key.strip(" ")}**'


@dataclass
class Binding:
    mode: str
    key: str
    cmd: str
    desc: str

    def parseit(self) -> Self:
        self.mode = parse_mode(self.mode)
        self.key = parse_key_pressed(self.key)
        self.cmd = parse_commands(self.cmd)
        return self

    def get_md(self) -> str:
        return f'|"{self.mode}"|"{self.key}"|"{self.cmd}"|{self.desc}|'


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
            md = bind.parseit().get_md()
            # print(md)
            wr.write(f"{md}\n")

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
