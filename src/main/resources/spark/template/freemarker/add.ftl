
<#include "header.ftl">

<body>

<#include "navbar.ftl">

<div class="container">
  


<div class="row jumbotron">
  <div class="text-center">
    <h1>Add an item</h1>
  </div>


<div class="col-md-4"></div>
  <div class="col-md-4">
    

  <form method = "post" action="/add">
    <div class="form-group">
      <label for="exampleInputCode">Item Code</label>
      <input type="code" name="code" class="form-control" id="item_code" placeholder="item code">
    </div>
    <div class="form-group">
      <label for="exampleInputName">Item Name</label>
      <input type="name" name="name" class="form-control" id="item_name" placeholder="item name">
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
