//%attributes = {"invisible":true}
var $range : Object

UnselectAll(wk current page header:K81:207)

Case of 
	: (rheader0=1)
		vHeaderRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1)
		
	: (rheader1=1)
		vHeaderRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1; wk first page:K81:203)
		
	: (rheader2=1)
		vHeaderRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1; wk left page:K81:204)
		
	: (rheader3=1)
		vHeaderRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1; wk right page:K81:205)
		
	: (rheader4=1)  // based on selection -> range
		
		$range:=WP Selection range:C1340([SAMPLES:1]WPsample:5)
		vHeaderRange:=WP Get header:C1503($range)
		
End case 

If (vHeaderRange#Null:C1517)
	//WP SELECT(vRange)
	WP SET ATTRIBUTES:C1342(vHeaderRange; wk background color:K81:20; 0xFFFF)  // 
	OBJECT SET VISIBLE:C603(*; "HeaderAlert@"; False:C215)
Else 
	OBJECT SET VISIBLE:C603(*; "HeaderAlert@"; True:C214)
End if 
