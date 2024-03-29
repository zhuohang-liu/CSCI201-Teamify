<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- CSS (jQuery) -->
    <link rel="stylesheet" href="tagsInputJQ\jquery.tagsinput-revisited.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="css\test.css">
    
    <!-- Image upload CSS -->
    <style class="cp-pen-styles">@import url(https://fonts.googleapis.com/icon?family=Material+Icons);
@import url("https://fonts.googleapis.com/css?family=Raleway");
.project {
  width: 800px;
  margin: 40px auto;
}

.inputs {
  width: 500px;
}

#description, #tags {
  margin: 20px 0px;
}

.box {
  float: left;
  display: block;
  width: 150px;
  height: 200px;
  margin: 10px;
  background-color: white;
  border-radius: 5px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
  -webkit-transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
  transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
  overflow: hidden;
}

.upload-options {
  position: relative;
  height: 65px;
  background-color: cadetblue;
  cursor: pointer;
  overflow: hidden;
  text-align: center;
  -webkit-transition: background-color ease-in-out 150ms;
  transition: background-color ease-in-out 150ms;
}
.upload-options:hover {
  background-color: #7fb1b3;
}
.upload-options input {
  width: 0.1px;
  height: 0.1px;
  opacity: 0;
  overflow: hidden;
  position: absolute;
  z-index: -1;
}
.upload-options label {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 100%;
  height: 100%;
  font-weight: 400;
  text-overflow: ellipsis;
  white-space: nowrap;
  cursor: pointer;
  overflow: hidden;
}
.upload-options label::after {
  content: 'add';
  font-family: 'Material Icons';
  position: absolute;
  font-size: 2.5rem;
  color: #e6e6e6;
  top: calc(50% - 2.5rem);
  left: calc(50% - 1.25rem);
  z-index: 0;
}
.upload-options label span {
  display: inline-block;
  width: 50%;
  height: 100%;
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
  vertical-align: middle;
  text-align: center;
}
.upload-options label span:hover i.material-icons {
  color: lightgray;
}

.js--image-preview {
  height: 150px;
  width: 100%;
  position: relative;
  overflow: hidden;
  background-image: url("");
  background-color: white;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
}
.js--image-preview::after {
  content: "photo_size_select_actual";
  font-family: 'Material Icons';
  position: relative;
  font-size: 4.5em;
  color: #e6e6e6;
  top: calc(50% - 3rem);
  left: calc(50% - 2.25rem);
  z-index: 0;
}
.js--image-preview.js--no-default::after {
  display: none;
}

i.material-icons {
  -webkit-transition: color 100ms ease-in-out;
  transition: color 100ms ease-in-out;
  font-size: 2.25em;
  line-height: 55px;
  color: white;
  display: block;
}

.drop {
  display: block;
  position: absolute;
  background: rgba(95, 158, 160, 0.2);
  border-radius: 100%;
  -webkit-transform: scale(0);
          transform: scale(0);
}

.animate {
  -webkit-animation: ripple 0.4s linear;
          animation: ripple 0.4s linear;
}

@-webkit-keyframes ripple {
  100% {
    opacity: 0;
    -webkit-transform: scale(2.5);
            transform: scale(2.5);
  }
}

@keyframes ripple {
  100% {
    opacity: 0;
    -webkit-transform: scale(2.5);
            transform: scale(2.5);
  }
}
</style>

    <title>Teamify</title>
</head>

<body>

    <!-- NAV BAR -->

    <nav class="navbar navbar-expand-lg shadow-sm" style="background-color: #FFF5F3">
        <div class="container-fluid align-items-center">
            <!-- LOGO -->
            <div>
                <a class="navbar-brand" href="#">
                    <img src="img\Logologo.png" width="40" height="40" alt="">
                </a>
            </div>

            <!-- SEARCH BOX -->
            <form action="www.google.com">
                <div class="d-flex flex-row align-items-center ">
                    <div class="p-2 ">
                        <input id="search" name="search" type="text">
                    </div>
                    <div class="">
                        <button class="btn" style="background-color: #EE7674" type="submit">Search</button>
                    </div>
                </div>
            </form>

            <!-- SIDE BUTTONS -->
            <div class="d-flex flex-row align-items-center">
                <button type="button" class="btn btn-link" style="color: grey">Messages</button>
                <a class="btn btn-default" style="background-color: #F5C396" href="ProfileOrg.html">Profile</a>
            </div>
        </div>
    </nav>

    <hr class="divider">

	<!-- PROJECT CREATION INPUTS -->
	<div class="project">
		
		<!-- PROJECT INFO FORM -->
		<form action="www.google.com" method="post">
			<!-- UPLOAD IMAGE -->
			<div class="box">
    			<div class="js--image-preview"></div>
    			<div class="upload-options">
      			<label>
        			<input type="file" class="image-upload" accept="image/*" />
      			</label>
    			</div>
  			</div>
            <div class="d-flex flex-row align-items-center">
                <div class="inputs">
                	<input class="form-control" id="title" type="text" placeholder="Project Title">
                	<textarea class="form-control" id="description" placeholder="Project Description" rows="8"></textarea>
                    <input id="tags" name="tags" type="text">
                    <button type="submit" class="btn" id="create" style="background-color: #75B9BE; color: #fff; margin: 30px 0px">Create Project</button>
                </div>
            </div>
        </form>
        
	</div>

	<hr class="divider">

    <!-- Optional BS JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <script src="tagsInputJQ\jquery.tagsinput-revisited.js"></script>
    
    <!-- TAGS INPUT + AUTOCOMPLETE SCRIPT -->
    <script>
        $('#search').tagsInput({
            minChars: 0,
            maxChars: null,
            limit: null,
            unique: true,
            placeholder: 'Enter tag plz',
            'autocomplete': {
                source: [
                    'C++',
                    'Java',
                    'Music',
                    'Game',
                    'Remote Friendly',
                    'Experience Required',
                    'Unity',
                    'Long-term (> 1 year)',
                    'Social Impact',
                    'Business',
                    'Marketing',
                    'Machine Learning',
                    'Prototype',
                    'Compensation',
                    'Small Team (1-6)',
                    'Engineering'
                ]
            }
        });
    </script>
    <script>
        $('#tags').tagsInput({
            minChars: 0,
            maxChars: null,
            limit: null,
            unique: true,
            placeholder: 'Enter project tags',
            'autocomplete': {
                source: [
                    'C++',
                    'Java',
                    'Music',
                    'Game',
                    'Remote Friendly',
                    'Experience Required',
                    'Unity',
                    'Long-term (> 1 year)',
                    'Social Impact',
                    'Business',
                    'Marketing',
                    'Machine Learning',
                    'Prototype',
                    'Compensation',
                    'Small Team (1-6)',
                    'Engineering'
                ]
            }
        });
    </script>
    <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
	<script >function initImageUpload(box) {
  		let uploadField = box.querySelector('.image-upload');

  		uploadField.addEventListener('change', getFile);

  	function getFile(e){
    	let file = e.currentTarget.files[0];
    	checkType(file);
  	}
  	
  	function previewImage(file){
    	let thumb = box.querySelector('.js--image-preview'),
        	reader = new FileReader();

    	reader.onload = function() {
      		thumb.style.backgroundImage = 'url(' + reader.result + ')';
    	}
    	reader.readAsDataURL(file);
    	thumb.className += ' js--no-default';
  	}

  	function checkType(file){
    	let imageType = /image.*/;
    	if (!file.type.match(imageType)) {
      		throw 'Image type incorrect';
    	} else if (!file){
      		throw 'File does not exist';
    	} else {
      	previewImage(file);
    }
  }
  
}

// initialize box-scope
var boxes = document.querySelectorAll('.box');

for(let i = 0; i < boxes.length; i++) {if (window.CP.shouldStopExecution(1)){break;}
  let box = boxes[i];
  initDropEffect(box);
  initImageUpload(box);
}
window.CP.exitedLoop(1);




/// drop-effect
function initDropEffect(box){
  let area, drop, areaWidth, areaHeight, maxDistance, dropWidth, dropHeight, x, y;
  
  // get clickable area for drop effect
  area = box.querySelector('.js--image-preview');
  area.addEventListener('click', fireRipple);
  
  function fireRipple(e){
    area = e.currentTarget
    // create drop
    if(!drop){
      drop = document.createElement('span');
      drop.className = 'drop';
      this.appendChild(drop);
    }
    // reset animate class
    drop.className = 'drop';
    
    // calculate dimensions of area (longest side)
    areaWidth = getComputedStyle(this, null).getPropertyValue("width");
    areaHeight = getComputedStyle(this, null).getPropertyValue("height");
    maxDistance = Math.max(parseInt(areaWidth, 10), parseInt(areaHeight, 10));

    // set drop dimensions to fill area
    drop.style.width = maxDistance + 'px';
    drop.style.height = maxDistance + 'px';
    
    // calculate dimensions of drop
    dropWidth = getComputedStyle(this, null).getPropertyValue("width");
    dropHeight = getComputedStyle(this, null).getPropertyValue("height");
    
    // calculate relative coordinates of click
    // logic: click coordinates relative to page - parent's position relative to page - half of self height/width to make it controllable from the center
    x = e.pageX - this.offsetLeft - (parseInt(dropWidth, 10)/2);
    y = e.pageY - this.offsetTop - (parseInt(dropHeight, 10)/2) - 30;
    
    // position drop and animate
    drop.style.top = y + 'px';
    drop.style.left = x + 'px';
    drop.className += ' animate';
    e.stopPropagation();
    
  }
}

//# sourceURL=pen.js
</script>
</body>

</html>