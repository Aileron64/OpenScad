// Key cap dimensions
keycap_height = 5; // Height of the key cap
keycap_radius = 14; // Radius of the key cap
stem_height = 15; // Height of the stem
stem_radius = 6; // Radius of the stem

// Create the key cap
difference() {
    // Outer cylinder (key cap)
    cylinder(h = keycap_height, r = keycap_radius, $fn=100);
    
    // Inner cylinder (stem)
    translate([0, 0, -stem_height]) {
        cylinder(h = stem_height, r = stem_radius, $fn=100);
    }
}
