xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 39;
 -0.75290;-0.64890;-0.84420;,
 -4.23500;-0.64890;-0.84420;,
 -4.23500;0.38990;-1.33350;,
 -0.25070;0.38990;-1.33350;,
 -7.87370;-0.35460;-0.84420;,
 -8.65580;0.38990;-0.99240;,
 -4.23500;1.42870;-0.84420;,
 -0.75290;1.42870;-0.84420;,
 -7.87370;1.13430;-0.84420;,
 -0.25070;1.57620;-0.01130;,
 -3.80240;1.73370;-0.01130;,
 -4.23500;1.42460;0.82220;,
 -0.78210;1.42460;0.82220;,
 -8.47390;1.38970;-0.01130;,
 -8.01090;1.10800;0.82220;,
 -4.23500;0.38990;1.21770;,
 -0.25070;0.38990;1.21770;,
 -8.53270;0.38990;1.00140;,
 -4.23500;-0.64480;0.82220;,
 -0.78210;-0.64480;0.82220;,
 -8.01090;-0.32820;0.82220;,
 -3.80240;-0.95400;-0.01130;,
 -0.25070;-0.79640;-0.01130;,
 -8.47390;-0.60990;-0.01130;,
 -9.36880;0.38990;-0.01130;,
 -8.47390;-0.60990;-0.01130;,
 -8.01090;-0.32820;0.82220;,
 -8.53270;0.38990;1.00140;,
 -8.47390;1.38970;-0.01130;,
 -8.01090;1.10800;0.82220;,
 -0.78210;-0.64480;0.82220;,
 -0.25070;-0.79640;-0.01130;,
 1.17380;0.38990;-0.01130;,
 -0.25070;0.38990;1.21770;,
 -0.25070;1.57620;-0.01130;,
 -0.78210;1.42460;0.82220;,
 -7.87370;-0.35460;-0.84420;,
 -4.23500;-0.64890;-0.84420;,
 -0.75290;-0.64890;-0.84420;;
 
 24;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;3,2,6,7;,
 4;2,5,8,6;,
 4;9,10,11,12;,
 4;10,13,14,11;,
 4;12,11,15,16;,
 4;11,14,17,15;,
 4;16,15,18,19;,
 4;15,17,20,18;,
 4;19,18,21,22;,
 4;18,20,23,21;,
 4;24,25,26,27;,
 4;28,24,27,29;,
 4;30,31,32,33;,
 4;33,32,34,35;,
 4;7,6,10,9;,
 4;6,8,13,10;,
 4;5,24,28,8;,
 4;4,25,24,5;,
 4;21,23,36,37;,
 4;22,21,37,38;,
 4;32,31,0,3;,
 4;34,32,3,7;;
 
 MeshMaterialList {
  1;
  24;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.000000;0.800000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  32;
  0.230027;-0.736793;-0.635786;,
  -0.029152;-0.739795;-0.672200;,
  -0.262945;-0.705937;-0.657657;,
  0.239883;-0.239417;-0.940816;,
  -0.029586;0.000004;-0.999562;,
  -0.270067;0.241294;-0.932117;,
  0.230024;0.736807;-0.635771;,
  -0.029158;0.739811;-0.672183;,
  -0.262935;0.705945;-0.657653;,
  0.229548;0.711474;0.664163;,
  -0.025466;0.717484;0.696109;,
  -0.275065;0.682463;0.677188;,
  0.367560;0.000000;0.930000;,
  -0.020806;0.000000;0.999784;,
  -0.409341;-0.000000;0.912381;,
  0.229550;-0.711459;0.664178;,
  -0.025464;-0.717465;0.696129;,
  -0.275066;-0.682451;0.677200;,
  0.369345;0.929249;0.008978;,
  -0.027141;0.999620;0.004917;,
  -0.403268;0.915061;0.006225;,
  -0.624045;-0.573868;0.530324;,
  -0.292955;-0.933492;0.206807;,
  -0.027136;-0.999620;0.004925;,
  0.369355;-0.929245;0.008978;,
  0.590661;-0.580575;0.560404;,
  -0.624045;0.573868;0.530324;,
  0.590661;0.580575;0.560404;,
  -0.584831;0.619843;-0.523228;,
  -0.584863;-0.619830;-0.523208;,
  0.597829;-0.596667;-0.535340;,
  0.597829;0.596667;-0.535340;;
  24;
  4;0,1,4,3;,
  4;1,2,5,4;,
  4;3,4,7,6;,
  4;4,5,8,7;,
  4;18,19,10,9;,
  4;19,20,11,10;,
  4;9,10,13,12;,
  4;10,11,14,13;,
  4;12,13,16,15;,
  4;13,14,17,16;,
  4;15,16,23,24;,
  4;16,17,22,23;,
  4;21,22,17,14;,
  4;20,26,14,11;,
  4;15,24,25,12;,
  4;12,27,18,9;,
  4;6,7,19,18;,
  4;7,8,20,19;,
  4;5,28,20,8;,
  4;2,29,29,29;,
  4;23,22,2,1;,
  4;24,23,1,0;,
  4;30,24,0,3;,
  4;18,31,31,6;;
 }
 MeshTextureCoords {
  39;
  0.375000;0.000000;,
  0.500000;0.000000;,
  0.500000;0.125000;,
  0.375000;0.125000;,
  0.625000;0.000000;,
  0.625000;0.125000;,
  0.500000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.250000;,
  0.375000;0.371800;,
  0.500000;0.371800;,
  0.500000;0.500000;,
  0.375000;0.500000;,
  0.625000;0.371800;,
  0.625000;0.500000;,
  0.500000;0.625000;,
  0.375000;0.625000;,
  0.625000;0.625000;,
  0.500000;0.750000;,
  0.375000;0.750000;,
  0.625000;0.750000;,
  0.500000;0.878200;,
  0.375000;0.878200;,
  0.625000;0.878200;,
  0.746800;0.125000;,
  0.746800;0.000000;,
  0.875000;0.000000;,
  0.875000;0.125000;,
  0.746800;0.250000;,
  0.875000;0.250000;,
  0.125000;0.000000;,
  0.253200;0.000000;,
  0.253200;0.125000;,
  0.125000;0.125000;,
  0.253200;0.250000;,
  0.125000;0.250000;,
  0.625000;1.000000;,
  0.500000;1.000000;,
  0.375000;1.000000;;
 }
}
