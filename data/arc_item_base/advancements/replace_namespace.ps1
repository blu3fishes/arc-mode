Get-ChildItem ".\*.json" -Recurse | ForEach {
(Get-Content $_ | ForEach { $_ -replace "arc_itemskill", "arc_item_base" }) |
Set-Content $_
}