<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/reset.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/unslider-dots.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/site.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo/unslider/unslider.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/common/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/demo/unslider/unslider-min.js"></script>
<title>unslider</title>

</head>
<body>
	<ul>
		<li id="demos" data-nav="Demos <span class='amp'>&amp;</span> Usage">
			<div class="spaced">
				<div class="wrap">
					<div class="demo">
						<h2>01.Default Slider</h2>
						<div class="default-slider">
							<ul>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat6.jpg"></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2>02.Automatic Slider</h2>
						<div class="automatic-slider">
							<ul>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat6.jpg"></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2>03.Vertical Slider</h2>
						<div class="vertical-slider">
							<ul>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat6.jpg"></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2>04.fade Slider</h2>
						<div class="fading-slider">
							<ul>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat6.jpg"></li>
							</ul>
						</div>
					</div>
					<div class="demo">
						<h2>05.Manual Slider</h2>
						<div class="manual-slider">
							<ul>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat1.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat2.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat3.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat4.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat5.jpg"></li>
								<li><img alt="" src="<%=request.getContextPath()%>/img/demo/unslider/cat6.jpg"></li>
							</ul>
						</div>
						<input id="manual" placeholder="Type the slide number (or just first/last) here">
					</div>
					
				</div>
			</div>
		</li>
	</ul>
	<script type="text/javascript">
		$(function() {
			// 01. the default slider
			$('.default-slider').unslider();
			// 02. the automatic slider
			$('.automatic-slider').unslider({
				autoplay	: true
			});
			// 03. the vertical slider
			$('.vertical-slider').unslider({
				animation: 'vertical',
				autoplay: true,
				infinite: true
			});
			// 04. the fade slider
			$('.fading-slider').unslider({
				animation: 'fade',
				autoplay: true,
				arrows: false
			});
			// 05. Totally manual slider
			$('.manual-slider').unslider({
				keys: false,
				arrows: false,
				nav: false
			});
			$('#manual').on('keyup', function() {
				$('.manual-slider').unslider('animate:' + $(this).val());
			});
		});
	</script>
</body>
</html>