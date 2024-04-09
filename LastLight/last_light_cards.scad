
$fn=200;

THICK = 1;

CARD_L = 96;
CARD_W = 68;
CARD_STACK = 38;

STUMP = 3;
STUMP_MARGIN = 10;

BOX_W = CARD_W + (THICK * 2);
BOX_L = CARD_L + (THICK * 2);
BOX_H = CARD_STACK + (THICK * 2) + STUMP;

translate([
    STUMP_MARGIN, 
    STUMP_MARGIN, 
    THICK]) {
        
    cube(size = [
        BOX_W - (STUMP_MARGIN * 2),
        BOX_L - (STUMP_MARGIN * 2), 
        STUMP]);
}

translate([
    -THICK, 
    -THICK, 
    0]) {
        
    cube(size = [
        BOX_W + (THICK * 2),
        BOX_L + (THICK * 2), 
        THICK]);
}

difference() {
    cube(size = [
        BOX_W,
        BOX_L, 
        BOX_H]);

    translate([
        THICK, 
        THICK, 
        BOX_H - CARD_STACK - STUMP]) {
            
        cube(size = [
            CARD_W,
            CARD_L,
            CARD_STACK + STUMP + 1]);
    }

    translate([
        -1,
        BOX_L / 2,
        20 + STUMP]) {

        rotate([0, 90, 0]) {
            cylinder(
                h = 1000,
                r = 20);
        }
    }

    translate([
        -1, 
        (BOX_L / 2) - 20, 
        20 + STUMP]) {
            
        cube(size = [
            150,
            40,
            80]);
    }

}
