
print "Example for format \n";


format STUDENT = 
************************************************
@<<<<<<<<<<<<<<<<<<<<<<<<  @<<  @<<<<<<<<<<<<<<<
$name $age $address
************************************************
.

format STUDENT_TOP =
************************************************
Name			  Age    Address
************************************************
.

select(STDOUT);
$~ = STUDENT;
$^ = STUDENT_TOP;

@n = ("AAAA","BBBB","CCCC","DDDD");
@a = ("15","15","16","17");
@ad = ("Fremont","Sunnyvale","SantaClara","Milpitas");

$i = 0;
foreach(@n) {
	$name = $_;
	$age = $a[$i];
	$address = $ad[$i++];
	write;
}


format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<<  @#####.##
$name $age $salary
===================================
.

select(STDOUT);
$~ = EMPLOYEE;

@n = ("Ali", "Raza", "Jaffer");
@a  = (20,30, 40);
@s = (2000.00, 2500.00, 4000.000);

$i = 0;
foreach (@n){
   $name = $_;
   $age = $a[$i];
   $salary = $s[$i++];
   write;
}

=begin
open(DATA, "<C:\Strawberry-Perl\file.txt") or die "Couldn't open file file.txt, $!";
open(DATA, ">file.txt") or die "Couldn't open file file.txt, $!";
open(DATA, "+<file.txt") or die "Couldn't open file file.txt, $!";

while(<DATA>){
   print "$_";
}
=cut

foreach ('hickory','dickory','doc') {
   print $_;
   print "\n";
}


# Display all the files in /tmp directory.
$dir = "/tmp/*";
my @files = glob( $dir );

foreach (@files ){
   print $_ . "\n";
}

# Display all the C source files in /tmp directory.
$dir = "/tmp/*.c";
@files = glob( $dir );

foreach (@files ){
   print $_ . "\n";
}

# Display all the hidden files.
$dir = "/tmp/.*";
@files = glob( $dir );
foreach (@files ){
   print $_ . "\n";
}

# Display all the files from /tmp and /home directories.
$dir = "/tmp/* /home/*";
@files = glob( $dir );

foreach (@files ){
   print $_ . "\n";
}



$bar = "This is foo and again foo";
if ($bar =~ /foo/){
   print "First time is matching\n";
}else{
   print "First time is not matching\n";
}

$bar = "foo";
if ($bar =~ /foo/){
   print "Second time is matching\n";
}else{
   print "Second time is not matching\n";
}