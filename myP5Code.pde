// Feature 6 - Include animation

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
    drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));
    
    // load image
    oceanImg = loadImage("ocean.png");
};

//🟢draw Function - will run on repeat
draw = function(){
    // draw background
    image(oceanImg, 0, 0, 600, 400);
    
    // follow mouse
    drawFish(mouseX, mouseY, color(255, 150, 0));
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

// background image
var oceanImg;