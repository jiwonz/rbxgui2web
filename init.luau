local Net = require("@lune/net")

Net.serve(3000, function(data)
	if data.method == "GET" then
		if data.path == "/" then
			return {
				status = 200,
				body = [[
				<!DOCTYPE html>
				<html lang="en">
				<head>
					<meta charset="UTF-8" />
					<meta name="viewport" content="width=device-width, initial-scale=1.0" />
					<title>Test</title>
				</head>
				<body>
					<div id="root"></div>
				</body>
				</html>
				]]
			}
		end
	end
	return {
		status = 404,
		body = "404 Page not found"
	}
end)
