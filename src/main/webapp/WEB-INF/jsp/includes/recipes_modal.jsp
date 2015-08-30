<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div id="recipes" class="container">
   	<div class="row">
	   	<h2 class="col-md-9">Recipes</h2>
	    <div class="col-md-3 pull-right">
	    	<input id="recipeSearch" class="form-control" type="search" placeholder="Search Recipes" />
	    </div>
   	</div>
</div>
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
				<div class="row">
					<div class="col-md-6">
						<div class="recipe-modal-img-container">
							<img class="modal-recipe-image" />
						</div>
						<h4>Ingredients</h4>
						<ul class="ingredients"></ul>
					</div>
					<div class="col-md-6">
						<h4>Instructions</h4>
						<ol class="instructions"></ol>
					</div>
				</div>
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

function fillModal(modal, recipe){
	modal.find('.modal-title').text(recipe.title);
	
	modal.find('.modal-recipe-image')
		.attr('src', 'resources/images/recipes/' + recipe.image);
	
	var ingredients = modal.find('.ingredients');
	ingredients.empty();
	$.each(recipe.ingredients, function(index, item){
		ingredients.append($('<li />').text(item));
	});
	
	var instructions = modal.find('.instructions');
	instructions.empty();
	$.each(recipe.instructions, function(index, item){
		instructions.append($('<li />').text(item));
	});
}

$(function(){
	$.ajax({
		url: 'resources/recipes.json',
		success: function(data, textStatus, jxXHR){
			var container = $('#recipes');
			
			$.each(data, function(index, item) {
				var recipeDiv = $('<div />', {
					class: "col-sm-6 col-md-3 recipe",
				});
				recipeDiv.attr('data-title-lowercase', item.title.toLowerCase());
				var thumbnailDiv = $('<div class="thumbnail" />').appendTo(recipeDiv);
				
				$('<img />',{
					src: 'resources/images/recipes/' + item.image
				}).appendTo(thumbnailDiv);
				
				$('<div />', {
					"class": "caption",
					html: $('<h4 />').text(item.title)
				}).appendTo(thumbnailDiv);
				
				thumbnailDiv.click(function(e){
					var modal = $('#recipeModal');
					fillModal(modal, item);
					modal.modal();
				});
				
				container.append(recipeDiv);
			});
		}
	});
	
	$('#recipeSearch').typeWatch({
		wait: 250,
		callback: function(term) {
			var lowercaseTerm = term.toLowerCase();
			$('.recipe').each(function(){
				var recipeDiv = $(this);
				recipeDiv.unhighlight();
				if(term == '' || $(this).attr('data-title-lowercase').indexOf(term) >= 0){
					recipeDiv.show();
					recipeDiv.highlight(term);
				}else{
					recipeDiv.hide();
				}
			});
		}
	});
})
</script>