#version 300 es
#extension GL_OES_EGL_image_external_essl3 : enable

precision highp float;

#define EGL_SCALE_AUTO    0
#define EGL_SCALE_NEAREST 1
#define EGL_SCALE_LINEAR  2
#define EGL_SCALE_MAX     3

vec4 cbTransform(vec4 color, int cbMode)
{
  float L = (17.8824000 * color.r) + (43.516100 * color.g) + (4.11935 * color.b);
  float M = (03.4556500 * color.r) + (27.155400 * color.g) + (3.86714 * color.b);
  float S = (00.0299566 * color.r) + (00.184309 * color.g) + (1.46709 * color.b);
  float l, m, s;

  if (cbMode == 1) // Protanope
  {
    l = 0.0f * L + 2.02344f * M + -2.52581f * S;
    m = 0.0f * L + 1.0f * M + 0.0f * S;
    s = 0.0f * L + 0.0f * M + 1.0f * S;
  }
  else if (cbMode == 2) // Deuteranope
  {
    l = 1.000000 * L + 0.0f * M + 0.00000 * S;
    m = 0.494207 * L + 0.0f * M + 1.24827 * S;
    s = 0.000000 * L + 0.0f * M + 1.00000 * S;
  }
  else if (cbMode == 3) // Tritanope
  {
    l =  1.000000 * L + 0.000000 * M + 0.0 * S;
    m =  0.000000 * L + 1.000000 * M + 0.0 * S;
    s = -0.395913 * L + 0.801109 * M + 0.0 * S;
  }

  vec4 error;
  error.r = ( 0.080944447900 * l) + (-0.13050440900 * m) + ( 0.116721066 * s);
  error.g = (-0.010248533500 * l) + ( 0.05401932660 * m) + (-0.113614708 * s);
  error.b = (-0.000365296938 * l) + (-0.00412161469 * m) + ( 0.693511405 * s);
  error.a = 0.0;

  error = color - error;
  color.g += (error.r * 0.7) + (error.g * 1.0);
  color.b += (error.r * 0.7) + (error.b * 1.0);
  return color;
}
/*
   _______                               _____ __              __             ____             __
  / ____(_)___  ___  ____ ___  ____ _   / ___// /_  ____ _____/ /__  _____   / __ \____ ______/ /__
 / /   / / __ \/ _ \/ __ `__ \/ __ `/   \__ \/ __ \/ __ `/ __  / _ \/ ___/  / /_/ / __ `/ ___/ //_/
/ /___/ / / / /  __/ / / / / / /_/ /   ___/ / / / / /_/ / /_/ /  __/ /     / ____/ /_/ / /__/ ,<
\____/_/_/ /_/\___/_/ /_/ /_/\__,_/   /____/_/ /_/\__,_/\__,_/\___/_/     /_/    \__,_/\___/_/|_|
        http://en.sbence.hu/        Shader: Try to get the SDR part of HDR content
*/

/**
 * Translated to GLSL, original source is:
 * https://github.com/VoidXH/Cinema-Shader-Pack
 */

// Configuration ---------------------------------------------------------------
const float knee          = 0.75;    // Compressor knee position
const float ratio         = 4.0;     // Compressor ratio: 1 = disabled, <1 = expander
// -----------------------------------------------------------------------------

// Precalculated values
const float compressor = 1.0 / ratio;

// PQ constants
const float m1inv = 16384.0 / 2610.0;
const float m2inv = 32.0 / 2523.0;
const float c1    = 3424.0 / 4096.0;
const float c2    = 2413.0 / 128.0;
const float c3    = 2392.0 / 128.0;

float minGain(vec3 pixel) { return min(pixel.r, min(pixel.g, pixel.b)); }
float maxGain(vec3 pixel) { return max(pixel.r, max(pixel.g, pixel.b)); }
float midGain(vec3 pixel)
{
  return pixel.r < pixel.g ?
    (pixel.r < pixel.b ?
      min(pixel.g, pixel.b) : // min = r
      min(pixel.r, pixel.g)) : // min = b
    (pixel.g < pixel.b ?
      min(pixel.r, pixel.b) : // min = g
      min(pixel.r, pixel.g)); // min = b
}

vec3 compress(vec3 pixel)
{
  float maxGain = maxGain(pixel);
  return pixel * (maxGain < knee ? maxGain :
      knee + max(maxGain - knee, 0.0) * compressor) / maxGain;
}

vec3 fixClip(vec3 pixel)
{
  // keep the (mid - min) / (max - min) ratio
  float preMin  = minGain(pixel);
  float preMid  = midGain(pixel);
  float preMax  = maxGain(pixel);
  vec3  clip    = clamp(pixel, 0.0, 1.0);
  float postMin = minGain(clip);
  float postMid = midGain(clip);
  float postMax = maxGain(clip);
  float ratio   = (preMid - preMin) / (preMax - preMin);
  float newMid  = ratio * (postMax - postMin) + postMin;
  return vec3(clip.r != postMid ? clip.r : newMid,
                clip.g != postMid ? clip.g : newMid,
                clip.b != postMid ? clip.b : newMid);
}

// Returns luminance in nits
vec3 pq2lin(vec3 pq, float gain)
{
  vec3 p = pow(pq, vec3(m2inv));
  vec3 d = max(p - c1, vec3(0.0)) / (c2 - c3 * p);
  return pow(d, vec3(m1inv)) * gain;
}

vec3 srgb2lin(vec3 c)
{
  vec3 v = c / 12.92;
  vec3 v2 = pow((c + vec3(0.055)) / 1.055, vec3(2.4));
  vec3 threshold = vec3(0.04045);
  vec3 result = mix(v, v2, greaterThanEqual(c, threshold));
  return result;
}

vec3 lin2srgb(vec3 c)
{
  vec3 v = c * 12.92;
  vec3 v2 = pow(c, vec3(1.0/2.4)) * 1.055 - 0.055;
  vec3 threshold = vec3(0.0031308);
  vec3 result = mix(v, v2, greaterThanEqual(c, threshold));
  return result;
}

// in linear space
vec3 bt2020to709(vec3 bt2020)
{
  return vec3(
    bt2020.r *  1.6605 + bt2020.g * -0.5876 + bt2020.b * -0.0728,
    bt2020.r * -0.1246 + bt2020.g *  1.1329 + bt2020.b * -0.0083,
    bt2020.r * -0.0182 + bt2020.g * -0.1006 + bt2020.b * 1.1187);
}

vec3 mapToSDR(vec3 color, float gain, bool pq)
{
  if (pq)
    color = pq2lin(color.rgb, gain);
  color = bt2020to709(color);
  return lin2srgb(compress(color));
}

in  vec2 uv;
out vec4 color;

uniform sampler2D sampler1;

uniform int   scaleAlgo;

uniform float nvGain;
uniform int   cbMode;
uniform bool  isHDR;
uniform bool  mapHDRtoSDR;
uniform float mapHDRGain;
uniform bool  mapHDRPQ;

void main()
{
  switch (scaleAlgo)
  {
    case EGL_SCALE_NEAREST:
    {
      vec2 ts = vec2(textureSize(sampler1, 0));
      color   = texelFetch(sampler1, ivec2(uv * ts), 0);
      break;
    }

    case EGL_SCALE_LINEAR:
    {
      color = texture(sampler1, uv);
      break;
    }
  }

  if (isHDR && mapHDRtoSDR)
    color.rgb = mapToSDR(color.rgb, mapHDRGain, mapHDRPQ);

  if (cbMode > 0)
    color = cbTransform(color, cbMode);

  if (nvGain > 0.0)
  {
    highp float lumi = (0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b);
    if (lumi < 0.5)
      color *= atanh((1.0 - lumi) * 2.0 - 1.0) + 1.0;
    color *= nvGain;
  }

  color.a = 1.0;
}
 
