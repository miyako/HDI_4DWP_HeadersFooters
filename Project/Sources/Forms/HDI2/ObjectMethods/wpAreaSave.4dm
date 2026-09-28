C_TEXT:C284($path)

$Path:=Get 4D folder:C485(Data folder:K5:33)+"sample.4wp"
WP EXPORT DOCUMENT:C1337(WParea; $Path; wk 4wp:K81:4)


SAVE RECORD:C53([SAMPLES:1])
