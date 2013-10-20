// http://www.plurk.com/p/j2j4a6  # the build with casperjs for file fownload
// http://hcchien.org/phantomjs.tgz

var casper = require('casper').create();
var fileURL = '';
casper.start('https://cris.hpa.gov.tw/pagepub/Home.aspx?itemNo=cr.q.10').thenEvaluate(function() {
	document.querySelector('input[name="WR1_2$Kind"]').setAttribute('value', 'IN_Kind3');
	document.querySelector('input[name="WR1_2$cmdEnter"]').click();
}); 
casper.then(function() {
	this.fill('form#form1', {
			"WR1_1_Q_DataII":	 '1',
			"WR1_1_Q_PointII": 	 'A',
			"WR1_1_Q_SexII":	 '1',
			"WR1_1_ctl225_1":	 true,
			"WR1_1_ctl140_0":	 true
		}, true);
	});
casper.thenEvaluate(function() {
	document.querySelector("input[id='WR1_1_btnNext']").click();
});
casper.then(function() {
	this.fill('form#form1', {
			"WR1_1_Q_YearBeginII":	 '1979',
			"WR1_1_Q_YearEndII": 	 '2009',
			'WR1_1$btnNext':		 '下一步&gt;'
		}, true);
	});
casper.thenEvaluate(function() {
	document.querySelector("input[id='WR1_1_btnNext']").click();
});
casper.thenEvaluate(function() {
	document.querySelector("input[id='WR1_1_btnNext']").click();
});
casper.then(function() {
	this.fill('form#form1', {
			'WR1_1$Q_AreaGrp':	 'Q_AreaTown',
			"WR1_1_ctl115_5":	 true
		}, true);
	});
casper.thenEvaluate(function() {
	document.querySelector("input[id='WR1_1_btnNext']").click();
});
casper.then(function() {
	this.fill('form#form1', {
			'WR1_1_Q_ReportKindII':	 'T',
			"WR1_1_Q_ChartKindII":	'B' 
		}, true);
	});
casper.page.onResourceReceived = function(response) {
    console.log("I got a response body with size: " + response.bodySize);
    console.log("I got a response body with buffer: " + typeof response.body);
};
casper.thenEvaluate(function() {
	document.querySelector("input[id='WR1_1_cmdQuery']").click();
});
casper.thenEvaluate(function() {
	var report = document.getElementById('WR1_1_ReportViewer1_ctl01_ctl05_ctl00');
	var report_options = report.getElementsByTagName('option');
	report_options[1].setAttribute('selected', 'selected');
});
casper.thenEvaluate(function() {
	document.querySelector("a[id='WR1_1_ReportViewer1_ctl01_ctl05_ctl01']").click();
});
casper.page.onFileDownload = function() { return ('foo.xml') };	




/*
casper.thenEvaluate(function() {
	document.querySelector("input[id='WR1_1_btnNext']").click();
});

casper.then(function () {
	this.fill('form#form1', { 'input[name="WR1_1_Q_SubjectMemberII_0"]': 'M_所有癌症' }, true); 
});
casper.then(function () {
	this.fill('form#form1', { 	'input[name="WR1_1_Q_DataII"]': '1',
								'input[name="WR1_1_Q_PointII"]': 'A',
								'input[name="WR1_1_Q_SexII"]': '0' }, true); 
});
casper.then(function () {
	this.fill('form#form1', { 	'input[name="WR1_1_Q_YearBeginII"]': '1979',
								'input[name="WR1_1_Q_YearEndII"]': '2009' }, true); 
});
casper.then(function () {
	this.fill('form#form1', { 	'input[name="WR1_1$Q_AgeKind"]': 'Q_AgeKindAll' }, true); 
});
casper.then(function () {
	this.fill('form#form1', { 	'input[name="WR1_1_QP_AreaRegionII"]': 'ROOT' }, true); 
});
casper.then(function () {
	this.fill('form#form1', { 	'input[name="WR1_1_Q_ReportKindII"]': 'T',
								'input[name="WR1_1_Q_ChartKindII"]': 'B' }, true); 
});
*/
casper.then(function () {
	this.echo(this.getHTML());
});
	
casper.run();


