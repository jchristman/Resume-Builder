.\build.bat

$in = $Args[0]
Get-Content $Args[1] | ForEach-Object {
	$companyName = $_
	$companyNameNoSlash = $companyName.replace('\','')
    cat $in | %{$_ -creplace "COMPANYNAME",$companyName} > Resume.tex
	.\win-recompile.bat
	$out = '.\Final Resumes\' + $companyNameNoSlash + '-Resume.pdf'
	mv -Force .\Resume.pdf $out
}