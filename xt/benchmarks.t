#!perl

use strict;
use warnings;
use Benchmark;

print "rare corner-case: extremely short string, only a '-' \n";
timethese(1_000_000, {
    two => sub {
	my $text = '-';
	if(length($text) > 1){
		$text =~ s/^-+//;
		$text =~ s/-+$//;
	}
    },
    one => sub {
	my $text = '-';
	$text =~ s/^-?(.+?)-?$/$1/;
    },
});


print "common-case: longer string \n";
timethese(1_000_000, {
    two => sub {
	my $text = '-a-test';
	if(length($text) > 1){
		$text =~ s/^-+//;
		$text =~ s/-+$//;
	}
    },
    one => sub {
	my $text = '-';
	$text =~ s/^-?(.+?)-?$/$1/;
    },
});

print "common-case: longer string, minus on both ends \n";
timethese(1_000_000, {
    two => sub {
	my $text = '-a-test-case-';
	if(length($text) > 1){
		$text =~ s/^-+//;
		$text =~ s/-+$//;
	}
    },
    one => sub {
	my $text = '-';
	$text =~ s/^-?(.+?)-?$/$1/;
    },
});

