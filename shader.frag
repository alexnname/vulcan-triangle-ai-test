#version 450

layout(location = 0) in vec3 fragColor;
layout(location = 0) out vec4 outColor;

layout(push_constant) uniform Push {
    float time;
} push;

void main() {
    float r = sin(push.time) * 0.5 + 0.5;
    float g = sin(push.time + 2.094) * 0.5 + 0.5;
    float b = sin(push.time + 4.188) * 0.5 + 0.5;
    
    outColor = vec4(fragColor * vec3(r, g, b), 1.0);
}
