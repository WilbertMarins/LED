%{

#include <stdio.h>
#include <string.h>
#include "test.tab.h"
void show_error();
%}

data       (0[1-9]|[1-2][0-9]|3[0-1])+(\/|-|\.)(0[1-9]|1[0-2])+(\/|-|\.)(199[0-9]|200[0-9]|201[0-9]|2020)
email      [a-z0-9.]+@[a-z0-9]+\.[a-z]+(\.([a-z]+))*
%%

{email}     {sscanf(yytext, "%s", yylval.email); return (STRING);}
{data}      {sscanf(yytext, "%s", yylval.data); return (DATA);}
";"      		   {return (SEMICOLON);}
.      		     {show_error(); return(OTHER);}

%%


void show_error(){
    printf("Other input");
}

