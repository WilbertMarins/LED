%{

#include <stdio.h>
#include <string.h>
#include "test.tab.h"
void showError();
%}


numbers     ([0-9])+
email      [a-z0-9.]+@[a-z0-9]+\.[a-z]+(\.([a-z]+))*

%%

{email}			   {sscanf(yytext, "%s", yylval.email); return (STRING);}
{numbers}      {yylval.number = atoi(yytext); return (NUM);}
";"      		   {return (SEMICOLON);}
.      		     {showError(); return(OTHER);}

%%


void showError(){
    printf("Other input");
}
