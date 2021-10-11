/// @description Insert description here
// You can write your code in this editor
if (!is_undefined(hoverSprite)) {
draw_set_alpha(0.5);
draw_sprite(scrGetPlantformSprite(hoverSprite), 1, x, y + 32)
draw_set_alpha(1.0);
};
