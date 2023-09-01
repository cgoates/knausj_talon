tag: user.scribble
-
tag(): user.code_imperative

tag(): user.code_comment_line
tag(): user.code_operators_assignment
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "SNAKE_CASE"
    user.code_protected_variable_formatter = "SNAKE_CASE"
    user.code_public_variable_formatter = "SNAKE_CASE"
    # whether or not to use uint_8 style datatypes
    #    user.use_stdint_datatypes = 1

state <user.curly_commands>: user.insert_between( "@{curly_commands}{", "}" )
state tag <user.curly_commands>: user.insert_between( "@{curly_commands}[#:tag \"", "\"]{{}}" )

tag square: user.insert_between( "[#:tag \"", "\"]" )

equation: user.insert_between( "@${", "}" )
block equation: user.insert_between( "@latex{{\n\\begin{{equation}}\n", "\n\\end{{equation}}\n}}" )


