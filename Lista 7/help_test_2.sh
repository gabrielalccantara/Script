  
#!/bin/bash

param=$*

while :; do

       read -p "Digite:" param

       case $param in

       aritmetica)
              cat <<EOF
	 INTEGER1 -eq INTEGER2
              INTEGER1 is equal to INTEGER2
       INTEGER1 -ge INTEGER2
              INTEGER1 is greater than or equal to INTEGER2
       INTEGER1 -gt INTEGER2
              INTEGER1 is greater than INTEGER2
       INTEGER1 -le INTEGER2
              INTEGER1 is less than or equal to INTEGER2
       INTEGER1 -lt INTEGER2
              INTEGER1 is less than INTEGER2
       INTEGER1 -ne INTEGER2
              INTEGER1 is not equal to INTEGER2
EOF

              ;;

       strings)
              cat <<EOF
       -n STRING
              the length of STRING is nonzero
       STRING equivalent to -n STRING
       -z STRING
              the length of STRING is zero
       STRING1 = STRING2
              the strings are equal
       STRING1 != STRING2
              the strings are not equal
EOF

              ;;

       variáveis)
              cat <<EOF
  	-n STRING
              the length of STRING is nonzero
       STRING equivalent to -n STRING
       -z STRING
              the length of STRING is zero
EOF

              ;;

       arquivos)
              cat <<EOF
        FILE1 -ef FILE2
              FILE1 and FILE2 have the same device and inode numbers
       FILE1 -nt FILE2
              FILE1 is newer (modification date) than FILE2
       FILE1 -ot FILE2
              FILE1 is older than FILE2
       -b FILE
              FILE exists and is block special
       -c FILE
              FILE exists and is character special
       -d FILE
              FILE exists and is a directory
       -e FILE
              FILE exists
       -f FILE
              FILE exists and is a regular file
       -g FILE
              FILE exists and is set-group-ID
       -G FILE
              FILE exists and is owned by the effective group ID
       -h FILE
              FILE exists and is a symbolic link (same as -L)
EOF

              ;;

       logica)
              cat <<EOF
         ( EXPRESSION )
              EXPRESSION is true
       ! EXPRESSION
              EXPRESSION is false
       EXPRESSION1 -a EXPRESSION2
              both EXPRESSION1 and EXPRESSION2 are true
       EXPRESSION1 -o EXPRESSION2
              either EXPRESSION1 or EXPRESSION2 is true
EOF

              ;;

       extended)
              cat <<EOF
       Return a status of 0 or 1 depending on the evaluation of the conditional expression expression. Expressions are composed of the primaries described below under CONDITIONAL EXPRESSIONS. Word splitting and pathname expansion are not performed on the words between the [[ and ]]; tilde expansion, parameter and variable expansion, arithmetic expansion, command substitution, process substitution, and quote removal are performed. Conditional operators such as -f must be unquoted to be recognized as primaries.
       When used with [[, The < and > operators sort lexicographically using the current locale.
       When the == and != operators are used, the string to the right of the operator is considered a pattern and matched according to the rules described below under Pattern Matching. If the shell option nocasematch is enabled, the match is performed without regard to the case of alphabetic characters. The return value is 0 if the string matches (==) or does not match (!=) the pattern, and 1 otherwise. Any part of the pattern may be quoted to force it to be matched as a string.
       An additional binary operator, =~, is available, with the same precedence as == and !=. When it is used, the string to the right of the operator is considered an extended regular expression and matched accordingly (as in regex(3)). The return value is 0 if the string matches the pattern, and 1 otherwise. If the regular expression is syntactically incorrect, the conditional expression's return value is 2. If the shell option nocasematch is enabled, the match is performed without regard to the case of alphabetic characters. Any part of the pattern may be quoted to force it to be matched as a string. Substrings matched by parenthesized subexpressions within the regular expression are saved in the array variable BASH_REMATCH. The element of BASH_REMATCH with index 0 is the portion of the string matching the entire regular expression. The element of BASH_REMATCH with index n is the portion of the string matching the nth parenthesized subexpression.
EOF

              ;;

       sair)
              break
              ;;

       esac

done
