" prevents from being loaded if syntax highlighting has alread been enabled
" in this buffer
if exists("b:current_syntax")
    finish
endif

" keywords
syntax keyword potion_keyword loop times to while
syntax keyword potion_keyword if elsif else
syntax keyword potion_keyword class return 

" functions 
syntax keyword potion_function print join string 

" anything in <potion_keyword> group should be highlighted as a
" keyword/function
highlight link potion_keyword Keyword
highlight link potion_function Function 

let b:current_syntax = "potion"
