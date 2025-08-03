// use keccak256::keccak256;
// use std::hash::Hash;
// use std::hash::Hasher;

// pub struct KeccakHasher {
//     state: [Field],
// }

// impl Hasher for KeccakHasher {
//     fn finish(self) -> Field {
//         let len = self.state.len();

//         for i in state {

//         }
//         let result = keccak256(self.state, len);
//     }

//     #[inline_always]
//     fn write(&mut self, input: Field) {
//         self.state = self.state.push_back(input);
//     }
// }

// impl Default for KeccakHasher {
//     fn default() -> Self {
//         KeccakHasher { state: &[] }
//     }
// }

// impl Hash for KeccakHasher {
//     fn hash<H>(self, state: &mut H)
//     where
//         H: Hasher,
//     {
//         self.state.hash(state);
//     }
// }

// #[test]
// fn test_poseidon_sponge_preimage_proof() {
//     // let hash = &mut KeccakHasher { state: [] };

//     let result = [
//         0xec, 0xd0, 0xe1, 0x8, 0xa9, 0x8e, 0x19, 0x2a, 0xf1, 0xd2, 0xc2, 0x50, 0x55, 0xf4, 0xe3,
//         0xbe, 0xd7, 0x84, 0xb5, 0xc8, 0x77, 0x20, 0x4e, 0x73, 0x21, 0x9a, 0x52, 0x3, 0x25, 0x1f,
//         0xea, 0xab,
//     ];

//     // let a = "serhas".as_bytes();

//     // for i in a {
//     //     KeccakHasher::write(hash, i as Field);
//     // }

//     // println(KeccakHasher::finish(hash));

//     let a = KeccakHasher::default();
//     a.hash(result);
// }
