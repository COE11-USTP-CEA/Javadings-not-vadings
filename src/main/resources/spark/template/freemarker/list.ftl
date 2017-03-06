<!DOCTYPE html>
<html>
<head>
	<title>${title}</title>
</head>
<body>
<h5>
 <#list items as item>
 <p>${item}</p>
 <p>${item.name}</p>
 <p>${item.code}</p>
 <p></p>
 </#list>
</h5>

</body>
</html>