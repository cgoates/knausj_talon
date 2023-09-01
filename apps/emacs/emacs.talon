app: emacs
-
file save:
     key(esc)
     insert(" fs")
file close: insert(" bd")
window close: insert(" wd")

please [<user.text>]:
    key(alt-x)
    insert(user.text or "")

project search: insert(" /")

undo that:
     key(esc)
     insert("u")

redo that:
     key(ctrl-r)

workspace <number_small>:
    key(esc)
    sleep(0.02)
    key(space)
    sleep(0.02)
    key(tab)
    sleep(0.02)
    insert("{number_small}")

copy line down:
    key(esc)
    sleep(0.02)
    key(y)
    sleep(0.02)
    key(y)
    sleep(0.02)
    key(p)

copy line up:
    key(esc)
    sleep(0.02)
    key(y)
    sleep(0.02)
    key(y)
    sleep(0.02)
    key(P)

post file: "G"
pre file: "gg"
go <number>:
   insert("{number}gg")

take file:
    key(esc)
    sleep(0.02)
    "ggVG"

frame <number_small>:
    key(ctrl-x w)
    insert("{number_small}")
