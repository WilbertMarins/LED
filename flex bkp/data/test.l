%{

#include <stdio.h>
#include <string.h>
#include "test.tab.h"
void show_error();
%}

data ^((0?[13578]|10|12)(-|\/)(([1-9])|(0[1-9])|([12])([0-9]?)|(3[01]?))(-|\/)((19)([2-9])(\d{1})|(20)([01])(\d{1})|([8901])(\d{1}))|(0?[2469]|11)(-|\/)(([1-9])|(0[1-9])|([12])([0-9]?)|(3[0]?))(-|\/)((19)([2-9])(\d{1})|(20)([01])(\d{1})|([8901])(\d{1})))$

%%

{data}  {sscanf(yytext, "%s", yylval.data; return (DATA);}
";"     {return (SEMICOLON);}
.       {show_error(); return(OTHER);}

%%
void show_error(){
    printf("Other input");
}