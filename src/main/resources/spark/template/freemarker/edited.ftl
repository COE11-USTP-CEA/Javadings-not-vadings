<#include "header.ftl">
<body>
<#include "navbar.ftl">
<div class="text-center">
<h2>Item updated!</h2>
</div>


<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
<h3>New Item name: ${item.name}</h3>    

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
  <div class="col-md-4"> 	
</div>

</body>