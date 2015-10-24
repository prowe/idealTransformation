<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="includes/headSection.jsp" %>

<title>Ideal Transformation</title>
<style type="text/css">
	/* start page specific */
	.staff-section .headshot {
		float: left;
		margin-right: 15px;
	}
	.staff-section {
		margin-bottom: 15px;
	}
	SECTION {
		margin-bottom: 15px;
		margin-top: 15px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="includes/headerBanner.jsp" %>
		<%@ include file="includes/nav.jsp" %>
	</header>
	<main class="row">
		<div class="col-md-8">
			<section class="">
				<h4>ABOUT</h4>
				<img src="resources/images/carousel/IMG_8738.JPG" class="flip-vertical" style="width: 100%;"/>
				<div>Diana, Adair, Kelsey, and Ali</div>
			</section>
			<section style="text-align: center;">
				<span style="padding-right: 15px;">
					<strong>i•de•al</strong>
					<span style="font-weight: lighter;">tailor-made</span>
				</span>
				<span>
					<strong>trans•for•ma•tion</strong>
					<span style="font-weight: lighter;">life changing experience</span>
				</span>
			</section>
			<section>
	
				<p>Since 2011, Ideal Transformation has been creating life-changing transformations, one unique experience at a time. With a little help and guidance, you too can identify and implement a sustainable health, wellness, or weight loss program that leads to success and long-term results.</p> 
				<p>Whether you are looking for an effective weight loss solution, help with menu planning, or inspiration for healthful home cooking, you will find our staff to be knowledgeable and passionate about you achieving your best health.</p>
				<p>We carry the highest quality protein supplements and kitchen aids available, a menu of coaching services, and affordable rates, and a warm welcoming environment that will set the stage for your new adventure.</p>
				<p>Parking is easy and we are available to serve you during and after business hours. We even offer frequent buyer programs so you can benefit with great savings while supporting a local business.  We’re looking forward to meeting you and becoming your personal guide on your wellness journey!</p>
				
				<img src="resources/images/carousel/IMG_8738.JPG" class="flip-vertical" style="width: 100%;"/>
				<h4>ADAIR</h4>
				<p>It’s not often you’ll find Adair without her gym bag along.  Adair has always been a good food girl and she has a passion for physical fitness and weight lifting that complement her passion for chocolate and an occasional reckless meal! Adair is a fantastic example and coach. She is smart, fun and eager to work with clients who have committe4d to a healthy lifestyle. Adair is a certified health coach and recently earned her Personal Training certification through XXXX.  Adair is our marketing queen and loves updating our site with new success stories!</p>
	
				<img src="resources/images/carousel/IMG_8738.JPG" class="flip-vertical" style="width: 100%;"/>
				<h4>KELSEY</h4>
				<p>Kelsey is the kind of girl who needs only a small excuse to throw a well orchestrated party! Kelsey loves to make people happy and celebrate their successes. This makes her the perfect coach for our weight loss clients. She will set up a menu plan based on your preferences and busy schedule, and anticipate your successful follow-up visit! Kelsey and her husband spend time with their _____, Finn, while putting in TLC time with their little Beaverdale castle.  Kelsey keeps our weight loss program up to date and works with the coaching staff to keep them on top of the latest best practices.</p>
			</section>
		</div>
		
		<aside class="col-md-4">
			<section class="">
				<h4>NEWS</h4>
				<p>Stay up-to-date on our latest products, special promotions, and in-store sales.</p>
				
				<form>
					<div class='form-group ' >
						<input path="email" class="form-control" type="email" placeholder="Email"/>
					</div>
					<div class="form-group clearfix">
						<button id="embeddedContactSaveButton" type="button" class="btn btn-primary btn-sm pull-right">Submit</button>
					</div>
				</form>
			</section>

			<%@ include file="includes/instagramFeed.jsp" %>
		</aside>
	
	<%--
		<section id="staff" class="col-md-12">
			<h2>Our Staff</h2>
			<div class="staff-section clearfix">
				<img class="headshot" src="resources/images/diana.jpg" alt="Diana Brown" />
				<h3>Diana Brown <small>Owner and Certified Health Coach</small></h3>
				<p>Diana is a graduate of the University of Sioux Falls in South
				Dakota, holding a degree in Business Administration. Prior to starting
				Ideal Transformation, Diana served in a number of professional
				capacities including financial services, human resources, training,
				sales, and recruiting. In 2012, she completed her Health Coach
				certification through the Institute of Integrative Nutrition and owns
				and operates Ideal Transformation in Clive,Iowa.</p>
				<p>Diana is a native Iowan (Spencer), is married and has two grown
				daughters and one son-in-law. She enjoys interior decorating, cooking,
				reading, biking, camping and traveling.</p>
			</div>
			
			<div class="staff-section clearfix">
				<img class="headshot" src="resources/images/adair.png" alt="Adair Brown" />
				<h3>Adair Brown <small>Assistant Manager  and Certified Health Coach</small></h3>
				<p>Adair completed her Bachelor of Arts Degree in Environmental
				Studies at the University of Montana in Missoula. While earning a
				specialized degree in Sustainable Food and Agriculture, Adair spent
				many hours working on small organic farms. Adair moved back to the
				Midwest in 2012 to pursue health coaching and received her Health
				Coach certification from the Institute of Integrative Nutrition. Adair
				is passionate about helping people reach a higher quality of life
				through health and fitness.</p>
				<p>Adair loves to cook and experiment with new foods and recipes.
				Outside of food and nutrition, her other loves are fitness, being
				outdoors, her Labradoodle mix, Koda Bear, chocolate, and coffee!</p>
			</div>
			
			<div class="staff-section clearfix">
				<img class="headshot" src="resources/images/kelsey.png" alt="Kelsey Chaves" />
				<h3>Kelsey Chaves <small>Business Solutions Specialist and Coach</small></h3>
				<p>Kelsey graduated from the University of Iowa with a Major in
				Communication Studies and Business Administration. After graduating,
				Kelsey and her family completed a 500 mile hike across Northern Spain
				inspiring a new found appreciation for life balance, health, and
				fitness. Kelsey strives to help her clients find this same
				appreciation in their lives and supports their efforts to reach their
				goals! As an added benefit, Kelsey is speaks Spanish as a second
				language and welcomes the opportunity to work with our Spanish
				speaking clients!</p>
				<p>Kelsey loves to travel, spend time with her husband and their
					dog Finn, read, cook, bike, and spend time with family!</p>
			</div>
		</section>
		
		<section id="office">
			<h2>Our Office</h2>
			<p>Our office is centrally located in the Des Moines metro area on
				the corner of 82nd & Hickman Road. At Ideal Transformation, we are
				focused on weight loss results and ongoing health maintenance. We
				have created a comfortable atmosphere to work with clients on an
				individual basis to tailor a program to their unique situation. Our
				staff is knowledgeable and passionate about your success! Stop by in
				to meet us or contact us to schedule an appointment.</p>
		</section>
		<%@ include file="includes/events.jsp" %>
		--%>
		
	</main>
	<%@ include file="includes/footer.jsp" %>
</body>
</html>