#Process large file efficiently
#Explanation:
#Reads file line-by-line (memory efficient)
#Important for large datasets

use strict;
use warnings;

open(my $fh, "<", "large.txt") or die $!;

while (my $line = <$fh>) {
    print $line if $line =~ /ERROR/;
}
close($fh);

