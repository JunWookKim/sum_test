/*just like Unix wc*/
%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

//패턴 + 액션으로 구성
//1개 이상의 영문자가 있으면
[a-zA-Z]+   {words++; chars+= strlen(yytext);}
\n  {chars++; lines++;}
.   {chars++;}

%%

int main(int argc, char **argv){
    yylex();
    printf("%8d%8d%8d\n", lines, words, chars);
}