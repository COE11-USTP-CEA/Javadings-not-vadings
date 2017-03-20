
<#include "header.ftl">

<body>
<#include "navbar.ftl">

<div class="container">
  


<div class="row jumbotron">
  <div class="text-center">
    <h1>Edit an item</h1>
  </div>


<div class="col-md-4"></div>
  <div class="col-md-4">
    

  <form method = "post" action="/edit">
    <div class="form-group">
      <label for="exampleInputCode">Item Code: ${item.code}</label>
      <input type="hidden" name="code" class="form-control" id="item_code" placeholder="Enter new Item code" value="${item.code}">
    </div>
    <div class="form-group">
      <label for="exampleInputName">Item Name</label>
      <input type="name" name="name" class="form-control" id="item_name" placeholder="Enter new Item name" value="${item.name}">
    </div>
   
    <button type="submit" class="btn btn-default">
      Submit
    </button>
  </form>

    <a href="/"> Back to Homepage </a>
  </div>
</div>
</div>

</body>
