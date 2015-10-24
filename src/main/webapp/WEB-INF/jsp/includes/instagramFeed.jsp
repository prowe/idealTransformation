<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<section id="instagramFeed" class="">
	<h4>INSTAGRAM</h4>
	<p>Are you an Instagram user? Tag your low carb inspirations #idealdsm and we’ll share them here!</p>

	<div id="feedContainer" class="row" ></div>

	<div id="instagram-thumb-template" style="display: none;">
		<div class="col-xs-6 col-md-12" >
			<div class="instagram-thumbnail" >
				<a href="{{link}}" target="instagram"><img src="{{image}}"  /></a>
			</div>
		</div>
	</div>

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