<#include "header.ftl">

<body>
<#include "navbar.ftl">

<div class="text-center">
<h1>You have just added a new item ${item}</h1>
</div>


<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    
<h2>Item code: ${item.code}</h2>
<h2>Item Name: ${item.name}</h2>

<div class="btn-group" role="group" aria-label="...">
  
  	<button type="button" class="btn btn-default">
  		<a href="/">
  			Back to Homepage
  		</a>
  	</button>
</div>

<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View items list
      </a>
    </button>
</div>


  </div>
  <div class="col-md-4"></div>

</div>

</body>
