
$fn=200;

THICK = 1;

CARD_L = 96;
CARD_W = 68;
CARD_STACK = 38;

LARGE_CARD_L = 132;
LARGE_CARD_W = 84;
LARGE_CARD_STACK = 15;

SMALL_CARD_L = 66;
SMALL_CARD_W = 43;
SMALL_CARD_STACK = 16;

STUMP = 2;

BOX_W = LARGE_CARD_W + (THICK * 2) + 5;
BOX_L = LARGE_CARD_L + (THICK * 2) + 5;
BOX_H = LARGE_CARD_STACK + SMALL_CARD_STACK + THICK + STUMP;

SMALL_X = (BOX_W / 2) - (SMALL_CARD_L / 2);

// cube(size = [
//     BOX_W + (THICK * 4),
//     BOX_L + (THICK * 4), 
//     THICK]);

MARGIN = 20;

difference() {
    cube(size = [
        BOX_W,
        BOX_L, 
        BOX_H]);

    translate([
        THICK, 
        THICK, 
        THICK]) {
            
        cube(size = [
            BOX_W - (THICK * 2),
            BOX_L - (THICK * 2),
            BOX_H]);
    }

    translate([
        MARGIN,
        MARGIN,
        -1]) {

        cube(size = [
            BOX_W - (MARGIN * 2),
            BOX_L - (MARGIN * 2),
            10]);
    }

    translate([
        (BOX_W / 2),
        -1,
        21]) {

        rotate([270, 0, 0]) {
            cylinder(
                h = 1000,
                r = 20);
        }
    }

    translate([
        (BOX_W / 2) - 20, 
        -1, 
        21]) {
            
        cube(size = [
            40,
            150,
            80]);
    }
}