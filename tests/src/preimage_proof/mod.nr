use poseidon::poseidon::PoseidonHasher;
use poseidon::poseidon2::Poseidon2Hasher;
use preimage_proof::proof::preimage_proof;
use std::hash::Hasher;

#[test]
fn test_poseidon_preimage_proof() {
    let preimages = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
    let mut hasher = PoseidonHasher::default();

    for i in 0..preimages.len() {
        hasher.write(preimages[i]);
    }

    let digest = hasher.finish();
    let scope = 76;

    assert(preimage_proof::<PoseidonHasher, 15>(preimages, digest, scope))
}

#[test]
fn test_poseidon_sponge_preimage_proof() {
    let preimages = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
    let mut hasher = Poseidon2Hasher::default();

    for i in 0..preimages.len() {
        hasher.write(preimages[i]);
    }

    let digest = hasher.finish();
    let scope = 76;

    assert(preimage_proof::<Poseidon2Hasher, 16>(preimages, digest, scope))
}
