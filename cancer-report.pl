#!/usr/bin/perl -w

use strict;
use WWW::Mechanize;
use Crypt::SSLeay;

$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;
my $url = 'https://cris.hpa.gov.tw/pagepub/Home.aspx?itemNo=cr.q.50';
my $mech = WWW::Mechanize->new(noproxy => 1);
$mech->get( $url );
$mech->submit_form(
	form_name => 'form1',
	fields      => { WR1_1_Q_SubjectGroupII  => 'CRCG_5A3MCTFT4' },
	button		=> 'WR1_1$btnNext'
);
$mech->submit_form(
	form_name => 'form1',
	fields      => { WR1_1_Q_SubjectMemberII_0  => 'M_所有癌症' },
	button		=> 'WR1_1$btnNext'
);
$mech->submit_form(
	form_name => 'form1',
	fields      => { WR1_1_Q_DataII  => '1', WR1_1_Q_PointII => 'A', WR1_1_Q_SexII => '0' },
	button		=> 'WR1_1$btnNext'
);
$mech->submit_form(
	form_name => 'form1',
	fields      => { WR1_1_Q_YearBeginII  => '1979', WR1_1_Q_YearEndII => '2009' },
	button		=> 'WR1_1$btnNext'
);
$mech->submit_form(
	form_name => 'form1',
	fields      => { 'WR1_1$Q_AgeKind'  => 'Q_AgeKindAll' },
	button		=> 'WR1_1$btnNext'
);
$mech->submit_form(
	form_name => 'form1',
	fields      => { 'WR1_1_QP_AreaRegionII'  => 'ROOT' },
	button		=> 'WR1_1$btnNext'
);
$mech->submit_form(
	form_name => 'form1',
	fields      => { 'WR1_1_Q_ReportKindII'  => 'T', 'WR1_1_Q_ChartKindII' => 'B' },
	button		=> 'WR1_1$cmdQuery'
);

print $mech->content() or die 'dir';
