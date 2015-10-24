<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="includes/headSection.jsp" %>
<script type="text/javascript" src="resources/js/jquery.highlight.js"></script>
<script type="text/javascript" src="resources/js/jquery.typewatch.js"></script>
	
<title>Ideal Transformation</title>
<style type="text/css">
	/* start page specific */
	.recipe {
		
	}
	
	.recipe .thumbnail {
		height: 260px;
		cursor: pointer;
		margin-bottom: 15px;
	}
	.recipe img {
		width: 100%;
		max-height: 175px;
	}
	
	.recipe h4 {
		height: 2em;
	}
	
	#recipeSearch {
		margin-top: 20px;
		margin-bottom: 10px;
		margin-right: 15px;
	}
	.highlight {
		background-color: #cc9900;
	}

	#recipeModal .recipe-modal-img-container {
		text-align: center;
	}
	#recipeModal .recipe-modal-img-container img {
		max-width: 100%;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="includes/headerBanner.jsp" %>
		<%@ include file="includes/nav.jsp" %>
	</header>
	<main class="row">
	   	<h2 class="col-xs-12 col-md-9">Recipes</h2>
	    <div class="col-xs-12 col-md-3 pull-right">
	    	<input id="recipeSearch" class="form-control" type="search" placeholder="Search Recipes" />
	    </div>

		<c:forEach items="${recipes}" var="recipe">
			<div class="col-xs-12 col-sm-4 col-md-3 recipe" data-recipePath="${pageContext.request.contextPath}/recipes/${recipe.path}" 
				data-recipeTitle='<c:out value="${recipe.title}" />' >
				<div class="thumbnail" >
					<img src="${pageContext.request.contextPath}/recipes/${recipe.img}" />
					<div class="caption">
						<h4><c:out value="${recipe.title}" /></h4>
					</div>
				</div>
			</div>
		</c:forEach>
	</main>
	<%@ include file="includes/footer.jsp" %>
	
	<div class="modal fade" id="recipeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title"></h3>
				</div>
				<div class="modal-body">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<script type="text/javascript">
		$('.recipe').click(function(e){
			var recipeDiv = $(this)
			$('#recipeModal .modal-title').html(recipeDiv.attr('data-recipeTitle'));
			$('#recipeModal .modal-body').load(recipeDiv.attr('data-recipePath'), function(){
				$('#recipeModal').modal();
			});
		});
		
		$('#recipeSearch').typeWatch({
			wait: 250,
			callback: function(term) {
				var lowercaseTerm = term.toLowerCase();
				$('.recipe').each(function(){
					var recipeDiv = $(this);
					recipeDiv.unhighlight();
					var recipeTitle = $(this).attr('data-recipeTitle').toLowerCase();
					if(term == '' || recipeTitle.indexOf(term.toLowerCase()) >= 0){
						recipeDiv.show();
						recipeDiv.highlight(term);
					}else{
						recipeDiv.hide();
					}
				});
			}
		});
	</script>
</body>
</html>