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
    
    // --- CALLING THE 3 NEW EMOJI FUNCTIONS ---
    drawBlowfish(150, 100, 60);       // Tiny puffer
    drawTropicalFish(450, 150, 80);   // Colorful friend
    drawWhale(100, 300, 120);         // Big blue whale
    
    // follow mouse
    drawFish(mouseX, mouseY, color(255, 150, 0));
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
}

//Blowfish 
var drawBlowfish = function(x, y, sz) {
  textSize(sz);
  text("🐡", x, y);
};

//Tropical Fish 
var drawTropicalFish = function(x, y, sz) {
  textSize(sz);
  text("🐠", x, y);
};

//Whale
var drawWhale = function(x, y, sz) {
  textSize(sz);
  text("🐋", x, y);
};

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

// background image
var oceanImg;