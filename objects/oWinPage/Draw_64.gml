/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(fontBubble)
draw_set_colour(make_color_rgb(96,57,18))
draw_text_transformed(room_width / 2, 190, "You Win", .5, .5, 0)

draw_set_font(fontSmall)
draw_set_colour(make_color_rgb(96,57,18))
draw_text_transformed(room_width / 2, 260, "Congratulations! You manage to solve all the puzzles and escape back into your own world!", 0.5, 0.5, 0)

draw_set_font(fontButton)
draw_set_colour(make_color_rgb(255,202,183))
draw_text_transformed(room_width / 2, 660, "Back To Main Menu", .5, .5, 0)