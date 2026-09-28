var $page : Integer

Case of 
		
	: (Form event code:C388=On Load:K2:1) | (Form event code:C388=On Page Change:K2:54)
		
		
		OBJECT SET VISIBLE:C603(*; "WParea@"; FORM Get current page:C276>=3)
		
		
		ALL RECORDS:C47([SAMPLES:1])
		
		ARRAY TEXT:C222(_Titles; 0)
		SELECTION TO ARRAY:C260([SAMPLES:1]Title:2; _Titles)
		
		_Titles:=1
		
		GOTO SELECTED RECORD:C245([SAMPLES:1]; _Titles)
		
		rheader0:=1
		rheader1:=0
		rheader2:=0
		rheader3:=0
		rheader4:=0
		
		rfooter0:=1
		rfooter1:=0
		rfooter2:=0
		rfooter3:=0
		rfooter4:=0
		
		rFrame0:=0
		rFrame1:=0
		rFrame2:=0
		rFrame3:=0
		rFrame4:=0
		rFrame5:=0
		rFrame6:=0
		rFrame7:=0
		rFrame8:=0
		
		//[SAMPLES]WPsample:=WP New
		
		$page:=FORM Get current page:C276
		Case of 
				
			: ($page=2)
				
				QUERY:C277([TEMPLATES:3]; [TEMPLATES:3]Title:2="EMPTY")
				wp_emptyFinal:=[TEMPLATES:3]WPtemplate:3
				wp_final:=[TEMPLATES:3]WPtemplate:3
				
				QUERY:C277([TEMPLATES:3]; [TEMPLATES:3]Title:2="TEMPLATE")
				wp_template:=[TEMPLATES:3]WPtemplate:3
				
				
			: ($page=3)
				
				HDI_Interface($page)
				
				HDI_GetHeader
				HDI_GetFooter
				
				vBodyRange:=WP Get body:C1516([SAMPLES:1]WPsample:5)
				
			: ($page=4)
				
				HDI_Interface($page)
				
				HDI_GetFrame
				
		End case 
		
		
		GOTO OBJECT:C206(*; "WParea")
		
		//SET TIMER(10)
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		OBJECT SET VISIBLE:C603(*; "FrameAlert@"; False:C215)
		
End case 

