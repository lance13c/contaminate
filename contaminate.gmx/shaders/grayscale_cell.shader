//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float cell_hp;   // Object hp
uniform float cell_hp_max;   // Object hp max

void main()
{
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    //Color = vec4( vec3(dot( Color.rgb, lum)), Color.a); // Add lum
    
    
    // Offsets are to make some colors brighter, when they
    //   start to gray.
    
    const float R_OFFSET = 1.3;
    const float G_OFFSET = 1.55;
    const float B_OFFSET = 1.114;
    
    // Goal is to slowly gray out the Cell
    // Have r, g, b slowly approch their average
    
    float average = (Color.r * Color.g * Color.b / 3.0);
    //float average = 0.3;
    
    // Color difference             average - Color.r
    //Ex: average 100
    //    color 120 
    //    average - color = Positive 20
    float rDif = (average * R_OFFSET) - Color.r; // Difference between the average and color value r
    float gDif = (average * G_OFFSET) - Color.g;
    float bDif = (average * B_OFFSET) - Color.b;
    
    // Scale hp different to 0-1    (cell_hp / cell_hp_max)
    // The -1 is to inverse the scale, instead of 0-1 it goes 1-0
    
    float hpScale = abs((cell_hp / cell_hp_max) - 1.0);
    
    // Multiple Dif by (cell_hp / cell_hp_max) to equal Percentage of Diff
    // Ex: 60% of 20 diff = 12
    // Add that 12 to the color r value to get it closer to the average
    
    
    
    Color.r += (rDif * hpScale);
    Color.g += (gDif * hpScale);
    Color.b += (bDif * hpScale);
    
    vec3 lum = vec3(0, 0, 0);
    
    //vec3 lum = vec3(0.299, 0.3, 0.114);
    
    gl_FragColor = vec4( Color.rgb, Color.a);
}

