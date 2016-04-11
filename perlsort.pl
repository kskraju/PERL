#!/usr/bin/perl
use strict;
use warnings;

print "Hello, World...\n";

my @nums = sort qw/1 30 40 38 2 43 /;
print "@nums\n";

my @numsArray = sort { $a <=> $b } qw/1 11 2 22 10 100/;
print "@numsArray\n";


my @products = (
   {
      name => 'iPhone',
      price => 600,
      discount => 0.5,     
   },
   {
      name => 'Nexus',
      price => 299,
      discount => 0.1,     
   },
   {
      name => 'Samsung Galaxy',
      price => 600,
      discount => 0.8,     
   }
);
 
@products = sort { 
   $a->{price} <=> $b->{price} || $b->{discount} <=> $a->{discount}
 } @products;
 
foreach my $p (@products){
   printf "%-15s %2d USD %2.1f\n" => @{$p}{qw(name price discount)};
}

print "**** Example IO Open, Read and Write operations using FileHandle **** \n";
my $filename = 'C:\Strawberry-Perl\test.txt';
open(FH, '<', $filename) or die $!;
print("File $filename opened successfully!\n");
while(<FH>){
   print $_;
}
close(FH);

print "***** Write to the File ****\n";

my $str = <<END;
This is the sample text
that is used to write to file
END
 
my $filename = 'C:\Strawberry-Perl\test1.txt';
open(FH, '>', $filename) or die $!;
print FH $str;
close(FH);
print "Writing to file successfully!\n";


print "***** Read and Write to the different file ****";

my $src = 'C:\Strawberry-Perl\test1.txt';
my $des = 'C:\Strawberry-Perl\test2.txt';
 
# open source file for reading
open(SRC,'<',$src) or die $!;
 
# open destination file for writing
open(DES,'>',$des) or die $!;
 
print("copying content from $src to $des\n");
 
while (<SRC>) {
	print DES $_
}
 
# always close the filehandles
close(SRC);
close(DES);
 
print "File content copied successfully!\n";