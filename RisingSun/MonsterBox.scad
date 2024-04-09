


BOX_X = 134;
BOX_Y = 208;
BOX_Z = 104;

THICK = 1;
MARGIN = 6;


MODEL_W = 5;
MODEL_L = 50;
MODEL_M = 4;

big_MODEL_W = 5;
big_MODEL_L = 60;
big_MODEL_M = 3;

difference() {
    cube(size = [
        BOX_X,
        BOX_Y, 
        BOX_Z]);

    translate([
        MARGIN + THICK, 
        THICK * 2, 
        THICK]) {
            
        cube(size = [
            BOX_X - (MARGIN * 2) - (THICK * 2),
            BOX_Y - (THICK * 4),
            BOX_Z]);
    }

    modelSlot(THICK, 150, 0);
    modelSlot(THICK, 7, 0);

    modelSlot(THICK, ((BOX_Y / 2) - (MODEL_L / 2)), 0);

    small_modelSlot(THICK - BOX_X, -90, 180);
    big_modelSlot(THICK - BOX_X, -195, 180);
    // modelSlot(THICK - BOX_X, -((BOX_Y / 2) + big_MODEL_L + 1), 180);



    
    //modelSlot(90, 0, 0);
    //modelSlot(180, 0, 0);
    //modelSlot(270, 0, 0);
}

module modelSlot(x, y, rot) {
    rotate([0, 0, rot]) {
        translate([x, y, THICK]) {
            cube(size = [
                MODEL_W,
                MODEL_L,
                BOX_Z]);
        }        
        
        translate([x + MODEL_M, y + MODEL_M, THICK]) {
            cube(size = [
                MODEL_W + 2,
                MODEL_L - (MODEL_M * 2),
                BOX_Z]);
        }
    }
}

module small_modelSlot(x, y, rot) {
    rotate([0, 0, rot]) {
        translate([x, y, THICK + 50]) {
            cube(size = [
                MODEL_W,
                MODEL_L,
                BOX_Z - 50]);
        }        
        
        translate([x + MODEL_M, y + MODEL_M, THICK + 50]) {
            cube(size = [
                MODEL_W + 2,
                MODEL_L - (MODEL_M * 2),
                BOX_Z - 50]);
        }
    }
}

module big_modelSlot(x, y, rot) {
    rotate([0, 0, rot]) {
        translate([x, y, THICK + 17]) {
            cube(size = [
                big_MODEL_W,
                big_MODEL_L,
                BOX_Z - 17]);
        }        
        
        translate([x + big_MODEL_M, y + big_MODEL_M, THICK + 17]) {
            cube(size = [
                big_MODEL_W + 2,
                big_MODEL_L - (big_MODEL_M * 2),
                BOX_Z - 17]);
        }
    }
}