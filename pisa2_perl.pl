    #!/usr/bin/perl

#use strict;
#use warnings;

system("sudo /home/ubuntu/pisa/ccp4-6.5/./BINARY.setup");
system("source /home/ubuntu/pisa/ccp4-6.5/bin/ccp4.setup-sh");


open (pdbFilesList, '/home/ubuntu/Perl-code/pdb.txt');
while (<pdbFilesList>) {
    chomp;
    ($name, $file) = split("\t");
    
    system("pisa $name -analyse $file");
    system("pisa $name -list assem >  /home/ubuntu/assemblises/assem_$name");
    system("pisa $name -list interf > /home/ubuntu/interfaces/interf_$name");
    system("pisa $name -xml assem > /home/ubuntu/assmebliesXML/assem_$name.xml");
    system("pisa $name -xml interf > /home/ubuntu/interfacesXML/interf_$name.xml");
    
}
#$x . ' ' . $y;



close (pdbFilesList);


#system("pisa 1e94 -list assem > result_assem_1e94");





#system("perl -ne 'if ($. == 10) {print;exit}' result_assem_1e94  >> stoichiometry1");
#system("perl -ne 'if ($. == 10) {print;exit}' result_assem_1rfq  >> stoichiometry2");







