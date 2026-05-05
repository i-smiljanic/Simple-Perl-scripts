#Count frequency of each word
#Explanation:
#%count stores word frequencies
#lc makes it case-insensitive
#\W+ splits on non-word characters

use strict;
use warnings;

my %count;
while (my $line = <>) {
    for my $word (split /\W+/, $line) {
        next unless $word;
        $count{lc $word}++;
    }
}

foreach my $word (sort keys %count) {
    print "$word: $count{$word}\n";
}

