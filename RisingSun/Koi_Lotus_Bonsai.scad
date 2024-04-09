


BOX_X = 104;
BOX_Y = 104;
BOX_Z = 36;

THICK = 1;
MARGIN = 6;


MODEL_W = 4;
MODEL_L = 26;
MODEL_M = 2;

DS_MODEL_W = 5;
DS_MODEL_L = 29;
DS_MODEL_M = 3;

difference() {
    cube(size = [
        BOX_X,
        BOX_Y, 
        BOX_Z]);

    translate([
        MARGIN + THICK, 
        MARGIN + THICK, 
        THICK]) {
            
        cube(size = [
            BOX_X - (MARGIN * 2) - (THICK * 2),
            BOX_Y - (MARGIN * 2) - (THICK * 2),
            BOX_Z]);
    }

    ds_modelSlot(THICK, (BOX_Y / 2) + 1, 0);
    ds_modelSlot(THICK, (BOX_Y / 2) - DS_MODEL_L - 1, 0);

    ds_modelSlot(THICK - BOX_X, -((BOX_Y / 2) - 1), 180);
    ds_modelSlot(THICK - BOX_X, -((BOX_Y / 2) + DS_MODEL_L + 1), 180);

    modelSlot(THICK, -40, 90);
    modelSlot(THICK, -((BOX_Y / 2) + (DS_MODEL_L / 2)), 90);
    modelSlot(THICK, -94, 90);
    
    modelSlot(THICK - BOX_X, 40, 270);
    modelSlot(THICK - BOX_X, (BOX_Y / 2) + (DS_MODEL_L / 2), 270);
    modelSlot(THICK - BOX_X, 13, 270);

    
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

module ds_modelSlot(x, y, rot) {
    rotate([0, 0, rot]) {
        translate([x, y, THICK]) {
            cube(size = [
                DS_MODEL_W,
                DS_MODEL_L,
                BOX_Z]);
        }        
        
        translate([x + DS_MODEL_M, y + DS_MODEL_M, THICK]) {
            cube(size = [
                DS_MODEL_W + 2,
                DS_MODEL_L - (DS_MODEL_M * 2),
                BOX_Z]);
        }
    }
}