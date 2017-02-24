<!DOCTYPE html>
<html>
<head>
 
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  
  <title>${forms}</title>

</head>
<body>

<div class="text-center">
<h1>Add an item</h1>
</div>


<div class="row jumbotron">
  <div class="col-md-4"></div>
  <div class="col-md-4">
    

<form method = "post" action="/formFieldWBootstrap">
  <div class="form-group">
    <label for="exampleInputItem1">Name of Item</label>
    <input type="nameofitem" name="Item1" class="form-control" id="InputItemName" placeholder="Item">
  </div>
  <div class="form-group">
    <label for="exampleInputDetails1">Additional Details</label>
    <input type="details" name="Item1Details" class="form-control" id="InputItemDetails" placeholder="Details">
  </div>
 
  <button type="submit" class="btn btn-default">Submit</button>
</form>


  </div>
  <div class="col-md-4"></div>

</body>
</html>