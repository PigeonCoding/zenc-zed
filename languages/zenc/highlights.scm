; Keywords
"fn" @keyword.function
"let" @keyword
"const" @keyword
"var" @keyword
"return" @keyword.return
"if" @keyword.conditional
"else" @keyword.conditional
"while" @keyword.repeat
"for" @keyword.repeat
"in" @keyword
"step" @keyword
"loop" @keyword.repeat
"repeat" @keyword.repeat
"break" @keyword.repeat
"continue" @keyword.repeat
"match" @keyword.conditional
"defer" @keyword
"test" @keyword
"alias" @keyword
"use" @keyword
"import" @keyword
"from" @keyword
"extern" @keyword
"def" @keyword
"async" @keyword
"do" @keyword
"while" @keyword.repeat
"asm" @keyword
"volatile" @keyword
"embed" @keyword
"opaque" @keyword
"plugin" @keyword
"sizeof" @keyword
"typeof" @keyword
"guard" @keyword
"unless" @keyword
"launch" @keyword
"comptime" @keyword
"static" @keyword
"autofree" @keyword
"assert" @keyword
"true" @constant.builtin
"false" @constant.builtin

; Keywords with structure context
(struct_declaration "struct" @keyword)
(enum_declaration "enum" @keyword)
(enum_declaration "union" @keyword)
(trait_declaration "trait" @keyword)
(impl_declaration "impl" @keyword)
(impl_trait_declaration "impl" @keyword)

; Primitive types
(primitive_type) @type.builtin

; Functions
(function_declaration (identifier) @function)
(call_expression (primary_expression (identifier) @function))

; Parameters
(parameter (identifier) @variable.parameter)

; Variables
(let_declaration (identifier) @variable)
(const_declaration (identifier) @constant)
(def_declaration (identifier) @constant)

; Literals
(string_literal) @string
(int_literal) @number
(float_literal) @number
(char_literal) @character
(bool_literal) @constant.builtin
(null_literal) @constant.builtin

; Comments
(comment) @comment

; Punctuation
"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"." @punctuation.delimiter
"::" @punctuation.delimiter
"," @punctuation.delimiter
";" @punctuation.delimiter
":" @punctuation.delimiter
"->" @punctuation.delimiter
"=>" @punctuation.delimiter

; Ranges
(range_expression ".." @operator)
(range_expression "..=" @operator)
(range_expression "..<" @operator)

; Lambda
(lambda_expression "->" @punctuation.delimiter)

; Closure
(closure_expression "fn" @keyword.function)

; Operators
(postfix_expression "++" @operator)
(postfix_expression "--" @operator)
(try_expression "?" @operator)
(pipe_expression "|>" @operator)

; Print statements
(print_statement "print" @keyword)
(print_statement "println" @keyword)
(print_statement "eprint" @keyword)
(print_statement "eprintln" @keyword)

; Raw blocks
(raw_statement "raw" @keyword)

; Test declarations
(test_declaration (string_literal) @string.special)
