// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unlit/WindowCoordinates"
{
    //Properties
    //{
    //    _MainTex ("Texture", 2D) = "white" {}
    //}
    SubShader
    {
        /*Tags { "RenderType"="Opaque" }
        LOD 100*/

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 3.0;

            #include "UnityCG.cginc"

            /*struct appdata_base
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 texcordo : TEXCOORD0;
            };*/
    
        float4 vert(appdata_base v) : POSITION
        {
            return UnityObjectToClipPos(v.vertex);
        }

        fixed4 frag(float4 sp:WPOS) : COLOR
        {
            fixed2 red_green = sp.xy / _ScreenParams.xy;
            fixed  blue = 0.0;
            fixed  alpha = 1.0f;
            return fixed4(red_green, blue, alpha);
        }

            ENDCG
        }
    }
}
