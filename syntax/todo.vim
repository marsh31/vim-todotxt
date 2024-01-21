
if exists("b:current_syntax")
    finish
endif

syntax  match  TodoDone       '^x\s.\+$'
syntax  match  TodoPriorityA  '^(A)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityB  '^(B)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityC  '^(C)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityD  '^(D)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityE  '^(E)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityF  '^(F)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityG  '^(G)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityH  '^(H)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityI  '^(I)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityJ  '^(J)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityK  '^(K)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityL  '^(L)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityM  '^(M)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityN  '^(N)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityO  '^(O)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityP  '^(P)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityQ  '^(Q)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityR  '^(R)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityS  '^(S)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityT  '^(T)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityU  '^(U)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityV  '^(V)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityW  '^(W)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityX  '^(X)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityY  '^(Y)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate
syntax  match  TodoPriorityZ  '^(Z)\s.\+$'                              contains=TodoDate,TodoProject,TodoContext,OverDueDate

syntax  match  TodoDate       '\d\{2,4\}-\d\{2\}-\d\{2\}'               contains=NONE
syntax  match  TodoProject    '\(^\|\W\)+[^[:blank:]]\+'                contains=NONE
syntax  match  TodoContext    '\(^\|\W\)@[^[:blank:]]\+'                contains=NONE
syntax  match  TodoContext    '\(^\|\W\)[^[:blank:]]\+:[^[:blank:]]\+'  contains=TodoDate

" Other priority colours might be defined by the user
highlight  default  link  TodoDone       Comment
highlight  default  link  TodoPriorityA  Constant
highlight  default  link  TodoPriorityB  Statement
highlight  default  link  TodoPriorityC  Identifier
highlight  default  link  TodoDate       PreProc
highlight  default  link  TodoProject    Special
highlight  default  link  TodoContext    Special
highlight  default  link  TodoTag        Special

let b:current_syntax = "todo"
