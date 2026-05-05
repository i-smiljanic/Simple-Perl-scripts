#Count number of lines, words, and characters
#Explanation:
#length() counts characters
#split breaks text into words
#@w in scalar context gives count


use strict;
use warnings;

my ($lines, $words, $chars) = (0, 0, 0);
while (my $line = <>) {
    $lines++;
    $chars += length($line);
    my @w = split /\s+/, $line;
    $words += @w;
}
print "Lines: $lines\nWords: $words\nChars: $chars\n";

