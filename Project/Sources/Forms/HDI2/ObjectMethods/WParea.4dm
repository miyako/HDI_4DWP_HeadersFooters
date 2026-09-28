C_LONGINT:C283($page)

Case of 
		
	: (Form event code:C388=On Selection Change:K2:29)
		
		$page:=FORM Get current page:C276
		
		Case of 
				
			: ($page=3)
				
				HDI_GetHeader
				HDI_GetBody
				HDI_GetFooter
				
			: ($page=4)
				HDI_GetFrame
				
		End case 
		
End case 