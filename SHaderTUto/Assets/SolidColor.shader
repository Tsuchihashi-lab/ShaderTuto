// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unlit/SolidColor"
{
    /*Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
    }*/
    SubShader
    {
        /*Tags { "RenderType"="Opaque" }
        LOD 100*/

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            //#pragma multi_compile_fog

            //#include "UnityCG.cginc"

            float4 vert(float4 v:POSITION) : SV_POSITION 
            {
                return UnityObjectToClipPos(v);
            }

            fixed4 frag() : COLOR 
            {
                return fixed4(1.0,0.0,0.0,1.0);
            }
            ENDCG
        }
    }
}
