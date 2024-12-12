@group(0)
@binding(0)
var inputTexture: texture_2d<f32>;

@group(0)
@binding(1)
var outputTexture: texture_storage_2d<rgba8unorm, write>; // this is used as both input and output for convenience

@compute
@workgroup_size(1)
fn main(@builtin(global_invocation_id) global_id: vec3<u32>) {
    let texel = textureLoad(inputTexture, vec2<u32>(global_id.x, global_id.y), 0);
    textureStore(outputTexture, vec2<u32>(global_id.x, global_id.y), texel);
}
