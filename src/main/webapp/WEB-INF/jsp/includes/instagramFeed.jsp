<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<section id="instagramFeed" class="container">
	<h2>Instagram Feed</h2>
	<div id="feedContainer" class="row"></div>

	<p>Are you an instragram user? Tag your favorite meals, tips and inspiration with #idealDSM and see your picture show up here.</p>

	<div id="instagram-thumb-template" style="display: none;">
		<div class="col-xs-6 col-md-3" >
			<div class="thumbnail instagram-thumbnail" >
				<a href="{{link}}" target="instagram"><img src="{{image}}"  /></a>
			</div>
		</div>
	</div>

	<!-- <script type="text/javascript">
		$(function() {
			$('#feedContainer').pongstgrm({
				accessId : '1960773837',
				accessToken : '1960773837.0cb5f76.5bdca6e7924442afa77f1124bf6c2ace',
				show: 'idealDSM',
				
			    likes: false,
			    comments: false,
			    timestamp: false,
				pager : false,
				button: "btn btn-success btn-xs btn-instagram-more"
			});
		});
	</script> -->
	
	<script type="text/javascript">
		//http://instafeedjs.com
	    var feed = new Instafeed({
	        get: 'tagged',
	        tagName: 'idealDSM',
	        clientId: '0cb5f76dd6e64cfe8e5d5b8810e0b34d',
	        target: 'feedContainer',
	        limit: 4,
	        template: $('#instagram-thumb-template').html(),
	        success: function(response){
	        	//for some reason limit is broke when = 4
	        	response.data = response.data.slice(0, 4);
	        }
	    });
	    feed.run();
	</script>
</section>