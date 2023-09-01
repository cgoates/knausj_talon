from talon import Context, Module, actions, app

ctx = Context()
mod = Module()
mod.apps.emacs = """
app: emacs
"""

@ctx.action_class("win")
class WinActions:
    def filename():
        title = actions.win.title()
        result = title.split(" – ")[0]

        if "." in result:
            return result

        return ""
