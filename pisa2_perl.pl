    #!/usr/bin/perl

#use strict;
#use warnings;

system("source /Applications/ccp4-6.5/bin/ccp4.setup-sh");


open (pdbFilesList, 'pdb.txt');
while (<pdbFilesList>) {
    chomp;
    ($name, $file) = split("\t");
    
    system("pisa $name -analyse $file");
    system("pisa $name -list assem >  assemblises/assem_$name");
    system("pisa $name -list interf > interfaces/interf_$name");
    system("pisa $name -xml assem > assmebliesXML/assem_$name.xml");
    system("pisa $name -xml interf > interfacesXML/interf_$name.xml");
    
}
#$x . ' ' . $y;



close (pdbFilesList);


#system("pisa 1e94 -list assem > result_assem_1e94");





#system("perl -ne 'if ($. == 10) {print;exit}' result_assem_1e94  >> stoichiometry1");
#system("perl -ne 'if ($. == 10) {print;exit}' result_assem_1rfq  >> stoichiometry2");







