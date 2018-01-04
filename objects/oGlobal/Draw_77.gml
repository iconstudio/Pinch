/// @description Drawing application surface with some options

// DISABLE ALPHABLEND BECAUSE SURFACES //
gpu_set_blendenable(false);

// GET OFFSET OF THE APPLICATION SURFACE FOR MANUAL DRAWING //
var offset = application_get_position()

// SET THE SHADER //
if(fxaa_on) {
    shader_set(shaderFXAA)
    var tex = surface_get_texture(application_surface);
    shader_set_uniform_f(shader_get_uniform(shaderFXAA, "u_texel"), texture_get_texel_width(tex), texture_get_texel_height(tex))
    shader_set_uniform_f(shader_get_uniform(shaderFXAA, "u_strength"), fxaa_strength)
}

// DRAW THE APPLICATION SURFACE //
//shader_set(shaderFade)
//var tex = surface_get_texture(application_surface)
//shader_set_uniform_f(shader_get_uniform(shaderFade, "u_alpha"), mouse_y / room_height / 2)
draw_surface(application_surface, offset[0], offset[1])
//shader_reset()

// RESET ALPHABLEND //
gpu_set_blendenable(true)
// RESET THE SHADER //
if(fxaa_on)
    shader_reset()
