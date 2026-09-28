//%attributes = {}

// remove yellow

C_LONGINT:C283($1)
C_LONGINT:C283($type)
C_LONGINT:C283($i; $start; $end)

$type:=$1

If ($type=wk current page header:K81:207)
	$start:=1
	$end:=4
Else 
	$start:=5
	$end:=8
End if 

For ($i; $start; $end)
	
	Case of 
			
			// wk header
			
		: ($i=1)
			vRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1)
			
		: ($i=2)
			vRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1; wk first page:K81:203)
			
		: ($i=3)
			vRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1; wk left page:K81:204)
			
		: ($i=4)
			vRange:=WP Get header:C1503([SAMPLES:1]WPsample:5; 1; wk right page:K81:205)
			
			// wk footer
			
		: ($i=5)
			vRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1)
			
		: ($i=6)
			vRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1; wk first page:K81:203)
			
		: ($i=7)
			vRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1; wk left page:K81:204)
			
		: ($i=8)
			vRange:=WP Get footer:C1504([SAMPLES:1]WPsample:5; 1; wk right page:K81:205)
			
	End case 
	
	
	If (Not:C34(OB Is empty:C1297(vRange)))
		WP SET ATTRIBUTES:C1342(vRange; wk background color:K81:20; 0x00FFFFFF)  // white
	Else 
		
	End if 
	
End for 



//If (False)
//  // remove selection 

//WP SET FRAME(*;"WParea";wk header)
//WP SELECT(*;"WParea";0;0)

//WP SET FRAME(*;"WParea";wk first header)
//WP SELECT(*;"WParea";0;0)
//WP SET FRAME(*;"WParea";wk first footer)
//WP SELECT(*;"WParea";0;0)

//WP SET FRAME(*;"WParea";wk left header)
//WP SELECT(*;"WParea";0;0)
//WP SET FRAME(*;"WParea";wk right header)
//WP SELECT(*;"WParea";0;0)

//WP SET FRAME(*;"WParea";wk left footer)
//WP SELECT(*;"WParea";0;0)
//WP SET FRAME(*;"WParea";wk right footer)
//WP SELECT(*;"WParea";0;0)


//WP SET FRAME(*;"WParea";wk body)

//End if 
