var $source; $rangeSource; $tempoc; $target; $rangeTarget : Object

QUERY:C277([TEMPLATES:3]; [TEMPLATES:3]Title:2="EMPTY")  // reset the final doc for HDI purpose
wp_final:=[TEMPLATES:3]WPtemplate:3


$source:=WP Get header:C1503(wp_template; 1)
$rangeSource:=WP Text range:C1341($source; wk start text:K81:165; wk end text:K81:164)
$tempoc:=WP New:C1317($rangeSource)

$target:=WP Get header:C1503(wp_final; 1)
$rangeTarget:=WP Text range:C1341($target; wk start text:K81:165; wk end text:K81:164)

WP Insert document body:C1411($rangeTarget; $tempoc; wk replace:K81:177)
