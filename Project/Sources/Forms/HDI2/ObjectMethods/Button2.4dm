var $path : Text
$Path:=Get 4D folder:C485(Data folder:K5:33)+"sample.4wp"

[SAMPLES:1]WPsample:5:=WP Import document:C1318($Path)
