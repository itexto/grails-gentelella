<g:if test="${type == String}">
  <div class="form-group">
    <label><g:message code="${bean.getClass().getName()}.${property}"/></label>
    <input type="text" value="${value}" disabled class="form-control"/>
  </div>
</g:if>
<g:if test="${type == boolean}">
  <div class="form-group">
    <label>
      <g:checkBox disabled="true" value="${value}" name="${property}"/>
      ${label}
    </label>
  </div>
</g:if>
<g:if test="${type != boolean && type != String}">
  <div class="form-group">
    <label>
      <g:message code="${bean.getClass().getName()}.${property}"/>
      
     <input type="text" value="${value}" disabled class="form-control"/>
    </label>
  </div>
</g:if>
