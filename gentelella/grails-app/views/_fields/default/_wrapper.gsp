
<div class="form-group">
  <g:if test="${type == String}">
      <label for="${property}">${label}</label>
      <input type="text" class="form-control" name="${property}" value="${value}"/>
  </g:if>
  <g:if test="${type == boolean}">
     <label>
       <g:checkBox name="${property}" value="${value}"/>
       ${label}
     </label>

  </g:if>
  <g:if test="${type != boolean && type != String}">
    <label for="${property}">${label}</label>
    ${widget}
  </g:if>



</div>
