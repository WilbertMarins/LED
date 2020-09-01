
%{
#include <stdio.h>

int yylex();
int yyerror(char *s);

%}

%token STRING OTHER SEMICOLON DATA

%type <email> STRING
%type <data> DATA

%union{
	char email[150];
	char data[150];
}

%%

prog:
  stmts
;

stmts:
		| stmt SEMICOLON stmts

stmt:
		STRING {
				printf("Seu e-mail: - %s", $1);
		}
		| DATA {
				printf("voce digitou uma data valida");
		}
		
		| OTHER
;

%%

int yyerror(char *s)
{
	printf("Syntax Error on line %s\n", s);
	return 0;
}

int main()
{
    yyparse();
    return 0;
}
