#!/usr/local/bin/perl

my @data = (1, 2);
my @point = ('A', 'B', 'C', 'D');
my @sex = (0, 1, 2, 3);
my @type = qw/WR1_1$ctl138 WR1_1$ctl143 WR1_1$ctl148 WR1_1$ctl153 WR1_1$ctl158 WR1_1$ctl163 WR1_1$ctl168 WR1_1$ctl173 WR1_1$ctl178 WR1_1$ctl183 WR1_1$ctl188 WR1_1$ctl193 WR1_1$ctl198 WR1_1$ctl203 WR1_1$ctl208 WR1_1$ctl213 WR1_1$ctl218 WR1_1$ctl223 WR1_1$ctl228 WR1_1$ctl233 WR1_1$ctl238/;
my @dist;
push @dist, "WR1_1_ctl10_$_" for (0..28);
push @dist, "WR1_1_ctl15_$_" for (0..19);
push @dist, "WR1_1_ctl20_$_" for (0..6);
push @dist, "WR1_1_ctl25_$_" for (0..12);
push @dist, "WR1_1_ctl30_$_" for (0..14);
push @dist, "WR1_1_ctl35_$_" for (0..2);
push @dist, "WR1_1_ctl40_$_" for (0..17);
push @dist, "WR1_1_ctl45_$_" for (0..20);
push @dist, "WR1_1_ctl50_$_" for (0..7);
push @dist, "WR1_1_ctl55_$_" for (0..12);
push @dist, "WR1_1_ctl60_$_" for (0..25);
push @dist, "WR1_1_ctl65_$_" for (0..19);
push @dist, "WR1_1_ctl70_$_" for (0..18);
push @dist, "WR1_1_ctl75_$_" for (0..1);
push @dist, "WR1_1_ctl80_$_" for (0..30);
push @dist, "WR1_1_ctl85_$_" for (0..6);
push @dist, "WR1_1_ctl90_$_" for (0..27);
push @dist, "WR1_1_ctl95_$_" for (0..10);
push @dist, "WR1_1_ctl100_$_" for (0..32);
push @dist, "WR1_1_ctl105_$_" for (0..11);
push @dist, "WR1_1_ctl110_$_" for (0..12);
push @dist, "WR1_1_ctl115_$_" for (0..15);
push @dist, "WR1_1_ctl120_$_" for (0..5);
push @dist, "WR1_1_ctl125_$_" for (0..5);
push @dist, "WR1_1_ctl130_$_" for (0..3);
push @dist, "WR1_1_ctl135_$_" for (0..8);


for my $t (@type) {
	for my $p (@point) {
		for my $s (@sex) {
			for my $d (@data) {
				for my $di (@dist) {
					my $cmd = "casperjs --ignore-ssl-errors=true tree.js --kind=$d --point=$p --sex=$s --type='".$t."' --dist=$di &";
					print "$cmd\n";
					`$cmd`;
					sleep 5;
				}
			}
		}
	}
}

