shader_type canvas_item;

uniform vec4 color : source_color = vec4(1.0);
uniform float radius = 1.0;
uniform float thickness = 0.05;

void fragment() {
	// Place fragment code here.
	vec2 pos = UV - vec2(0.5);
	float inner_radius = radius - thickness;
	float outer_circle = step(length(pos), radius);
	float inner_circle = step(length(pos), inner_radius);
	
	float ring = outer_circle - inner_circle;
	COLOR = vec4(color.rgb, ring * color.a);
}
