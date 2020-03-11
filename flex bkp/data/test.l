%{

#include <stdio.h>
#include <string.h>
#include "test.tab.h"
void show_error();
%}

dd ([0][1-9]|[1|2][0-9]|30|31)
mm ([0][1-9])
aaaa ([0-9]{4}) 
data({dd}/{mm}/{aaaa})

%%

{data}  {sscanf(yytext, "%s", yylval.data; return (DATA);}
";"     {return (SEMICOLON);}
.       {show_error(); return(OTHER);}

%%
void show_error(){
    printf("Other input");
}