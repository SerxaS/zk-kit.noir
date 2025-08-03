use std::hash::Hasher;

pub fn preimage_proof<H: Hasher + Default, let N: u32>(
    preimages: [Field; N],
    digest: Field,
    scope: Field,
) -> bool {
    let mut hasher = H::default();
    for i in 0..N {
        hasher.write(preimages[i]);
    }
    hasher.finish() == digest
}
