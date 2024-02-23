%{
#include<stdio.h>
%}

%%
[a-zA-Z]\t[0-9]+\t[<A-Za-z0-9>]  {printf("valid order: %s\n",yytext);}
.*|\n {printf("Invalid order: %s",yytext);}
%%

int main() {
   yylex();
   return 0;
}
int yywrap()
{
   return 1;
}
