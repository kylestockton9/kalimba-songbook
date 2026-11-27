# Rebuilds docs/index.html (the live web page) from index.html (the app source).
$head = '<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>body{margin:0}</style></head><body>'
$src = [IO.File]::ReadAllText("$PSScriptRoot\index.html")
[IO.File]::WriteAllText("$PSScriptRoot\docs\index.html", "$head`n$src</body></html>`n", (New-Object Text.UTF8Encoding $false))
