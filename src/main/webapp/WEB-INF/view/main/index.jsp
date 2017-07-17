<%@ include file="/WEB-INF/taglib/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Simple Sample</title>
  <script type="text/javascript">
  	
  	$(document).ready(function() {
  		
  	});
  	
  	function submitComment(){
  		var form = $('commentForm');
  		$.ajax( {
  	      type: "POST",
  	      url: "/board/insertComment",
  	      data: form.serialize(),
  	      success: function( response ) {
  	        alert( response );
  	      }
  	    } );
  	}
  
  </script>
</head>

<body>
	<c:forEach items="${atcList}" var="atc" varStatus="status">
      <h4><small>RECENT POSTS</small></h4>
      <hr>
      <h2>${atc.ttl}</h2>
      <h5><span class="glyphicon glyphicon-time"></span> Post by ${atc.wrtrId}, ${atc.wrtYmdt}.</h5>
      <h5><span class="label label-danger">new</span> <span class="label label-primary">news</span></h5><br>
      <p>${atc.cont}</p>
      
      <c:if test="${!status.last}">
      	<br><br>
      </c:if>
      
      <c:if test="${status.last}">
      	<hr>
		<h4>Leave a Comment:</h4>
		<form id="commentForm" name="commentForm">
			<div class="form-group">
				<textarea id="cont" class="form-control" rows="3" required></textarea>
				<input type="hidden" id="atcSeq" value="${atc.seq}"/>
			</div>
			<button type="submit" class="btn btn-success" onclick='submitComment()'>Submit</button>
		</form>
		<br>
		<br>
	  </c:if>
	  
	  <c:if test="${!empty atc.comments}">
	  <p><span class="badge">${fn:length(atc.comments)}</span> Comments:</p><br>
      
      <div class="row">
      	
      	<c:forEach items="${atc.comments}" var="cmt">
        <div class="col-sm-2 text-center">
          <img src="/resources/img/image_null_s.gif" class="img-circle" height="65" width="65" alt="Avatar">
        </div>
        <div class="col-sm-10">
          <h4>${cmt.wrtrId} <small>${cmt.wrtYmdt}</small></h4>
          <p>${cmt.cont}</p>
          <br>
        </div>
        </c:forEach>
        
      </div>
      </c:if>
      
     </c:forEach>

</body>
</html>
