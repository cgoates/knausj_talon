tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa: "ls "
lisa this:
    user.terminal_list_directories()
lisa all:
    user.terminal_list_all_directories()
katie [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
go <user.system_path>: insert("cd \"{system_path}\"\n")
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()

marvin: "mv "

make dir: "mkdir "

zulu [<user.text>]: "z {text}"

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()

each top:
    insert("htop")
    key("enter")

tee mux attach: "tmux attach\n"
tee mux <number_small>:
    key("ctrl-a")
    insert("{number_small}")

tee mux previous:
    key("ctrl-a p")

tee mux next:
    key("ctrl-a n")

next tee mux session:
    key("ctrl-a )")

previous tee mux session:
    key("ctrl-a (")

scroller:
    key("ctrl-a [")

scroller up:
    key("ctrl-a pageup")

run test: "bin/Release/Test_"
run debug test: "bin/Debug/Test_"
lldb that: "lldb -o run !!\n"

build stage make: "./build stage make"
build stage dvc: "./build stage dvc"

git current branch: "$(git_current_branch)"