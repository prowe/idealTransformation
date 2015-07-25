<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div id="recipes" class="container">
	<h2>Recipes</h2>
	
		
</div>
<div class="modal fade" id="recipeModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title"></h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-6">
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
				recipeDiv.append($('<h4 />').text(item.title));
				var img = $('<img />',{
					src: 'resources/images/recipes/' + item.image
				});
				img.appendTo(recipeDiv);
				
				img.click(function(e){
					var modal = $('#recipeModal');
					fillModal(modal, item);
					modal.modal();
				});
				
				container.append(recipeDiv);
			});
			
		}
	});
})
</script>