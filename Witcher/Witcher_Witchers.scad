

// 208 - 67
BOX_X = 185;
BOX_Y = 71;
BOX_Z = 32;

THICK = 1;
MARGIN = 6;

MODEL_W = 4;
MODEL_L = 26;
MODEL_M = 2;

S_MODEL_W = 4;
S_MODEL_L = 26;
S_MODEL_M = 2;

GAP = 30;

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


    modelSlot(THICK, -2 - GAP, 90);
    modelSlot(THICK, -2 - GAP * 2, 90);
    modelSlot(THICK, -2 - GAP * 3, 90);
    modelSlot(THICK, -2 - GAP * 4, 90);
    modelSlot(THICK, -2 - GAP * 5, 90);
    modelSlot(THICK, -2 - GAP * 6, 90);

    modelSlot(THICK - BOX_Y, 3, 270);
    modelSlot(THICK - BOX_Y, 3 + GAP, 270);
    modelSlot(THICK - BOX_Y, 3 + GAP * 2, 270);
    modelSlot(THICK - BOX_Y, 3 + GAP * 3, 270);
    modelSlot(THICK - BOX_Y, 3 + GAP * 4, 270);
    modelSlot(THICK - BOX_Y, 3 + GAP * 5, 270);
    
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

module smallModelSlot(x, y, rot) {
    rotate([0, 0, rot]) {
        translate([x, y, THICK]) {
            cube(size = [
                MODEL_W,
                MODEL_L,
                BOX_Z]);
        }        
        
        translate([x + S_MODEL_M, y + S_MODEL_M, THICK]) {
            cube(size = [
                S_MODEL_W + 2,
                S_MODEL_L - (S_MODEL_M * 2),
                BOX_Z]);
        }
    }
}