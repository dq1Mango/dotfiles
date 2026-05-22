#! /usr/bin/env perl

use strict;
use warnings;

my $path = "/home/mqngo/.scripts/layout";

my $action = $ARGV[0];

open( FILE, "<$path" )
  or die "couldnt open the file lmao";

my $layout = <FILE>;

# print "read this layout: $layout\n";
my $new_layout = "";

if ( $layout eq "main" ) {
  $new_layout = "gaming";
}
elsif ( $layout eq "gaming" ) {
  $new_layout = "main";
}
else {
  $new_layout = "main";
}

close FILE;

open( FILE, ">$path" )
  or die "couldnt open the file lmao";

# print "printing this layout: $new_layout\n";

print FILE $new_layout;

system "sudo cp /home/mqngo/nixos/laptop/keyd/$layout.conf /etc/keyd/conf.conf";

system "keyd reload";

close;

