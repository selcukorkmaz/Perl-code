#! perl -sw
#use strict;
use threads;
use threads::shared;
use Data::Dumper;


system("sudo /home/ubuntu/pisa/ccp4-6.5/./BINARY.setup");
system("source /home/ubuntu/pisa/ccp4-6.5/bin/ccp4.setup-sh");


open (pdbFilesList, '/home/ubuntu/Perl-code/pdb_3.txt');
while (<pdbFilesList>) {
    chomp;
    ($name, $file) = split("\t");
    
    system("pisa $name -analyse $file");
    system("pisa $name -xml assem > /home/ubuntu/assmebliesXML/assem_$name.xml");

    
}
#$x . ' ' . $y;



close (pdbFilesList);


#system("pisa 1e94 -list assem > result_assem_1e94");





#system("perl -ne 'if ($. == 10) {print;exit}' result_assem_1e94  >> stoichiometry1");
#system("perl -ne 'if ($. == 10) {print;exit}' result_assem_1rfq  >> stoichiometry2");







