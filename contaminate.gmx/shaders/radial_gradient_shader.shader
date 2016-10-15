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

uniform float expand;       // How much is only inner color
uniform vec2 center;        // The center position of the gradient, relitive to texture
uniform float radius;       // Radius of the gradient, relitive to texture
uniform vec2 spriteSize;    // Height of texture

void main()
{
    
    // Test Setting the color to 1 if x < AN AMOUNT

    float dist = length( center - v_vPosition.xy ); // Distance
    
    vec4 Color = v_vColour;

    float maxDistance = pow( abs(radius), 0.4);
    float quadDistance = pow( abs(dist), 0.4);

    float quadIntensity = 1.0 - (min( quadDistance, maxDistance ) / maxDistance);
    
    if (quadIntensity <= 1.0 && quadIntensity >= 0.0) {
    
        Color.r += quadIntensity;
        Color.g += quadIntensity;
        Color.b += quadIntensity;
        gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
        
    } else {
    
        gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    }
    
    //if (quadIntensity > 0.0 && quadIntensity < 1.0)
    //{
    //    Color.r += 1.0;//(dist);
    //    Color.g += 1.0;//(dist);
    //    Color.b += 1.0;//(dist);
    //    gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    //} else
    //{
        //Color.r += 1.0;//(dist);
        //Color.g += 1.0;//(dist);
        //Color.b += 1.0;//(dist);
    //    gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    //}
    
    

    //gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord ); 


    //vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );

    //vec2 PosRange = gl_FragCoord.xy / spriteSize;       // gl_FragCoord in 0-1 range
    //vec2 p = (PosRange.xy - vec2(0.5, 0.5)) / radius; // vec2 should be center of gradient, abs not nessessary, b/c dot product afterwards
    
    //float dist = sqrt(dot(p, p)); // Pathagorian therom // Distance between 2 points
    
    //if (dist < 1.0)
    //{
    //    Color.r = 2.0;//(dist);
    //    Color.g = 2.0;//(dist);
    //    Color.b = 2.0;//(dist);
    //    gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    //} else
    //{
    //    Color.r = mod(floor(gl_FragCoord.y), 2.0) * 1.0;//(dist);
    //    Color.g = mod(floor(gl_FragCoord.y), 2.0) * 1.0;//(dist);
    //    Color.b = mod(floor(gl_FragCoord.y), 2.0) * 1.0;//(dist);
    //    //Color.r += (dist);
    //    //Color.g += (dist);
    //    //Color.b += (dist);
    //    gl_FragColor = Color * texture2D( gm_BaseTexture, v_vTexcoord );
    //}
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

}

