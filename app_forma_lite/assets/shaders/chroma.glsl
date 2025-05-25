#ifdef GL_ES
precision mediump float;
#endif
uniform float u_time;
varying vec2 vUv;
void main() {
  float hue = mod(u_time * 0.1 + vUv.x + vUv.y, 1.0);
  vec3 color = hsv2rgb(vec3(hue, 0.8, 1.0));
  gl_FragColor = vec4(color, 1.0);
}
