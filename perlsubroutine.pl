

print "Hello, World...\n";

# Function definition
sub HelloDisplay {
	print "Hello World is displaying from the Subroutine\n";
}
# Function Call
HelloDisplay();



# Function definition
sub Average{
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_){
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

#####################################################################################
# Function definition
sub PrintHash{
   my (%hash) = @_;

   foreach my $key ( keys %hash ){
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);
print "Print the Hash values from the subroutine \n";
# Function call with hash parameter
PrintHash(%hash);
#####################################################################################

# Function call
Average(10, 20, 30);


# gloabl variable

$mystring = "Hello World";

sub PrintHello(){
	my $mystring;
	$mystring = "Hello World Raju......";
	print "Printing inside the subroutine $mystring\n";
}
PrintHello();
print "Printing outside the subroutine function $mystring\n";



#####################################################################################

# Global variable
print "\n";
print ">>>>>>>>>>> Subroutine with local variable declaration >>>>>>>>>>>>\n";
$string = "Hello, World!";

sub PrintHello{
   # Private variable for PrintHello function
   local $string;
   $string = "Hello, Perl!";
   PrintMe();
   print "Inside the function PrintHello $string\n";
}
sub PrintMe{
   print "Inside the function PrintMe $string\n";
}

# Function call
PrintHello();
print "Outside the function $string\n";


#####################################################################################
#use feature 'state'
=begin comment
sub PrintCount{
	state $count = 0;
	print "Value of the Counter is $counter\n";
	$count++;
}
for(1..10){
	PrintCount();
}
=cut


#####################################################################################

# Dereferencing

$var = 10;

# Now $r has reference to $var scalar.
$r = \$var;

# Print value available at the location stored in $r.
print "Reference type in r : ", ref($r), "\n";
print "Value of $var is : ", $$r, "\n";


@var = (1, 2, 3);
# Now $r has reference to @var array.
$r = \@var;
# Print values available at the location stored in $r.
print "Reference type in r : ", ref($r), "\n";
print "Value of @var is : ",  @$r, "\n";


%var = ('key1' => 10, 'key2' => 20);
# Now $r has reference to %var hash.
$r = \%var;
# Print values available at the location stored in $r.
print "Reference type in r : ", ref($r), "\n";
print "Value of %var is : ", %$r, "\n";

####################################################################################
# Circular References :A circular reference occurs when two references contain a reference to each other. You have to be careful while creating references 
# otherwise a circular reference can lead to memory leaks.

# References to Functions : This might happen if you need to create a signal handler so you can produce a reference to a function by preceding that 
# function name with \& and to dereference that reference you simply need to prefix reference variable using ampersand &

# Function definition
sub PrintHash{
   my (%hash) = @_;
   
   foreach $item (%hash){
      print "Item : $item\n";
   }
}
%hash = ('name' => 'Tom', 'age' => 19);

# Create a reference to above function.
$cref = \&PrintHash;

# Function call using reference.
&$cref(%hash);


