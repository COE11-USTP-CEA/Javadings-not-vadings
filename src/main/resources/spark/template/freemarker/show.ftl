<#include "head.ftl">
<#include "header.ftl">

<body>

<#include "navbar.ftl">

<div class="container">
<div class="row jumbotron">


  <div class="col-md-4"></div>
  <div class="col-md-4">
    
<h2>Item code:<h3>${item.code}</h3></h2>
<br>
<h2>Item Name:<h3>${item.name}</h3></h2>
<br>

<div class="btn-group" role="group">
  
    <button type="button" class="btn btn-default">
      <a href="/">
        Back to Homepage
      </a>
    </button>
</div>

<div class="btn-group" role="group">
  
    <button type="button" class="btn btn-default">
      <a href="/list">
        View items list
      </a>
    </button>
</div>


  </div>
  <div class="col-md-4"></div>

</div>
</div>

</body>
</html>
