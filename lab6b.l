%{
#include"y.tab.h"
#include<stdio.h>
%}
extern int yylval;
%%
int|float|printf|void {printf(" KEY WORD IS %s\n",yytext);return KEYWORD;}
[a-zA-Z]* {printf("Identifires is %s\n",yytext);return ID;}
[+\-\*\/]* {printf("operators is %s\n",yytext);return OP;}
[0-9]+ {yylval=atoi(yytext);printf("number is %d\n",yylval);return DIGIT;}

%%

