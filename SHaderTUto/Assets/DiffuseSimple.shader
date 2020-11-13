Shader "Custom/DiffuseSimple"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
    }
    SubShader
    {
        Tags { "RenderType"="Transparent" }
        //LOD 200

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Lambert

        struct Input
        {
            float4 color : COLOR;
        };

        fixed4 _Color;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Color.rgb * half3(1.0, 0.5, 0.5);
            o.Alpha = 0.5;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
