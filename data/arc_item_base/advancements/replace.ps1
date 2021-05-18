Get-ChildItem "C:UsersfatiwDesktopnotepad-files*.txt" -Recurse | ForEach {
(Get-Content $_ | ForEach { $_ -replace "Post", "Article" }) |
Set-Content $_
}