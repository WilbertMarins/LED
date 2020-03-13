%{
  int flag=0;
%}

%%

[a-z.0-9_]+@[a-z]+".com"|".in" {flag=1;}

%%


int main(){ 
  yylex(); 
  if (flag == 1) 
    printf("VÁLIDO\n"); 
  else
    printf("NÃO VÁLIDO\n"); 
} 
