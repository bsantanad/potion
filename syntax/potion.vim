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

" comments
" note: '#' is not a keyword, therefore we have to use match and throw a regex
" note: the "\v" means the very magic regex
syntax match potion_comment "\v#.*$"

" operators
" regex in own line, match doesnt suport groupping them
syntax match potion_operator "\v\="
syntax match potion_operator "\v\*"
syntax match potion_operator "\v/"
syntax match potion_operator "\v\+"
syntax match potion_operator "\v-"
syntax match potion_operator "\v\?"
syntax match potion_operator "\v\*\="
syntax match potion_operator "\v/\="
syntax match potion_operator "\v\+\="
syntax match potion_operator "\v-\="

" anything in <potion_keyword> group should be highlighted as a
" keyword/function
highlight link potion_keyword Keyword
highlight link potion_function Function
highlight link potion_comment Comment
highlight link potion_operator Operator

let b:current_syntax = "potion"
