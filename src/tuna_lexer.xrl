Definitions.
% Examples here https://github.com/relops/leex_yecc_example/tree/master/src

DIGITS = [0-9]
ALPHABET = [A-Za-z]
ALPHABET_LOWERCASE = [a-z] 

Rules.

{DIGITS}+ : {token,{integer,TokenLine,list_to_integer(TokenChars)}}.

{DIGITS}+\.{DIGITS}* : {token, {float,TokenLine,list_to_float(TokenChars)}}.

Erlang code.
