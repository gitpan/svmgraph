# in case Test::More ain't there
BEGIN {
    eval { require Test::More; };
    print "1..0\n" and exit if $@;
}

use strict;
use Test::More;

plan tests => 1;

is(-x 'bin/svmgraph', 1, 'svmgraph has the x bit' );

