from talon import Context, Module, actions, settings

mod = Module()

ctx = Context()
ctx.matches = r"""
tag: user.scribble
"""

ctx.lists["self.curly_commands"] = {
    "section": "section",
    "subsection": "subsection",
    "bold": "bold",
    "caption": "caption",
    "title": "title",
    "secref": "secref",
    "latex": "latex",
}

mod.list("curly_commands", desc="Commands that start with @ and have curly brackets after them.")

@mod.capture(rule="{self.curly_commands}")
def curly_commands(m) -> str:
    "Returns a string"
    return m.curly_commands


@ctx.action_class("user")
class UserActions:
    def code_operator_assignment():
        actions.auto_insert(" = ")

    def code_operator_subtraction():
        actions.auto_insert(" - ")

    def code_operator_subtraction_assignment():
        actions.auto_insert(" -= ")

    def code_operator_addition():
        actions.auto_insert(" + ")

    def code_operator_addition_assignment():
        actions.auto_insert(" += ")

    def code_operator_multiplication():
        actions.auto_insert(" * ")

    def code_operator_multiplication_assignment():
        actions.auto_insert(" *= ")

    def code_operator_division():
        actions.auto_insert(" / ")

    def code_operator_division_assignment():
        actions.auto_insert(" /= ")

    def code_operator_modulo():
        actions.auto_insert(" % ")

    def code_operator_modulo_assignment():
        actions.auto_insert(" %= ")

    def code_operator_equal():
        actions.auto_insert(" == ")

    def code_operator_not_equal():
        actions.auto_insert(" != ")

    def code_operator_greater_than():
        actions.auto_insert(" > ")

    def code_operator_greater_than_or_equal_to():
        actions.auto_insert(" >= ")

    def code_operator_less_than():
        actions.auto_insert(" < ")

    def code_operator_less_than_or_equal_to():
        actions.auto_insert(" <= ")

    def code_operator_and():
        actions.auto_insert(" && ")

    def code_operator_or():
        actions.auto_insert(" || ")

    def code_comment_line_prefix():
        actions.auto_insert("@;")

