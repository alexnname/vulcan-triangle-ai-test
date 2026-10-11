CXX = g++
CXXFLAGS = -std=c++17 -O2 -Wall -Wextra
LDFLAGS = -lvulkan -lglfw

SHADER_COMPILER = glslc

all: vulkan_triangle

vert.spv: shader.vert
	$(SHADER_COMPILER) $< -o $@

frag.spv: shader.frag
	$(SHADER_COMPILER) $< -o $@

vulkan_triangle: main.cpp vert.spv frag.spv
	$(CXX) $(CXXFLAGS) main.cpp -o vulkan_triangle $(LDFLAGS)

clean:
	rm -f vert.spv frag.spv vulkan_triangle
