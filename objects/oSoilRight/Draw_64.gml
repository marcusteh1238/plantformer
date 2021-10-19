/// @description Insert description here
// You can write your code in this editor
if (!is_undefined(hoverSprite)) {
draw_set_alpha(0.5);
draw_sprite(scrGetPlantformSprite(hoverSprite), 1, x - 64, y + 64)
draw_set_alpha(1.0);
};
