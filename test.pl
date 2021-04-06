#! /usr/bin/env perl

use RiveScript;

my $rs = new RiveScript (utf8 => '1');

$rs->loadDirectory ("./brain");

$rs->sortReplies;

while (1) {
	print "Yo> ";
	chomp (my $msg = <STDIN>);

	if ($msg eq "/quit") {
		exit();
	}

	my $reply = $rs->reply ('localuser', $msg);
	print "Bot> $reply\n";
}