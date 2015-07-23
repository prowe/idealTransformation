<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="recipes" class="container">
	<h2>Recipes</h2>

	<div class="row">
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<div class="caption">
					<h3>Mashed Cauliflower</h3>
				</div>
				<img src="resources/images/recipes/cauliflower.jpg" />
			</div>
		</div>
	</div>


	<script type="text/javascript">
		$(function() {
			function toListItems(vals) {
				return $.map(vals, function(obj, index) {
					return $('<li />', {
						html : obj
					});
				})
			}

			$.ajax({
				url : 'resources/recipes.json',
				success : function(data, textStatus, jxXHR) {
					var container = $('#recipes');
					console.log(data);
					$.each(data, function(index, item) {
						var recipeDiv = $('<div />', {
							class : "recipe"
						});

						$('<h4 />', {
							html : item.title
						}).appendTo(recipeDiv);

						if (item.ingredients) {
							$('<ul />', {
								class : "ingredients list-unstyled",
								html : toListItems(item.ingredients)
							}).appendTo(recipeDiv);
						}

						if (item.instructions) {
							$('<ol />', {
								class : "instructions",
								html : toListItems(item.instructions)
							}).appendTo(recipeDiv);
						}

						$('<div />', {
							class : "col-md-4 col-sm-6",
							html : recipeDiv
						}).appendTo(container);
					});
				}
			});
		});
	</script>
</div>