<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.mySlides {display: none;}
.animation{
	vertical-align: center;
    width:700px;
    height:500px;
}

/* Slideshow container */
.slideshow-container {
  max-width: 300px;
  position: relative;
  margin-left: -250px;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
	margin-left: -70px;
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 270px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
<center>

<div class="slideshow-container">

<div class="mySlides fade">
  <center><img class = "animation" src="../img/p1.jpg" style="width:150px height:100px"></center>
</div>

<div class="mySlides fade">
  <img class = "animation" src="../img/p2.jpg" style="width:150px height:100px">
</div>

<div class="mySlides fade">
<center><img class = "animation" src="../img/p3.jpg" style="width:150px height:100px"></center>
</div>

<div class="mySlides fade">
    <img class = "animation" src="../img/p4.jpg" style="width:150px height:100px">
  </div>

<div class="mySlides fade">
    <img class = "animation" src="../img/p5.jpg" style="width:150px height:100px">
  </div>
    
<div class="mySlides fade">
    <img class = "animation" src="../img/p6.jpg" style="width:150px height:100px">
  </div>

</div>
<br>

<div style="text-align:center">
      <span class="dot"></span> 
      <span class="dot"></span> 
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span>
    <span class="dot"></span>
</div>
</center>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 10 seconds
}
</script>

</body>
</html> 
