#include <counter.h>
#include <lexer.h>


void counter( int count[4] ) {
  while( yylex() )
    ;

  count[0] = fum_count;
  count[1] = fie_count;
  count[2] = foe_count;
  count[3] = fum_count;
}
