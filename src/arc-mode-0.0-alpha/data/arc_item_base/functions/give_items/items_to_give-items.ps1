
Get-ChildItem ".\*.json" -Recurse | ForEach {
(Get-Content $_ | ForEach { $_ -replace ":/give_items/", ":give_items/" }) |
Set-Content $_
}