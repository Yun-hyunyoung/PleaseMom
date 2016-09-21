<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.img-container{
		padding-right: 15px;
   	 	padding-left: 15px;
    	margin-right: auto;
    	margin-left: auto;
	}
	@media (min-width: 768px)}
		.img-container {
		    width: 648px;
		}
	}
	@media (min-width: 992px){
		.img-container {
		    width: 648px;
		}
	}
	@media (min-width: 1200px){
		.img-container {
		    width: 1032px;
		}
	}
	.img-big{
		width: 655px;
		height: 326px;
		padding-right: 15px;
   	 	padding-left: 15px;
    	margin-right: auto;
    	margin-left: auto;
		display: block;
		background-size: cover;
	}
	@media (min-width: 768px)}
		.img-big {
		    width: 100%;
		}
	}
	@media (min-width: 992px){
		.img-big {
		    width: 648px;
		}
	}
	@media (min-width: 1200px){
		.img-big {
		    width: 680px;
		}
	}
	.img-small{
		width: 326px;
		height: 326px;
		padding-right: 15px;
   	 	padding-left: 15px;
    	margin-right: auto;
    	margin-left: auto;
		display: block;
		background-size: cover;
	}
	@media (min-width: 768px)}
		.img-small {
		    width: 100%;
		}
	}
	@media (min-width: 992px){
		.img-small {
		    width: 312px;
		}
	}
	@media (min-width: 1200px){
		.img-small {
		    width: 327px;
		}
	}
	.img-auto{
		
	}
	.img-box{
		margin-top: 5px;
		margin-bottom: 5px;
		text-align: center;
		
		-webkit-filter: grayscale(0) blur(0);
		filter: grayscale(0) blur(0);
		-webkit-transition: .3s ease-in-out;
		transition: .3s ease-in-out;
	}
	.img-box:hover{
		-webkit-filter: grayscale(100%) blur(3px);
		filter: grayscale(100%) blur(3px);
	}
	.img-box:hover .img-text h1{
		-webkit-transition: .3s ease-in-out;
		transition: .3s ease-in-out;
		cursor: pointer;
	}
	.img-text{
		font-size: 40px;
		color: #DDDDDD;
	}
	.img-text h1{
		line-height: 315px;
	}
</style>
<div class="img-container">

         <div class="col-lg-8 col-lg-offset-2 col-lg-8 col-lg-offset-2">
             <div class="site-heading" style="text-align:center">
             	<br>
                 <h1>나라 검색</h1>
                 <br>
                 <hr class="small">
             </div>
         </div>
         
    <div class="row">
		  <div class="col-lg-8 col-md-12 col-sm-12 rm-padding-sm img-auto">
			  <div class="img-box">
			    <div class="img-big" style="background-image:url('https://a0.muscache.com/ic/discover/397?interpolation=lanczos-none&output-format=jpg&output-quality=70&v=33b4f2&downsize=655px:326px');">
			    	<div class="img-text"><h1>프랑스</h1></div>
			    </div>
			  </div>
		  </div>
		  <div class="col-lg-4 col-md-6 col-sm-6 rm-padding-sm img-auto">
			  <div class="img-box">
			    <div class="img-small" style="background-image:url('https://a0.muscache.com/ic/discover/41?interpolation=lanczos-none&output-format=jpg&output-quality=70&v=33b4f2&downsize=326px:326px');">
			    	<div class="img-text"><h1>영국</h1></div>
			    </div>
			  </div>
		  </div>
		  <div class="col-lg-4 col-md-6 col-sm-6 rm-padding-sm img-auto">
		  	<div class="img-box">
			    <div class="img-small" style="background-image:url('https://a0.muscache.com/ic/discover/290?interpolation=lanczos-none&output-format=jpg&output-quality=70&v=33b4f2&downsize=326px:326px');">
			    	<div class="img-text"><h1>이탈리아</h1></div>	
			    </div>
		    </div>
		  </div>
		  <div class="col-lg-8 rm-padding-sm col-md-12 col-sm-12 img-auto">
		  	<div class="img-box">
			    <div class="img-big" style="background-image:url('https://a2.muscache.com/ac/pictures/2a4e63c3-c981-4cbc-9c37-80a6ab3a9d24.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');-webkit-filter: saturate(6); filter: saturate(6);">
			   		<div class="img-text"><h1>미국</h1></div>
			    </div>
		    </div>
		  </div>
	</div>
</div>