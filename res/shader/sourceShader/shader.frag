#version 440

layout(location = 0) in vec3 v_color;

layout(location = 0) out vec4 fragColor;

const float lineWidth = 3.0;
vec3		lineColor = vec3(0.299,1.000,0.143);
vec3		backgroundColor = vec3(0.144,0.676,1.000);

void main() { 
	float delta = lineWidth * 0.001;
	float x = gl_FragCoord.x/450;
	float y = 1.0 - (gl_FragCoord.y/800);
	
	float lineY = smoothstep(0.0, 1.0, x);
	
	if(abs(y - lineY) <= delta) {
		fragColor = vec4(lineColor, 1.0);
	} else {
		fragColor = vec4(backgroundColor, 1.0);
	} 
}
