#Extract dates from text (e.g., YYYY-MM-DD)
#Explanation:
#Matches date format
#/g finds multiple matches

use strict;
use warnings;

while (<>) {
    while (/(\d{4}-\d{2}-\d{2})/g) {
        print "$1\n";
    }
}

