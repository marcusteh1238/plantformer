/// @description Insert description here
// You can write your code in this editor
for(i=0; i<image_xscale; i++){
    for(j=0; j<image_yscale; j++){
        draw_sprite(sPlatforms, 0, x+(i*sprite_get_width(sPlatforms)), y+(j*sprite_get_height(sPlatforms)));
    }
}