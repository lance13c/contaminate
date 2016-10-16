//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2  v_vPosition;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_vPosition = in_Position.xy;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float expand;       // The spread of the radial gradient
uniform vec2 center;        // The center position of the texture
uniform vec2 offset;        // The x and y offset from the center
uniform float radius;       // Radius of the gradient, relitive to texture
uniform vec2 spriteSize;    // Height of texture

void main()
{
    
    // Test Setting the color to 1 if x < AN AMOUNT
    
    float INTENSITY_SCALAR = 5.0;                       // The greater: the less the distance will affect the expantion of the gradient
    float Expand = 0.4 - (expand / INTENSITY_SCALAR);   // 0.4 = Default Value
    
    // Adds offsets to center
    vec2 Center = center + offset;                      // Gradient Center

    float dist = length( Center - v_vPosition.xy );     // Distance
    
    vec4 Color = v_vColour;

    float maxDistance = pow( abs(radius), Expand);
    float quadDistance = pow( abs(dist), Expand);

    float quadIntensity = 1.0 - (min( quadDistance, maxDistance ) / maxDistance);
    
    if (quadIntensity <= 1.0 && quadIntensity >= 0.0) {
    
        Color.r += quadIntensity;
        Color.g += quadIntensity;
        Color.b += quadIntensity;
        gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
        
    } else {
    
        gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    }

}

