Shader "Unlit/ForTuto"
{
    Properties
    {
        _Color ("Main Color", Color) = (1, 0.5, 0.5, 1)
    }
        SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            Material
            {
                Diffuse[_Color]
            }
            Lighting On
        }
    }
}
