use strict;
use warnings;

#Moj zamisljeni broj
my $zamisljeni_broj = int(rand(10)+1);

#Startnibroj pokusaja
my $broj_pokusaja = 1;

#Dozvoljeni broj pokusaja
my $dozvoljeni_broj_pokusaja = 7;

print "Zamislio sam broj izmedju 1 i 10. Imas $dozvoljeni_broj_pokusaja pokusaja!\n";

#while loop za provjeru unosa
OUTER_LOOP:while ($broj_pokusaja <= $dozvoljeni_broj_pokusaja) {
    
    #Unos broja
    print "Unesite zamisljeni broj (1-10): ";
    my $pokusaj = <STDIN>;
    chomp($pokusaj);

    #Provjera da li je unos broj
    if ($pokusaj =~ /^([1-9]|10)$/) {

        #if ako se pogodi broj sa izlazom
        if ($pokusaj == $zamisljeni_broj) {
            print "Uspjesno ste pogodili broj iz $broj_pokusaja. puta.";
            last OUTER_LOOP;
        }
        
        #Obavjestenje o velicini broja
        elsif ($pokusaj < $zamisljeni_broj) {
            print "Premalo ... ";
        }

        #Obavjestenje o velicini broja
        elsif ($pokusaj > $zamisljeni_broj) {
            print "Previse ... ";
        }
    }

    #Slucaj da unos nije broj
    else {
        print "Nije broj izmedju 1 i 10, ponovo unesite broj!\n";
        next;
        }

    #Izlaz ako se ispuni broj pokusaja - izgubljena partija
    if ($broj_pokusaja == 7) {
        print "Nazalost, ostali ste bez pokusaja. Moj zamisljeni broj je bio $zamisljeni_broj";
        last;
    }

    #Povecanje broja pokusaja na svakom loop
    $broj_pokusaja ++;
}
