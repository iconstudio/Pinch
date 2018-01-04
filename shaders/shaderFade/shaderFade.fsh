//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_alpha;

void main() {
	vec4 txt = texture2D( gm_BaseTexture, v_vTexcoord );
	txt.rgb -= u_alpha;

	gl_FragColor = txt;
}
