<#include "header.ftl">

<body>
<#include "navbar.ftl">


  <div class="text-center">
    <h1>You are about to delete: ${item}</h1>
  </div>

<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    
<h2>Item code: ${item.code()}</h2>
<h2>Item Name: ${item.name()}</h2>

<form  method="post" action="/delete">
<input type="hidden" name="code" class="form-control" id="item_code" value="${item.code()}">
    <button type="submit" class="btn btn-default">
      Delete
    </button>
</form>



<div class="btn-group" role="group" aria-label="...">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View items list
      </a>
    </button>
</div>

<a href="/list">Cancel</a>

  </div>
  <div class="col-md-4"></div>

</div>

</body>
  

