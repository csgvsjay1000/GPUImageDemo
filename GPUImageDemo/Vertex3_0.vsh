attribute vec4 position;
attribute vec4 inputTextureCoordinate;

varying vec2 textureCoordinate;

uniform highp mat4 model;
uniform highp mat4 view;
uniform highp mat4 projection;

void main()
{
    gl_Position = projection * view * model * position;
    textureCoordinate = inputTextureCoordinate.xy;
}