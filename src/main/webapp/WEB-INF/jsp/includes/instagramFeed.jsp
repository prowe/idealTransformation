<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="instagramFeed" class="container">
	<h2>Instagram Feed</h2>
	<div id="feedContainer"></div>

	<script type="text/javascript">
		$(function() {
			$('#feedContainer').pongstgrm({
				accessId : '1960773837',
				accessToken : '1960773837.0cb5f76.5bdca6e7924442afa77f1124bf6c2ace',
				show: 'nofilter',
				count: 4,
			    likes: false,
			    comments: false,
			    timestamp: false,
				pager : false,
				button: "btn btn-success btn-xs pull-right"
			});
		});
	</script>
</div>