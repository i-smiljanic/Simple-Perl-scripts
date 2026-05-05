#Extract IP addresses from logs
#Matches IPv4 format
#(?:...) = non-capturing group

use strict;
use warnings;

while (<>) {
    while (/(\d{1,3}(?:\.\d{1,3}){3})/g) {
        print "$1\n";
    }
}

