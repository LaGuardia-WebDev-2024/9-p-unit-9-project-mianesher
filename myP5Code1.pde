// 🟢 setup Function - runs once
setup = function() {
    size(600, 400);  // Canvas size
};

// Background Images
var caveSceneImage = loadImage("https://www.shutterstock.com/image-vector/vector-illustration-background-forest-scenery-600nw-1807427365.jpg");
var forestImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

// Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go?  [Press f for forest and c for cave]";

// 🟢 draw Function - runs on repeat
draw = function() {
    drawScene();

    // If statement to change the scene based on key press
    if (keyPressed) {
        if (key == 'f') {
            sceneImage = forestImage;
            sceneText = "No fox here.  [Press s to restart]";
        } 
        if (key == 's') {
            sceneImage = caveSceneImage;
            sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
        } 
        // Random event using random() - feature added
        if (key == 'r' && random(1, 10) > 5) {  
            sceneText = "A wild animal appears! Run for cover!";
        }
    }
};

// 🟡 drawScene Function - draws the scene
var drawScene = function() {
    image(sceneImage, 0, 0); // Draw the current scene

    fill(0, 0, 0);
    rect(0, 350, 600, 100);  // Text box

    fill(255, 255, 255);
    textSize(20);
    text(sceneText, 10, 375);  // Display scene text
};


