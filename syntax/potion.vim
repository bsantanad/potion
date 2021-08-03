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

" numbers
" supports int and floats
syntax match potion_number "\v[0-9]"
syntax match potion_number "\v[0-9]*$"
syntax match potion_number "\v[0-9]*\.[0-9]*$"

" strings
syntax region potion_string start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potion_string start=/\v'/ skip=/\v\\./ end=/\v'/

" anything in <potion_keyword> group should be highlighted as a
" keyword/function
highlight link potion_keyword Keyword
highlight link potion_function Function
highlight link potion_comment Comment
highlight link potion_operator Operator
highlight link potion_number Number
highlight link potion_string String

let b:current_syntax = "potion"
