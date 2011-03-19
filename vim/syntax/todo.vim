syntax region todoDone start=/DONE\|^\s*:/ end=/$/
hi def todoDoneDefinition gui=italic guifg=DarkGray
hi link todoDone todoDoneDefinition
syntax region todoTodo start=/____/ end=/:/
hi def todoTodoDefinition guifg=DarkRed guibg=LightGray
hi link todoTodo todoTodoDefinition

