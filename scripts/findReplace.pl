#!/usr/bin/env perl

use strict;
use warnings;
use File::Find;

# Configuration
my $directory = $ARGV[0] or die "Usage: $0 <directory> <find> <replace>\n";
my $find      = $ARGV[1] // die "Usage: $0 <directory> <find> <replace>\n";
my $replace   = $ARGV[2] // die "Usage: $0 <directory> <find> <replace>\n";

find( \&process_file, $directory );

sub process_file {
  my $path = $File::Find::name;

  # Skip directories and non-files
  return unless -f $path;

  # Read file
  open( my $fh, '<', $path ) or do {
    warn "Cannot open $path: $!\n";
    return;
  };
  my @lines = <$fh>;
  close($fh);

  # Track whether any substitution was made
  my $changed = 0;
  for my $line (@lines) {
    $changed++ if $line =~ s/\Q$find\E/$replace/g;
  }

  # Only write back if something changed
  if ($changed) {
    open( my $out, '>', $path ) or do {
      warn "Cannot write $path: $!\n";
      return;
    };
    print $out @lines;
    close($out);
    print "Updated: $path ($changed substitution(s))\n";
  }
}
