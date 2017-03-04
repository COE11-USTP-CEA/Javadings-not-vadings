<!DOCTYPE html>
<html>
<head>
	<title>${title}</title>
</head>
<body>
<h2>
 <#list items as item>
 <p>${item}</p>
 <p>${item.name}</p>
 <p>${item.code}</p>
 </#list>
</h2>

<p>	found item: ${founditem}</p>
<p>	          : ${founditem.name}</p>
<p>	          : ${founditem.code}</p>

</body>
</html>