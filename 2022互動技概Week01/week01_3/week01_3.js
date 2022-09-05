
function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xFF, 0x00, 0x00));
    fill(color(0x17, 0xE6, 0xFF));
    rect(mouseX - 200, mouseY, 100, 100);
    rect(mouseX, mouseY, 100, 100);
}

function initializeFields() {
}
