//%attributes = {}
C_OBJECT:C1216($range)

UnselectAll(wk current page footer:K81:208)

Case of 
	: (rfooter0=1)
		vFooterRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1)
		
	: (rfooter1=1)
		vFooterRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1; wk first page:K81:203)
		
	: (rfooter2=1)
		vFooterRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1; wk left page:K81:204)
		
	: (rfooter3=1)
		vFooterRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1; wk right page:K81:205)
		
	: (rfooter4=1)
		$range:=WP Selection range:C1340([SAMPLES:1]WPsample:5)
		vFooterRange:=WP Get footer:C1504($range)
		
End case 


If (vFooterRange#Null:C1517)
	WP SET ATTRIBUTES:C1342(vFooterRange; wk background color:K81:20; 0x00FFFF00)  // 
	OBJECT SET VISIBLE:C603(*; "FooterAlert@"; False:C215)
Else 
	OBJECT SET VISIBLE:C603(*; "FooterAlert@"; True:C214)
End if 


