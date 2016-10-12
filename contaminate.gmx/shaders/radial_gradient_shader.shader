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

uniform float expand;       // How much is only inner color
uniform vec2 center;        // The center position of the gradient, relitive to texture
uniform float radius;       // Radius of the gradient, relitive to texture
uniform vec2 roomSize; // Height of texture

void main()
{
    
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );

    //vec2 centerFromSfml = roomSize - center;
    vec2 p = abs((gl_FragCoord.xy - vec2(0.5,0.5)) / radius); // vec2 should be center of gradient
    
    float dist = sqrt(dot(p, p)); // Pathagorian therom // Distance between 2 points
    
    if (dist < 1.0)
    {
        //dist = dist / 100.0;
        Color.r += (dist);
        Color.g += (dist);
        Color.b += (dist);
        gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    } else
    {
        dist = dist / 1000.0;
        Color.r += (dist);
        Color.g += (dist);
        Color.b += (dist);
        gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    }
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

