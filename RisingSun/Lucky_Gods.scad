

// 208 - 67
BOX_X = 208 - 67;
BOX_Y = 104;
BOX_Z = 40;

THICK = 1;
MARGIN = 6;

MODEL_W = 4;
MODEL_L = 26;
MODEL_M = 2;

BIG_MODEL_W = 5;
BIG_MODEL_L = 36;
BIG_MODEL_M = 3;

difference() {
    cube(size = [
        BOX_X,
        BOX_Y, 
        BOX_Z]);

    translate([
        THICK, 
        MARGIN + THICK, 
        THICK]) {
            
        cube(size = [
            BOX_X - (THICK * 2),
            BOX_Y - (MARGIN * 2) - (THICK * 2),
            BOX_Z]);
    }


    modelSlot(THICK, -32, 90);
    modelSlot(THICK, -62, 90);
    modelSlot(THICK, -105, 90);
    modelSlot(THICK, -135, 90);
    
    modelSlot(THICK - BOX_Y, 15, 270);
    big_modelSlot(THICK - BOX_Y, (BOX_X / 2) - (BIG_MODEL_L / 2), 270);
    big_modelSlot(THICK - BOX_Y, 95, 270);

    
    //modelSlot(90, 0, 0);
    //modelSlot(180, 0, 0);
    //modelSlot(270, 0, 0);
}

//big_modelSlot(THICK - BOX_Y, (BOX_Y / 2) + (BIG_MODEL_L / 2), 270);

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

module big_modelSlot(x, y, rot) {
    rotate([0, 0, rot]) {
        translate([x, y, THICK]) {
            cube(size = [
                BIG_MODEL_W,
                BIG_MODEL_L,
                BOX_Z]);
        }        
        
        translate([x + BIG_MODEL_M, y + BIG_MODEL_M, THICK]) {
            cube(size = [
                BIG_MODEL_W + 2,
                BIG_MODEL_L - (BIG_MODEL_M * 2),
                BOX_Z]);
        }
    }
}