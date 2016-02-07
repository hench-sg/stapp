<!DOCTYPE html>
<html lang="en">
	<head>
		<title>{%=o.htmlWebpackPlugin.options.title || 'App'%}</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		{% if (o.htmlWebpackPlugin.files.favicon) { %}
		<link rel="shortcut icon" href="{%=o.htmlWebpackPlugin.files.favicon%}">
		{% } %}

		{% for (var css in o.htmlWebpackPlugin.files.css) { %}
		<link href="{%=o.htmlWebpackPlugin.files.css[css] %}" rel="stylesheet">
		{% } %}
	</head>
	<body>
		<div id="stapp"></div>
		{% for (var chunk in o.htmlWebpackPlugin.files.chunks) { %}
		<script type="text/javascript" src="{%=o.htmlWebpackPlugin.files.chunks[chunk].entry%}"></script>
		{% } %}
	</body>
</html>
