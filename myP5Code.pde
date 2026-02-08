// Feature 6 - Include animation

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
    drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));
};

//🟢draw Function - will run on repeat
draw = function(){
    background(0, 120, 200);
    
    // move animated fish
    moveFish(1.5);
    
    // draw animated fish
    drawFish(animatedFishX, 300, color(255,150,0));
    
    // draw bubbles
    drawBubble(100, bubbleY, 20);
    drawBubble(500, bubbleY + 50, 15);
    
    // draw seaweed
    drawSeaweed(50, 380, 80);
    drawSeaweed(550, 380, 100);
    
    // bubble animation
    bubbleY -= 1;
    if (bubbleY < 0) {
        bubbleY = 400;
    }
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
    // make fish jump to mouse
    animatedFishX = mouseX;
};

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

//drawBubble Function 
var drawBubble = function(x, y, size){
    noFill();
    stroke(255);
    ellipse(x, y, size, size);
};

//drawSeaweed Function
var drawSeaweed = function(x, y, height){
    stroke(0, 150, 0);
    line(x, y, x, y - height);
};

//moveFish Function 
var moveFish = function(speed){
    animatedFishX += speed;
    
    if (animatedFishX > 600) {
        animatedFishX = -50;
    }
};

//Global Variables 
var animatedFishX = 0;
var bubbleY = 400;


