<#include "header.ftl">
<#include "head.ftl">
<body>
<#include "navbar.ftl">

<br>
<br>

<div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
  	
	<table class="table table-striped">
		<thead>
			<tr>
			<th>Item Code</th>
			<th>Name</th>
			</tr>
		</thead>
		<tbody>
	 		<#list inventory as item>
				<tr>
					<td>${item.code}</td>
					<td>${item.name}</td>
					<td>
  							<button type="submit" class="btn btn-default">
  							<a href="/show/${item.code}">Show</a>	
  							</button>
						</div>
					</td>
					<td>
  							<button type="submit" class="btn btn-default">
  							<a href="/delete/${item.code}">Delete</a>	
  							</button>
					</td>
					<td>
  							<button type="submit" class="btn btn-default">
  							<a href="/edit/${item.code}">Edit</a>	
  							</button>
					</td>
				</tr>

			</#list>
		</tbody>	
	</table>
		<a href="/add">+ Add an Item</a>
  </div>

  <div class="col-md-2"></div>
</div>

</body>
