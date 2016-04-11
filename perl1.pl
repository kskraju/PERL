#
# Hello World first program in Per
#
print "Hello World!\n";

print ("Hello Workd with in Paranthisis");

print "\n";

print "Single line Comment";
# This is the Single line comment 

print "\n";

print "Multiline Comment in perl";
=begin comment
This is the Test multi line comment
It will check the comment and compiler until the next =cut is encountered
=cut

print "Single and Double Quotes Example \n";

print 'Hello World with Single Quote\n';

print "\n";

print "Hello World with Double Quote\n";
print "\n";
$a = 10;
print "print value of = $a\n";
print 'print value of = $a\n';

print "\n";
$var = <<"EOF";
This is the Syntax forthe here document with doubel quotes and it will continue until to find the EOF in the first line. This case of double quotes, it interpolate the variable a = $a
EOF
print "$var\n";

print "\n";

$var1 = <<'EOF';
This the the syntact forthe the here document with single quotes. it won't interpolate the variable a = $a
EOF
print '$var1\n';
print "\n";



$result = "This is \"number\"";
print "$result\n";
print "\$result\n";

print "------- String Literals Example --------\n";

$str = "Welcome to the \nwww.google.com!";
print "$str\n";

$str = 'Welcome to the \nwww.google.com!';
print "$str\n";

$str = "Welcome to the www.google.com!";
print "$str\n";

$str = 'Welcome to the www.google.com!';
print "$str\n";

$str = "\lWelcome to the www.google.com!";
print "$str\n";

$str = "\uwelcome to the www.google.com!";
print "$str\n";

$str = "\Uwelcome to\E the www.google.com!";
print "$str\n";

$str = "\LWelcome to the www.google.com!";
print "$str\n";

$str = "\LWelcome to\E THE www.google.com!";
print "$str\n";

print "------- String Literals Example --------\n";

print "------- Scalar Data Type Example --------\n";
# A scalar is a single unit of data.

$age = 25;             # An integer assignment
$name = "John Paul";   # A string 
$salary = 1445.50;     # A floating point

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

print "------- Scalar Data Type Example --------\n";

print "------- Array Data Type Example --------\n";
@ages = (10,20,30,40);
@names = ("AAA", "BBB","CCC","DDD");
print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$ages[3] = $ages[3]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";
print "\$names[3] = $names[3]\n";

print "------- Array Data Type Example --------\n";


print "------- Hash Data Type Example with Key value pair --------\n";
%data = ('AAA',10, 'BBB',20,'CCC',30, 'DDD',40);

print "\$data{'AAA'} = $data{'AAA'}\n";
print "\$data{'BBB'} = $data{'BBB'}\n";
print "\$data{'CCC'} = $data{'CCC'}\n";
print "\$data{'DDD'} = $data{'DDD'}\n";


%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

%data1 = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
%data2 = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
%data3 = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);

print "\$data1{'Johan Paul'} = $data1{'John Paul'}\n";
print "\$data1{'Lisa'} = $data1{'Lisa'}\n";
print "\$data1{'Kumar'} = $data1{'Kumar'}\n";

print "<<<<<<<<<<<<<<< Extracting elements from Hash <<<<<<<<<<<<<<<<<<<<<<<<\n";
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@names = keys %data;
@values = values %data;

print "$names[0] -- $values[0]\n";
print "$names[1] -- $values[1]\n";
print "$names[2] -- $values[2]\n";

%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
if( exists($data{'Lisa'} ) ){
   print "Lisa is $data{'Lisa'} years old\n";
}
else{
   print "I don't know age of Lisa\n";
}

%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";

@values = values %data;
$size = @values;
print "2 - Hash size:  is $size\n";

print "...........Adding and Removing elements from Hash...................\n";

%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";

# adding an element to the hash;
$data{'Ali'} = 55;
@keys = keys %data;
$size = @keys;
print "2 - Hash size:  is $size\n";

# delete the same element from the hash;
delete $data{'Ali'};
@keys = keys %data;
$size = @keys;
print "3 - Hash size:  is $size\n";


print "------- Hash Data Type Example with Key value pair --------\n";

print "------- Variable Context Example Scalar, Array, Hash etc --------\n";
@names = ('John Paul', 'Lisa', 'Kumar');

@copy = @names;
$size = @names;

print "Given names are : @copy\n";
print "Number of names are : $size\n";
print "------- Variable Context Example Scalar, Array, Hash etc --------\n";

print "********** Scalar Operations **************\n";
$str = "hello" . "world";       # Concatenates strings.
$num = 5 + 10;                  # adds two numbers.
$mul = 4 * 5;                   # multiplies two numbers.
$mix = $str . $num;             # concatenates string and number.

print "str = $str\n";
print "num = $num\n";
print "mul = $mul\n";
print "mix = $mix\n";
print "********** Scalar Operations **************\n";

print "********** V-String Operations **************\n";

$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110; 

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

print "********** V-String Operations **************\n";

print "********** Special Literals Operations **************\n";
print "File name ".__FILE__ . "\n";
print "Line Number ".__LINE__ ."\n";
print "Package ".__PACKAGE__ ."\n";

# they can not be interpolated
print "__FILE__ __LINE__ __PACKAGE__\n";

print "********** Special Literals Operations **************\n";

print "********** Array Data Type Creation **************\n";
# Arrays can be created in two ways 1. With in Paranthesis and 2. by using qw/ 
@days1 = ('Monday','Tuesday','Wednesday', 'Thursday','Friday','Saturday','Sunday');

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

print "$days[0]  =  $days1[0]\n";
print "$days[1]  =  $days1[1]\n";
print "$days[2]	 =  $days1[2]\n";
print "$days[3]  =  $days1[3]\n";
print "$days[4]  =  $days1[4]\n";
print "$days[5]  =  $days1[5]\n";
print "$days[6]  =  $days1[6]\n";


@var1_10 = (1..10);
@var20_30 = (20..30);
@vara_z = (a..z);

print "@var1_10\n";
print "@var20_30\n";
print "@vara_z\n";

print " ################### Array Operations #####################\n";

# create a simple array
@coins = ("Quarter","Dime","Nickel");
print "1. \@coins  = @coins\n";

# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins  = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins  = @coins\n";

# remove one element from the last of the array.
pop(@coins);
print "4. \@coins  = @coins\n";

# remove one element from the beginning of the array.
shift(@coins);
print "5. \@coins  = @coins\n";

print " ************ slicing array elements *************\n";
@days = qw/Mon Tue Wed Thu Fri Sat Sun/;
@weekdays = @days[3,4,5];
@weekdays1 = @days[3..6];
print "@weekdays\n";
print "@weekdays1\n";

print "************* replacing array elements **************\n";
@nums = (1..20);
print "Before - @nums\n";
splice(@nums, 5, 5, 21..25); 
print "After - @nums\n";

print "$$$$$$$$$$$ Transform Strings to arrays $$$$$$$$$$$$$$$$$$$\n";

# define Strings
$var_string = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

# transform above strings into arrays.
@string = split('-', $var_string);
@names  = split(',', $var_names);

print "$string[3]\n";  # This will print Roses
print "$names[4]\n";   # This will print Michael

print "@@@@@@@@@@@@@@ Sorting Array @@@@@@@@@@@@@@@@@2\n";

# define an array
@foods = qw(pizza steak chicken burgers);
print "Before: @foods\n";
#foods[4] = 'TacoBell';

# sort this array
@foods = sort(@foods);
print "After: @foods\n";


print " %%%%%%%%% Special $[ variable %%%%%%%%%%%%%%%%%\n";

# We have a special variable, which is written as $[. This special variable is a scalar containing the first index of all arrays. 
# Because Perl arrays have zero-based indexing, $[ will almost always be 0

# define an array
@foods = qw(pizza steak chicken burgers);
print "Foods: @foods\n";

# Let's reset first index of all the arrays.
$[ = 1;

print "Food at \@foods[1]: $foods[1]\n";
print "Food at \@foods[2]: $foods[2]\n";

print "Selecting  Elements from the List ::::::\n";
$[ = 0; 
$var = (5,4,3,2,1)[4];
print "value of var = $var\n";

@list = (5,4,3,2,1)[1..3];
print "value of list = @list\n";



print "!!!!!!!!!!!!!!1 IF Else !!!!!!!!!!!!!!!!!!!!!\n";

$name = "raju";
$age = "32";

$status = ($age < 30)? "Age is under 30" : "Age is above 30";

print "$name is -- $status \n";

$datestring = localtime();
$gmtimestr = gmtime();
print "Current time is $datestring \n";
print "Current GMT time is $gmtimestr \n";