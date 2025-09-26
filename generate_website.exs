Mix.install([:mdex])

IO.puts("Generating Website")

mark_down = File.read!("website.md")

md_doc = MDEx.parse_document!(mark_down)

html_fragment = MDEx.to_html!(md_doc)

html_header = """
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Wolf 359</title>
<meta name="description" content="Homepage of Wolf 359 B.V.B.A" />
<meta name="keywords" content="Wolf 359, B.V., BV, management, consultancy, software development, web applications, multimedia, real estate" />
<meta name="author" content="Wolf 359" />
<meta name="Copyright" content="Copyright (c) 2005-2025 Wolf 359 B.V. All Rights Reserved." />
<link rel="stylesheet" href="style.css">
</head>
<body>
"""

html_footer = """
</body>
</html>
"""

File.write!("index.html", [html_header, html_fragment, html_footer])
