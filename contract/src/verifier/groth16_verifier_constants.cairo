use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 2;

pub const vk: Groth16VerifyingKey =
    Groth16VerifyingKey {
        alpha_beta_miller_loop_result: E12D {
            w0: u288 {
                limb0: 0xe5ce1ca90c83862af950bd90,
                limb1: 0x5361ce8eb9f09adaa151ac4d,
                limb2: 0x334b7ec484e27d9
            },
            w1: u288 {
                limb0: 0xfee6b0a6929a6e3767a77233,
                limb1: 0x523b611f020133d22d3fc96a,
                limb2: 0xd1d1d9752192f72
            },
            w2: u288 {
                limb0: 0xc1e550fdcab805f4ec272603,
                limb1: 0x7c8e48cf393c48004a7b017e,
                limb2: 0x1d887cca38e094df
            },
            w3: u288 {
                limb0: 0x857b6ef9e6226a8b0ef3089c,
                limb1: 0xfbaab32d16e2875be790786f,
                limb2: 0x24261e7edb579a4b
            },
            w4: u288 {
                limb0: 0x5d618c0b46fa5e7bab27451c,
                limb1: 0x13fccc19de8d94c2b2420d9d,
                limb2: 0x11de299da8ae1882
            },
            w5: u288 {
                limb0: 0x33e31d19e3d7794738dfe802,
                limb1: 0xdf2d68d994eccf00009d7c70,
                limb2: 0x2ac84efbc067d1c5
            },
            w6: u288 {
                limb0: 0xce11311c2515f6462fe4af31,
                limb1: 0xb092319a5cff21b3ebe51327,
                limb2: 0x2e18238a80af4330
            },
            w7: u288 {
                limb0: 0xb3b70b59c40705757cc38c9c,
                limb1: 0x1de9121d3349f1f4d8fb835b,
                limb2: 0x19a130b5466d2b88
            },
            w8: u288 {
                limb0: 0x6a8c6d29ebc97fe1d28c8093,
                limb1: 0x6beae0982d51f5453a8905bc,
                limb2: 0x27f1ed6d69635a72
            },
            w9: u288 {
                limb0: 0x69c037cd0edbcc3143037a02,
                limb1: 0xd3fd7d172f825855200f07ea,
                limb2: 0x205ae52164536070
            },
            w10: u288 {
                limb0: 0xb7c20b6c560f81e46738f415,
                limb1: 0xfce3e0f64450a054cd2d2649,
                limb2: 0x2e2a2ca9627fbcf7
            },
            w11: u288 {
                limb0: 0xe73f829648611f2c92ab56ce,
                limb1: 0xdd113c6691325f1764e44852,
                limb2: 0x65f600efecc7687
            }
        },
        gamma_g2: G2Point {
            x0: u384 {
                limb0: 0xf75edadd46debd5cd992f6ed,
                limb1: 0x426a00665e5c4479674322d4,
                limb2: 0x1800deef121f1e76,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x35a9e71297e485b7aef312c2,
                limb1: 0x7260bfb731fb5d25f1aa4933,
                limb2: 0x198e9393920d483a,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xc43d37b4ce6cc0166fa7daa,
                limb1: 0x4aab71808dcb408fe3d1e769,
                limb2: 0x12c85ea5db8c6deb,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x70b38ef355acdadcd122975b,
                limb1: 0xec9e99ad690c3395bc4b3133,
                limb2: 0x90689d0585ff075,
                limb3: 0x0
            }
        },
        delta_g2: G2Point {
            x0: u384 {
                limb0: 0x14c20ebfe88bc4c0f7be91d5,
                limb1: 0x250f85512193f4fc329c5ab5,
                limb2: 0x27a856c5a325be4c,
                limb3: 0x0
            },
            x1: u384 {
                limb0: 0x937caa4efe105aa22bda82f7,
                limb1: 0xcc1dda90e701d32a386600d3,
                limb2: 0x1a0ae80f1bfdbf01,
                limb3: 0x0
            },
            y0: u384 {
                limb0: 0xe1d270f9161a3b8c68765ab7,
                limb1: 0x3892e35017ad53fce759003a,
                limb2: 0x2fbf062134594850,
                limb3: 0x0
            },
            y1: u384 {
                limb0: 0x9f8754bc1aa8b69041ac1f56,
                limb1: 0xe2b4effba676ffb6b6faae90,
                limb2: 0x2b4b3b835356566c,
                limb3: 0x0
            }
        }
    };

pub const ic: [
    G1Point
    ; 3] = [
    G1Point {
        x: u384 {
            limb0: 0x2a54897c39b1b221ce9c761c,
            limb1: 0xa8e9b47472834c6d52cb3f3d,
            limb2: 0x4dbb1a380cad70e,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xe92317eb1e174bccdb0245a,
            limb1: 0x9cee47edd24def9673bd403a,
            limb2: 0x2fa8d2d357d68460,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0x7e20bb9850e37e23cdc4ee06,
            limb1: 0x96057f2df94e153c24be28ea,
            limb2: 0x12a677fd378aaf6e,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0xd061106c28ef12984cbfe06d,
            limb1: 0x7fb8f712bb625ff76759d66a,
            limb2: 0x2d74d100f3e6b8d2,
            limb3: 0x0
        }
    },
    G1Point {
        x: u384 {
            limb0: 0xe786590600801118b994b181,
            limb1: 0x4a6ffac631acfa25bd41ba67,
            limb2: 0x1132e444863e0f0,
            limb3: 0x0
        },
        y: u384 {
            limb0: 0x1d58d8d434bb0a52765a709e,
            limb1: 0x310b0a79e24ac0d10f89a20a,
            limb2: 0x1858b812c8bbd398,
            limb3: 0x0
        }
    },
];


pub const precomputed_lines: [
    G2Line
    ; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4ee18b296240084c85feef69,
            limb1: 0xd23fd3dc41ce105a4beec487,
            limb2: 0x2171605855ae05d7
        },
        r0a1: u288 {
            limb0: 0xf988f8052f295ace45a96e3d,
            limb1: 0xac86c161e13be59c8ec171c1,
            limb2: 0x28cbba8c1f64e8ab
        },
        r1a0: u288 {
            limb0: 0xe94e502657ac779f6540394d,
            limb1: 0x6a9a6ca052f3f2dd692409f8,
            limb2: 0xec647ab3e9cf08
        },
        r1a1: u288 {
            limb0: 0x9ef5c4927db7f2edd544cd1e,
            limb1: 0xa22c3c7676f25881afbb3413,
            limb2: 0x1afe8a07fb808d4a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x19903f63d9e083ca527e0dde,
            limb1: 0xe61071da3fb348034b92a60a,
            limb2: 0xef2ee1a8b839a51
        },
        r0a1: u288 {
            limb0: 0x6ee8d2880cf7314892d38f0a,
            limb1: 0xbc98454a04572c108bff8cf,
            limb2: 0x79893e6c1ccb77e
        },
        r1a0: u288 {
            limb0: 0x7f237a66e4741477733cc3fa,
            limb1: 0x4db5d9162e8d65802e5d6098,
            limb2: 0x2f77e9f82d47d121
        },
        r1a1: u288 {
            limb0: 0xc97c05fabe68992903383029,
            limb1: 0x162409400a8effdbe7c6367d,
            limb2: 0x1565c46ae5b112df
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xea24e7900a436bf317478ca0,
            limb1: 0xd0f56ff1797bc611d4ae1f1d,
            limb2: 0x3c418fc0cf2f726
        },
        r0a1: u288 {
            limb0: 0xc4223d8be2e91d84b3ac8975,
            limb1: 0x1ce6f4eadb69100691b71de,
            limb2: 0x295c08cf50b48d0f
        },
        r1a0: u288 {
            limb0: 0xa44221be1222116e2cc4b43d,
            limb1: 0xb55b15269181231817e23c24,
            limb2: 0x259de9b2fd54c8cf
        },
        r1a1: u288 {
            limb0: 0xfa61a6f1288d0c95b78f4e26,
            limb1: 0xeb5e302931748db1a1b6fbf,
            limb2: 0x2a489e5bb2298e07
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6a936f1054a17c8941d28046,
            limb1: 0x5a389542909203e8815e70a9,
            limb2: 0x21d63a0261888a12
        },
        r0a1: u288 {
            limb0: 0x8bf123ba9a35a5694beb5b05,
            limb1: 0xd23410baddc4a2a47bada0b9,
            limb2: 0x14c3cf43af5e5204
        },
        r1a0: u288 {
            limb0: 0xa08db204b1ad99be9f83fbfe,
            limb1: 0x877331c61eed7c3b2d0a6cd1,
            limb2: 0x13b2add87f87d02c
        },
        r1a1: u288 {
            limb0: 0x133cfc3a2011a37913ab36a8,
            limb1: 0x181eb0a6e2c2d68bbaf3b2b6,
            limb2: 0x267d67f0ceb205d4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd55fe7d78ce4f5c45375c25c,
            limb1: 0x9d7b3e4cba5eda87a6e2acbd,
            limb2: 0x3446c858ae05714
        },
        r0a1: u288 {
            limb0: 0x111af5e109beb4a8cfcf1a33,
            limb1: 0xa9b8766678f81dcdeba4bd58,
            limb2: 0x25e8165ab47cf16c
        },
        r1a0: u288 {
            limb0: 0xbed52c0deb9d3cb77642da18,
            limb1: 0x7c84670729d75e9c2d8259e9,
            limb2: 0x2573ddcd40b66cff
        },
        r1a1: u288 {
            limb0: 0x5e51ab84a220d50a3f27e889,
            limb1: 0x55a5b15fe50ae32524f8108d,
            limb2: 0xea6eddc3a2b368c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x58d746e9541c1a34d8527412,
            limb1: 0x34f541e393c1b49edf2fa6bb,
            limb2: 0x25814632ecd6f22
        },
        r0a1: u288 {
            limb0: 0x355e5becfbb69bfa1d8c1472,
            limb1: 0x2e794f68a62207caba152b5a,
            limb2: 0x29f5e4ecf6473863
        },
        r1a0: u288 {
            limb0: 0x4c57c0dfbc8e521fb406ed82,
            limb1: 0xe0a474dd8a937a099aab10de,
            limb2: 0x2cec09c3e98baf1c
        },
        r1a1: u288 {
            limb0: 0xcd43e3e40acba308677ebafb,
            limb1: 0xa415645c3e27219ab6a65737,
            limb2: 0xd121cdaf441e9f7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xabbf0d7996402306079c9d3c,
            limb1: 0x55af37cfd85c8152e3817ebe,
            limb2: 0x21ffa3c638d96600
        },
        r0a1: u288 {
            limb0: 0xf2dfb94f438f30d557d5b387,
            limb1: 0xdf26966b68d093a79902cf02,
            limb2: 0x2d1d0dbaab9d8d31
        },
        r1a0: u288 {
            limb0: 0x82f53ecb21e057ccb3569ffb,
            limb1: 0xa6a16ff3acb2f36fe66018fe,
            limb2: 0x19f04fc4e32e9392
        },
        r1a1: u288 {
            limb0: 0x1c418fe57aec10a8aa9b2213,
            limb1: 0x6b945fee639ecd8223c7e032,
            limb2: 0x2368607587c1ea43
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddc513e1657761614d3d8689,
            limb1: 0xc962ad7bec64aa4c6c9e9d76,
            limb2: 0x848966e97739ca6
        },
        r0a1: u288 {
            limb0: 0x73c42a5097546a17e3b4303a,
            limb1: 0x3a71549485014ee8a51e5110,
            limb2: 0x1e3e02aef415912d
        },
        r1a0: u288 {
            limb0: 0x58698797a25bf7e249d7555c,
            limb1: 0x82c972763cd621a2f4cae411,
            limb2: 0x9086a71f5c335ed
        },
        r1a1: u288 {
            limb0: 0x23525ccff1b8be1fd8dede4,
            limb1: 0xd7c18879cf2a72c09d37fc03,
            limb2: 0x897e21029361bc7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc6a91e2f8debc303727ec40d,
            limb1: 0xb7df539cc597b7b9d046501,
            limb2: 0x1cc08a4ae26c663a
        },
        r0a1: u288 {
            limb0: 0xcd5721990d8a1033a26340f0,
            limb1: 0x585412ea6b0ded27c1b1a67d,
            limb2: 0xb0695ec6b30ae9c
        },
        r1a0: u288 {
            limb0: 0x882d8fa3f3242f5342cbc87f,
            limb1: 0x2726abb07c6342ac0fbfd1a1,
            limb2: 0xf4e85cd90241f04
        },
        r1a1: u288 {
            limb0: 0x3848b23d859d2c3b4719e81d,
            limb1: 0x7f1f9c91f1e9992cbd3a9669,
            limb2: 0x16601f23b8a9df5f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xef8ab83666a8ad40adbbd14b,
            limb1: 0x80aaa76fcc9b19b25086a1d,
            limb2: 0x253bfb9b977bd87
        },
        r0a1: u288 {
            limb0: 0x22299f0ddacaf6c846c19c6a,
            limb1: 0x80dc8562a8f71f88480ccb51,
            limb2: 0x1f52576bf6334635
        },
        r1a0: u288 {
            limb0: 0x87d47ad95bf7bae5cad45805,
            limb1: 0x8fbf78ca69af1dc57846abd2,
            limb2: 0x9b0bb2bcd808f2c
        },
        r1a1: u288 {
            limb0: 0xed0bca56db4784d3cb986e65,
            limb1: 0xa1c644f0938b6d41c1b4a5dd,
            limb2: 0x34d2538222be0f9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf7d68d53bd70223e846706cc,
            limb1: 0x3c8e178381ce0730c958c48b,
            limb2: 0xb024b3c9bede70d
        },
        r0a1: u288 {
            limb0: 0xe2b311e1ec9626be5e9646f2,
            limb1: 0x44cb9d7ccdab23940e0da1e5,
            limb2: 0xf1c345c36beb0af
        },
        r1a0: u288 {
            limb0: 0xc95da2f22f45b708bd73b24f,
            limb1: 0x9fcbc63a437c007dcfa0a01e,
            limb2: 0x31f234c880739
        },
        r1a1: u288 {
            limb0: 0x83ef7fa45e3c21bc67b8ed3,
            limb1: 0x918c9c206720d7f6c716c85b,
            limb2: 0x20bc3e0d1226fc2e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb3c7e52f82f3f40a3f5352,
            limb1: 0xa49c761756ae85da1bc1cba3,
            limb2: 0xb9e4a215361a395
        },
        r0a1: u288 {
            limb0: 0x31e8533195ce32dbaa9298cd,
            limb1: 0x67e6e31c79b5260a8dc1e9bf,
            limb2: 0x2d76e16d9093dfe6
        },
        r1a0: u288 {
            limb0: 0x3f6d20202512904f181d8306,
            limb1: 0xaedbf4e635cdf24a5c3452aa,
            limb2: 0x1bcbd188f65fb79d
        },
        r1a1: u288 {
            limb0: 0x81fc97f46586636d0622047b,
            limb1: 0x3b5480aec109a549edbf4bab,
            limb2: 0x2dec0a7665f8a489
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbb792500be7afcd4943dfa61,
            limb1: 0x8e69840a0180a1c4afd6d38e,
            limb2: 0x2ed5b74531096513
        },
        r0a1: u288 {
            limb0: 0xb3f32d938f547fe72bcbd48a,
            limb1: 0x9337f96000940f4091874a35,
            limb2: 0x21af4ae51fb57753
        },
        r1a0: u288 {
            limb0: 0x28d9f78a1ebb01f2afa1e66a,
            limb1: 0x12fe0de16bc554663c7febe3,
            limb2: 0x11ce91148bb77f52
        },
        r1a1: u288 {
            limb0: 0xde1daebb9a73a1f2867269a5,
            limb1: 0x6bd281d860b65540af9da4b4,
            limb2: 0x501e731576bb819
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x31bf72c1d63fc5b56802b92a,
            limb1: 0x11368cfdc9f9eb52e9bc18bb,
            limb2: 0x249382c264a2bfde
        },
        r0a1: u288 {
            limb0: 0x433722cd1cdcc33246080a5e,
            limb1: 0x26bdfb5e87df92643279da5e,
            limb2: 0x15065f11816826ef
        },
        r1a0: u288 {
            limb0: 0x41c343a648e233dd9f9c194c,
            limb1: 0x800ade4436ab327642776359,
            limb2: 0x10da3f393fc00611
        },
        r1a1: u288 {
            limb0: 0xd3ab9a323837c5267c1811cd,
            limb1: 0x24353b398b610280c5816652,
            limb2: 0x2aa54e6224c40b83
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa5e211e4af7b24e8bdf13c19,
            limb1: 0x13e6012ba484d4c728be8046,
            limb2: 0x20fb13c7836bbb59
        },
        r0a1: u288 {
            limb0: 0x5d877bb5248c9c1d565a6702,
            limb1: 0xb13dea47b8ae8f3669552bc2,
            limb2: 0x494a2b5130a415d
        },
        r1a0: u288 {
            limb0: 0x235edec8f67f46e2fd84de4d,
            limb1: 0xc50ccfed9eceaf927b3eb7db,
            limb2: 0x39acaada84daab1
        },
        r1a1: u288 {
            limb0: 0x7c4aae6a714500d28b1fb1a9,
            limb1: 0x1331987c5df807bf6c20225d,
            limb2: 0xce20722d7b8d1f8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa5d5b8a5c630a9e058b3f8e4,
            limb1: 0x45dbc2d4367c0cd0c4a9516b,
            limb2: 0x214b53514557afba
        },
        r0a1: u288 {
            limb0: 0x7b31a5b66be2ae25e078abd2,
            limb1: 0x93fb11220e52822d0a054fbd,
            limb2: 0x21816a0d56a5cf0f
        },
        r1a0: u288 {
            limb0: 0x345539ab1d50aa7a92781aa2,
            limb1: 0x4d4f427bebe54ee68fe5996c,
            limb2: 0x1e47e8b13a44f413
        },
        r1a1: u288 {
            limb0: 0xa7453f23c04d8202e2bd8c2c,
            limb1: 0x3f13b72eec997dc3657c9a74,
            limb2: 0xe8ee551bab10632
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd33a5438d5a21d3235c5d8f2,
            limb1: 0xfa5413f7cab0ecbb4882e22f,
            limb2: 0xc20e2ea7568ca28
        },
        r0a1: u288 {
            limb0: 0xe150b8d24c46a99ffe382f93,
            limb1: 0xc4e4a74b6d09026a6e69a919,
            limb2: 0x1f798eb32027ba59
        },
        r1a0: u288 {
            limb0: 0x3452322957c327d44c5c68c5,
            limb1: 0x75b6ce46473a981f19f45cda,
            limb2: 0xa829d9db951761d
        },
        r1a1: u288 {
            limb0: 0x9f3e06336282210a3dd02668,
            limb1: 0xe6667c565a63bd10e25fffbe,
            limb2: 0x1191e963e08a1a91
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa2a8a977be878bc98f4d143b,
            limb1: 0x667e5f8319786d0f0d7ae29b,
            limb2: 0x223b7233505643ce
        },
        r0a1: u288 {
            limb0: 0x6d9ca5de50cb7d01574a530e,
            limb1: 0xe261f15bc6913d6bd6180080,
            limb2: 0x2ef2d0c6fe448a63
        },
        r1a0: u288 {
            limb0: 0x3447206d3135a6b7d22e8a8d,
            limb1: 0x77c12a6e09999f9d3859837a,
            limb2: 0x1125436366c06573
        },
        r1a1: u288 {
            limb0: 0x4ff71d18b94e15f05a8ff7e9,
            limb1: 0xa4816fa4752e6a74259a7dee,
            limb2: 0x1f5ec81496c88cd6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa2920333ba38237a51ac37af,
            limb1: 0x292ddbd071a43e158aee8e7f,
            limb2: 0x29c45e5eeb4c368b
        },
        r0a1: u288 {
            limb0: 0xcc9d1658ef3909708cebae7b,
            limb1: 0x6b338a385d46833e7f56e333,
            limb2: 0x2222c936d880adac
        },
        r1a0: u288 {
            limb0: 0x406a7580dc6527e2ce94d3b2,
            limb1: 0xb8a784abc6d205da4b2f99ef,
            limb2: 0x23b4c667e63899af
        },
        r1a1: u288 {
            limb0: 0xeea418b661cab748b03bcdc6,
            limb1: 0x9bc76907abe0743ddf2b6f80,
            limb2: 0x17b3c1e50df43ca
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc85c3ccf6bce2795ff93c24,
            limb1: 0x8f86b6969d9935a3d9f54c72,
            limb2: 0xfbe6c1db55940e9
        },
        r0a1: u288 {
            limb0: 0x1a0d6a113b02f03806fe8367,
            limb1: 0xd222ba9b56f72b3e08aa5bda,
            limb2: 0x692655f1a6da7f8
        },
        r1a0: u288 {
            limb0: 0x951e2ba99bb810428e4d576b,
            limb1: 0xe0262f5bef125222dfc3f847,
            limb2: 0x1eb1b39f7da5063e
        },
        r1a1: u288 {
            limb0: 0x18f899d6ff2238bbf2f868b3,
            limb1: 0x6c0bc6174e157d5c698166b8,
            limb2: 0x211a88cc4b56d4d7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e9827aaf5646bb56865676e,
            limb1: 0x654b069cb7ed41d16e426462,
            limb2: 0x2e069e5f71a5289
        },
        r0a1: u288 {
            limb0: 0x6b8de394bf46eb8b43b86527,
            limb1: 0xd00aa25794f818fa75018073,
            limb2: 0x1496224ff2990acf
        },
        r1a0: u288 {
            limb0: 0xe3fc99f1fecaaf1a6b6d8903,
            limb1: 0xd94e4ea1d1a2a525adec8bfc,
            limb2: 0x164b3badac083658
        },
        r1a1: u288 {
            limb0: 0x8c76d328efd457478c70df36,
            limb1: 0x2365ca785f645b9443f7d6af,
            limb2: 0x1e62aa70c12d5684
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe1d4703647abe92b5609aa7a,
            limb1: 0xf3d7539383ad0b984b78ed13,
            limb2: 0x7ab2224c1ea9989
        },
        r0a1: u288 {
            limb0: 0x19dbb507801a4b1ddff96fa,
            limb1: 0x5b1d6251f1c2c9afc7a28a63,
            limb2: 0x15e616d952117705
        },
        r1a0: u288 {
            limb0: 0x68b95e4a80e9f93debd2aa60,
            limb1: 0xd01844cfb3254df5412081be,
            limb2: 0x187f7065e2f3c516
        },
        r1a1: u288 {
            limb0: 0xb2bb028692daa02655bee12a,
            limb1: 0x2f052b430f7a127223567ca8,
            limb2: 0x1051895b1422c1d7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x70448fd38b9aebdea2de3874,
            limb1: 0xdf7f28831bdbe127cc5a92c,
            limb2: 0xc5dacbff3c1efd
        },
        r0a1: u288 {
            limb0: 0xf5ce55df5151672bf024b204,
            limb1: 0x84a56191b64f56c5efde4f27,
            limb2: 0x26cfdeeb041ab350
        },
        r1a0: u288 {
            limb0: 0xbdd378301a0808f684398971,
            limb1: 0x498f402d7b59574d4696dc26,
            limb2: 0x115113bef53cbc18
        },
        r1a1: u288 {
            limb0: 0xe6b82b6fa846e12010855ea1,
            limb1: 0xbc29d23512ca787fe1c70d94,
            limb2: 0x20110c07db0c4564
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x13ea2763fae8a7c1d033e852,
            limb1: 0xbc4cdef625a5a22944d6f81c,
            limb2: 0x17d2ccacfcd4a0c3
        },
        r0a1: u288 {
            limb0: 0x1ed9b25f74b51986416737e8,
            limb1: 0xb764eacee67f6c82bd31aa5c,
            limb2: 0x22232fe5b922fa25
        },
        r1a0: u288 {
            limb0: 0x1df18745755ea294497afeb9,
            limb1: 0x35f2b00ff3518cd42fe8d42f,
            limb2: 0xe46f2ea65062169
        },
        r1a1: u288 {
            limb0: 0x31c4f288fa5c49dcb6fe6651,
            limb1: 0x30fc196fbda612fe3837ace,
            limb2: 0xb9e32273df3bc1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2bb7dc257593f918a2299b3,
            limb1: 0xe636aa60bd6b347f732c188f,
            limb2: 0x2b6ce071a8ba4df0
        },
        r0a1: u288 {
            limb0: 0x7561eb66bc74acd4d93ebaf0,
            limb1: 0xeee150222ef3890c1a9caada,
            limb2: 0x49ce4edd597c5c8
        },
        r1a0: u288 {
            limb0: 0xff5738e9760119d8f27cdcd9,
            limb1: 0x49bd0e7b86eda746cd1bc639,
            limb2: 0x2a3fba6d1cbe89c
        },
        r1a1: u288 {
            limb0: 0x98cb0bb9d95f2a3748d247fe,
            limb1: 0xf5b7dba5a28b3c3ae1b612aa,
            limb2: 0x23ae632203bff3f7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7b21eda85c1f568670df8abe,
            limb1: 0x6db1bdb1fd3d112430f325db,
            limb2: 0x2a12f09ebbbb18ba
        },
        r0a1: u288 {
            limb0: 0x7f118f7e259ca511dfa3d91c,
            limb1: 0x239b51bb02bf2160922f5db4,
            limb2: 0x235da653cb915333
        },
        r1a0: u288 {
            limb0: 0x2b406a57b529e50bb9973b2c,
            limb1: 0x739df9489a9d632c3bd645cc,
            limb2: 0x92e9363ba703c15
        },
        r1a1: u288 {
            limb0: 0x2909b811750115bdaa86978e,
            limb1: 0x5301441e2a9c4923302c5d3d,
            limb2: 0x26f9a9f0742a072
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8b235839ce2120f47dc514dc,
            limb1: 0x7dc7213c17d06054f355b909,
            limb2: 0x1a89db4559ed1cc0
        },
        r0a1: u288 {
            limb0: 0x78b7b40779cc88e655d424b,
            limb1: 0x60a66a864ae935afd99f5f17,
            limb2: 0x175a9f4af2c7eb0b
        },
        r1a0: u288 {
            limb0: 0xa7ad2a2a49cdb507eb0d1bf,
            limb1: 0xf5f2f5ad755203d611739ec,
            limb2: 0x249728e1d47fded7
        },
        r1a1: u288 {
            limb0: 0xf46f2d37a83b68cfc1cac366,
            limb1: 0x22426350986816b58975e0af,
            limb2: 0x1cffd84ab1881cdb
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddfee6c8cce2f761cd92a880,
            limb1: 0x568b2c17a54d3c7edbe4fe8c,
            limb2: 0xcb95102b586e6ad
        },
        r0a1: u288 {
            limb0: 0x945136cbe2e79b53a63689f9,
            limb1: 0xaff738e7e743f11959d28534,
            limb2: 0xc7f30f7511f3531
        },
        r1a0: u288 {
            limb0: 0x7b87f74dd45553a95aadd8ce,
            limb1: 0x181664d2eff7b8b632df649,
            limb2: 0x31959af7c2fb8a5
        },
        r1a1: u288 {
            limb0: 0xc44dfa41dc3faac9f4f74e20,
            limb1: 0xefd276c113c37b5e377c4b33,
            limb2: 0x126ae8a0aca919f5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x89f70f341ab3e44f040d520f,
            limb1: 0xd74de29229cdf12bd109f4da,
            limb2: 0x18a734964894ee6
        },
        r0a1: u288 {
            limb0: 0xb220b69d668097ee0e9a6f34,
            limb1: 0x94a51acf45da677424a234f0,
            limb2: 0x1d3947c2158beb12
        },
        r1a0: u288 {
            limb0: 0xedf3a7ceb48f09169f44f9be,
            limb1: 0xe320a29e8d4025271a9a94e,
            limb2: 0x152db42b04ba5ed7
        },
        r1a1: u288 {
            limb0: 0xf28132bd56b23f410a0afaca,
            limb1: 0xbd572c0f2f39ac00ab06716d,
            limb2: 0x192363468234ea37
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5495d57f4ce0a7f2b7dad321,
            limb1: 0xd6c9984a8b45d94a5196f4ee,
            limb2: 0x29f87fd515b99394
        },
        r0a1: u288 {
            limb0: 0xa7c4cf9edeff0eee743812f2,
            limb1: 0xf6212535a7fabe0bb8ce3e44,
            limb2: 0x23f15de8735a0c7a
        },
        r1a0: u288 {
            limb0: 0xef323d3a536744cb1408091e,
            limb1: 0xe4b8d3700911c4c112dc350f,
            limb2: 0x19a57905b5903dc1
        },
        r1a1: u288 {
            limb0: 0x565ddddee19938319bab5acc,
            limb1: 0x163f43615cc3db411eee3beb,
            limb2: 0x4cb0d758bffb1fd
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa66f39a1b4478b27bdda68ef,
            limb1: 0x93cf245d1a895a54fd889c5,
            limb2: 0x2cb677a28a16598f
        },
        r0a1: u288 {
            limb0: 0x79a3fe99e81efc37c7a74b4f,
            limb1: 0x144e49131e378ae9f1b2a64b,
            limb2: 0x6e41d1411804d1d
        },
        r1a0: u288 {
            limb0: 0x80c7a9dab9dbdb67ca63db15,
            limb1: 0x2588ae7eec403f44c1cda25d,
            limb2: 0x575c232cbf98c32
        },
        r1a1: u288 {
            limb0: 0xee911e2b7849ca642a333998,
            limb1: 0x90440313ce7f77914438e892,
            limb2: 0x24219919ec08583f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe2340ed8288b209245d025e3,
            limb1: 0x3e3755c9bc0b52c41b09e620,
            limb2: 0x4d7f26864f312f7
        },
        r0a1: u288 {
            limb0: 0x555e89dad785835a71d9e6bb,
            limb1: 0x28d9e8c7fd71be0aef1e6b4c,
            limb2: 0xc4e4639649a3fc2
        },
        r1a0: u288 {
            limb0: 0x4aad45eeff3e4692fd535bc6,
            limb1: 0xf9bc3749782efd4d4f5f8679,
            limb2: 0x2186c2112c90e9ff
        },
        r1a1: u288 {
            limb0: 0x30fcea695ba1a7189485d431,
            limb1: 0x6232bab8e2ff8bf9169f5049,
            limb2: 0x129e1e149cd850a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd91e3a4137db451100d2ebef,
            limb1: 0x9d081e02c64d896d0b5f6a1c,
            limb2: 0x1d80f8ea144ae5f3
        },
        r0a1: u288 {
            limb0: 0x290f2f9078a7ee3b6b4dcb1,
            limb1: 0x26cdf48bab2a61e011f080eb,
            limb2: 0x18e6f6aa17ac1788
        },
        r1a0: u288 {
            limb0: 0x5a2e7ff35a882aa9d5098b15,
            limb1: 0x85529c2e56bda3134b3cb849,
            limb2: 0x284098d1198a4a87
        },
        r1a1: u288 {
            limb0: 0x44278b45025b1677fdb2b53c,
            limb1: 0x89c6f060ec7cab0693cc014b,
            limb2: 0x2598e98bd9b85151
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc491308e707d237a262a1d1b,
            limb1: 0xb27eea2b1331f270276bdf8d,
            limb2: 0x158c816eecad553e
        },
        r0a1: u288 {
            limb0: 0x6c01c8bc09e6e3bdd3afb754,
            limb1: 0x2e9873e44163bd019933aa29,
            limb2: 0x1e02e85ad1248fda
        },
        r1a0: u288 {
            limb0: 0x4fad730661993841470ab377,
            limb1: 0xc7a4c2be2ad2b958f2ed6fc6,
            limb2: 0x1a0e0a4579a0a742
        },
        r1a1: u288 {
            limb0: 0x657f4c2febc2ebe205dc3457,
            limb1: 0x669a213a96fefd28db4f5a1a,
            limb2: 0x3da0164f98bf0d9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7ed4049b72f942b794731567,
            limb1: 0xce61b48a9cf94915dad77671,
            limb2: 0xcd95717c97c57e8
        },
        r0a1: u288 {
            limb0: 0xe15b0d4e639dd50e1558d043,
            limb1: 0xddc35718eb13fb256b78e975,
            limb2: 0x12e40db761f87295
        },
        r1a0: u288 {
            limb0: 0x5585ebe1a8ef46684299ee6f,
            limb1: 0xf9b8e79729eac46309cf3008,
            limb2: 0x281e148ead659fb9
        },
        r1a1: u288 {
            limb0: 0x534808cc4b902c2fbb11c5e6,
            limb1: 0x8e9014358c1d2013b9b7ae8b,
            limb2: 0x2161141468ad3d2f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc3108ff068dba8b49781c4ee,
            limb1: 0x396470302dbe4e3c2340e924,
            limb2: 0x12b7c473dee38afd
        },
        r0a1: u288 {
            limb0: 0x37dfbc8d9c80378b18b8846f,
            limb1: 0x82d36d433a68a58b90168e4c,
            limb2: 0x2d247c2660b4ecfb
        },
        r1a0: u288 {
            limb0: 0xa2c163549c2fb3314b9d9fb4,
            limb1: 0xf273e6acbcc8783520201559,
            limb2: 0x31bbdd49c319d71
        },
        r1a1: u288 {
            limb0: 0x7983e63a49db9d34e84904ac,
            limb1: 0xa26b75abf5a28861f255c071,
            limb2: 0x1dc75f4c4adcbf39
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcbfd6e47735de06770946e3f,
            limb1: 0x70caace5f89a64c62fae5dac,
            limb2: 0xeeaf3c4a0e67e61
        },
        r0a1: u288 {
            limb0: 0xa9399e458c5659ad1ee682eb,
            limb1: 0x9baa23c32d77bc97efa8944e,
            limb2: 0x8d9a3cf0a66a4d
        },
        r1a0: u288 {
            limb0: 0x5526bf6a6a624f31db5f26e5,
            limb1: 0x16b6b01bf87032ff8d843bf4,
            limb2: 0x11b3e9d47717b0d8
        },
        r1a1: u288 {
            limb0: 0x21b9319c785b6a5badf67e84,
            limb1: 0x758665f26d3fd848313149f3,
            limb2: 0x24ff18f43a0d0985
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x99b744ae962fe51ef025b6a0,
            limb1: 0xf16081919c8ab4e22e5a797d,
            limb2: 0xbeeac2d9463bf9
        },
        r0a1: u288 {
            limb0: 0x538f40e9cad72031a31f0c65,
            limb1: 0x5a46b656f3fd6c3da5838c80,
            limb2: 0x2514845d9b7751b4
        },
        r1a0: u288 {
            limb0: 0x873ecef9ad9547d9a8ee858e,
            limb1: 0x811cad4b1a965de4f5bd5062,
            limb2: 0x279e7d90c282155d
        },
        r1a1: u288 {
            limb0: 0x257b0ce8d0c7ed4722b9e980,
            limb1: 0xd18959913dbfb897695c2769,
            limb2: 0x1cac8a0f780c9406
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbbf746168a8530bcdd20b938,
            limb1: 0x1bfc603ee78d4ce921126904,
            limb2: 0x283ec088f7bb480d
        },
        r0a1: u288 {
            limb0: 0x546c4317ec336f784136c840,
            limb1: 0xacfa12da1daa474f8f1d5082,
            limb2: 0x7347ce8a541e1ee
        },
        r1a0: u288 {
            limb0: 0x53805fcd0d9af91c4f13581,
            limb1: 0x5182ce9cb962d8f24aa1f51c,
            limb2: 0x20f4c9f49b8037c0
        },
        r1a1: u288 {
            limb0: 0xf6dca305c559f93b8b76e952,
            limb1: 0x2ae55e519b38dfcf000c83bd,
            limb2: 0xf0dc68420648939
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf01473b8ed682c1ccf75c218,
            limb1: 0xe2dccdac4af0ffd4b06e77c,
            limb2: 0x54f87c5a0e899bf
        },
        r0a1: u288 {
            limb0: 0xb10cb9f995f16db062ea3f00,
            limb1: 0x930b787cd0aa96d1399af4b3,
            limb2: 0x131f2b278f3e37e3
        },
        r1a0: u288 {
            limb0: 0xa0932eb925ac5410ccfe3579,
            limb1: 0x8f8e9f577b154498ec3e60e1,
            limb2: 0x2857bcbce758de1e
        },
        r1a1: u288 {
            limb0: 0xa899735a4213c8b8ed53c720,
            limb1: 0xad5a4a5fe6729c8758d603e1,
            limb2: 0xcbcd99d2391e7d0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x61f48dc2619a7436cb031ccb,
            limb1: 0x57a0b11ab8fd099ac8158e96,
            limb2: 0x13af6324a1c9560f
        },
        r0a1: u288 {
            limb0: 0x8fead9149ed72d858d5c78c,
            limb1: 0x74d68d10110da88f07493fdc,
            limb2: 0x1c34b1ee11d30f7f
        },
        r1a0: u288 {
            limb0: 0x94b90aa004eb4314d944ddb2,
            limb1: 0x40012ed1340de442f43cd5d1,
            limb2: 0x5cc7b066454c9ba
        },
        r1a1: u288 {
            limb0: 0x790a8bdc4d91f3d03b385e0d,
            limb1: 0x96c83e4d4cba9a41ce4605f1,
            limb2: 0x15abd2e6bf850fb0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5144b49a23efd5f55bb73a9,
            limb1: 0x57c57d3a3a5c09814e57bc96,
            limb2: 0xfc57c5fbb1a6105
        },
        r0a1: u288 {
            limb0: 0xe568734f9a844bd8d785e7ce,
            limb1: 0x82b7a423d1f451b2b0be79e1,
            limb2: 0x7df7ad4522fffa8
        },
        r1a0: u288 {
            limb0: 0x302508e0fb0f43d425a99898,
            limb1: 0x38cc978c8241787b15dec61a,
            limb2: 0x17f530868ee2037d
        },
        r1a1: u288 {
            limb0: 0x451212261db6d00782c5b163,
            limb1: 0x527246bedae99cd1081791c9,
            limb2: 0x101c25584f3cdff6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc74d1cdd5ac544c8e252911,
            limb1: 0xbfc44f1a5f56fae8585792ed,
            limb2: 0x206a1a98ccc4154c
        },
        r0a1: u288 {
            limb0: 0x2f88ea1b9751713d0b6cd75e,
            limb1: 0xb5a765507df783948521ff1f,
            limb2: 0x2d9a09454a3817e
        },
        r1a0: u288 {
            limb0: 0x3108bf00dd0acf567f09f1b8,
            limb1: 0xab182d0289c706fdf6aa8c04,
            limb2: 0x15f4cf595a062e0a
        },
        r1a1: u288 {
            limb0: 0x99caba0d8cb0a97caed25b74,
            limb1: 0x70fd8a3389734b7624bb1098,
            limb2: 0x18d513bf92854b5d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1640f9a6b14f78bff17352c4,
            limb1: 0xd13692aebc0bfc896ed3bb38,
            limb2: 0x9c4208ad66081eb
        },
        r0a1: u288 {
            limb0: 0x2e9558e72d9b881c8aae13f2,
            limb1: 0xea93cbbf5f35bd20b5a23cf1,
            limb2: 0x2c4e3e553b6a3588
        },
        r1a0: u288 {
            limb0: 0xc11ec78caefc511d413be102,
            limb1: 0x7ca67684e9931226674c4ec0,
            limb2: 0x150953a47c081b26
        },
        r1a1: u288 {
            limb0: 0xb5a692aa2b0e87562aa6e090,
            limb1: 0x3bcdbfbe45f41f71510681b8,
            limb2: 0x22d14e0bde6549ef
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf6dba0e155b4e214982aa2bc,
            limb1: 0xc54e92e3da34b49272e083e2,
            limb2: 0xff33ff8cab8766e
        },
        r0a1: u288 {
            limb0: 0xd5d8b5096b13f8d00cb4c430,
            limb1: 0x93ac628c81819bce94b862e8,
            limb2: 0x71a985498d93917
        },
        r1a0: u288 {
            limb0: 0xeb9d6ec91139c0d69027d628,
            limb1: 0x72eda6eb7f60ceb3fe79c360,
            limb2: 0xd29828df7104a8c
        },
        r1a1: u288 {
            limb0: 0xd10a9da8ffa8dc712b729a1f,
            limb1: 0x4f971439795df5bfb68e1296,
            limb2: 0x3ddd4beafeb2359
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e39cc96d5a007147569d0f3,
            limb1: 0xeb0f1e2a11071807228a872e,
            limb2: 0x1f0ef0413057585c
        },
        r0a1: u288 {
            limb0: 0xec68a2f64d58bbcc15e79fa4,
            limb1: 0xea1728ce05daaa3f1c864a17,
            limb2: 0x56d752ee91d9384
        },
        r1a0: u288 {
            limb0: 0x44faf164b04596055bca351d,
            limb1: 0x1bfd7ecc3f477b7ff86a3271,
            limb2: 0x2355104c39480b4
        },
        r1a1: u288 {
            limb0: 0xa32bf27066895d725aac3fa4,
            limb1: 0x76cf7ad4044aaadb4479909c,
            limb2: 0x21d992996d664057
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcd2d98612507c025261ae47,
            limb1: 0xcf3d7eeb65c8b49235a356f7,
            limb2: 0x971c318e961e013
        },
        r0a1: u288 {
            limb0: 0x2f12b4142fc88eb7f2a2649f,
            limb1: 0x9e634aefba9fdb8546329624,
            limb2: 0x1299371848ec56c4
        },
        r1a0: u288 {
            limb0: 0x3ba6d581d0d5fc065949c3ec,
            limb1: 0x6312250d20e0c232e91eeb0b,
            limb2: 0x10bcb9f96c227ee7
        },
        r1a1: u288 {
            limb0: 0x3015ebf2a335947c1dc2c165,
            limb1: 0x3bd4a531169a57823c77dcf1,
            limb2: 0x4cb027a73d1f5a0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfb203663a236e515d5387ea5,
            limb1: 0x7169c257a429dcdf6f7f42c5,
            limb2: 0x1bdc9d258622d886
        },
        r0a1: u288 {
            limb0: 0x833ba73bf61985c077b02505,
            limb1: 0xff2015a0ad6fe0ab5b071aca,
            limb2: 0x114406f7367c616a
        },
        r1a0: u288 {
            limb0: 0xc4b943447923d56b79c1cb44,
            limb1: 0x5b9cdcfc70b08bd055f426bd,
            limb2: 0xa44f7aa99f252d3
        },
        r1a1: u288 {
            limb0: 0x33c7f4c21489a2005c342f17,
            limb1: 0x32103eee3ed5811fcc754ee3,
            limb2: 0x26fa5c581ffd2819
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5ce2f5499890ac26779bf848,
            limb1: 0x9ac8def9db4018cd4d190a8e,
            limb2: 0x1ddab26aa1ebbf20
        },
        r0a1: u288 {
            limb0: 0x60df1f28f25e606683c9f0d3,
            limb1: 0x6f0efa36ed1ee30e7edb6368,
            limb2: 0x1c619edf58fd5cb1
        },
        r1a0: u288 {
            limb0: 0x6415f79fb159962a6cff94b6,
            limb1: 0xd26cc79eedb70f07ce93f25b,
            limb2: 0x2114b1d49ed706bf
        },
        r1a1: u288 {
            limb0: 0xb4a1d3345a8c161da560071e,
            limb1: 0xb85a391ae68bee6d3a1a9597,
            limb2: 0x104663acb80e873f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a80573cbe4ee82779bb30b6,
            limb1: 0xd9dc754551f6bb229f4accb2,
            limb2: 0x13094fc57115b321
        },
        r0a1: u288 {
            limb0: 0xc6df4163203d98ddb5c4e21c,
            limb1: 0x96c960317af8a0214516e469,
            limb2: 0x9aff49fe8278d9e
        },
        r1a0: u288 {
            limb0: 0x539c429a994b070fd6f082d0,
            limb1: 0xc588286b1589f5ee5c026309,
            limb2: 0x1e6461d1731661cb
        },
        r1a1: u288 {
            limb0: 0x2177c4ff0fd812818aff810,
            limb1: 0x348d959b49e0e7c798538dec,
            limb2: 0x2e5d84074ce7c2b1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf4df72da4d94eddb055ce972,
            limb1: 0xab3a58ba6c1e59c95897e187,
            limb2: 0x1890fa29ceee9486
        },
        r0a1: u288 {
            limb0: 0xefc489d12d8a018f22018c36,
            limb1: 0x61e04e7de91a5d3d13df110c,
            limb2: 0x1314875f2c20e0c7
        },
        r1a0: u288 {
            limb0: 0x3d1e9367ff41c708e19605eb,
            limb1: 0xee5bbee8092ef53e2b87cf,
            limb2: 0x268efdb04ead405a
        },
        r1a1: u288 {
            limb0: 0x567ebeaa8d41bdc86a2644c9,
            limb1: 0x426dc897a612d5de7035fd89,
            limb2: 0x256f22eb88641f30
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4d6eecfab1483f36c7a82f3e,
            limb1: 0x427ab636b3b23920673a97b,
            limb2: 0xaffadf9a32e7db8
        },
        r0a1: u288 {
            limb0: 0x801d61501a92f868c1db9944,
            limb1: 0xb3d8ee601cb76cbeb0764ad4,
            limb2: 0x177b2c6dd6a44cb1
        },
        r1a0: u288 {
            limb0: 0xb2945311bcdad6cd4ea08285,
            limb1: 0x6c1ebee25cc16829acdbf462,
            limb2: 0x111cc33f4100bad8
        },
        r1a1: u288 {
            limb0: 0xa189598d7e59a303ac500595,
            limb1: 0x54a3bc88b938fee54fbb175,
            limb2: 0x2d35c180f5ed4d1a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbacce9b6bd007be19f7a5e13,
            limb1: 0x68643dcd3a1a431d3afe0bd3,
            limb2: 0x1bc98e4fedf6994f
        },
        r0a1: u288 {
            limb0: 0xffb4caf2b3ec68eea0f5eef1,
            limb1: 0xef1788e01a0b019d168f6a1,
            limb2: 0xadea043cd91519
        },
        r1a0: u288 {
            limb0: 0xb6e12b01caf583dc644cda0c,
            limb1: 0x87b1912875dd568c3186be34,
            limb2: 0x28664ba83054d283
        },
        r1a1: u288 {
            limb0: 0x866dcbfbbd2d127e324371f,
            limb1: 0x19f579a028bdef8a6530a288,
            limb2: 0x225c291b60e2a00a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95d1008debbb12390753a64a,
            limb1: 0x32f100363560c16ca29dec8b,
            limb2: 0x118cda9a641a26b
        },
        r0a1: u288 {
            limb0: 0xdf284f8365a4c39158f68757,
            limb1: 0x2472ce2406cec468dc85ddfa,
            limb2: 0x188086f5bac73356
        },
        r1a0: u288 {
            limb0: 0xea4dee15baedc2eb70538a69,
            limb1: 0x74dfed7ddfd8f534f9fefe27,
            limb2: 0x64e4193a1fd9949
        },
        r1a1: u288 {
            limb0: 0x3679fcaaface30aee9837bdd,
            limb1: 0x11a7b11933613a59fa0ca0ea,
            limb2: 0x25c25a0de78ae840
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd08178ca081415542fe3537c,
            limb1: 0x9579f8a72294f411f52cdfe6,
            limb2: 0x2cf9f83466d83d0f
        },
        r0a1: u288 {
            limb0: 0xbbefc68aad9a9a83ba136f25,
            limb1: 0xaf3bc54c9071bc1589583955,
            limb2: 0x141aeb68b87be8ce
        },
        r1a0: u288 {
            limb0: 0x18cca1b9c3f745845ceb09ad,
            limb1: 0xfe3bed4116b724def715da71,
            limb2: 0xe032ba463f32f62
        },
        r1a1: u288 {
            limb0: 0x49c4951f917a533320181c46,
            limb1: 0x8490cb50dec6b45af6064f8d,
            limb2: 0x6f8246ed934bd72
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x73930fa75a3cc346cea8c2f5,
            limb1: 0x10fc18f310fb8eaec2aaf61d,
            limb2: 0x1d541e08d74ef973
        },
        r0a1: u288 {
            limb0: 0x8f14cf958681deea73ae0f65,
            limb1: 0x3db8d8c2f76e6c9eea814016,
            limb2: 0x8c8482541a5256a
        },
        r1a0: u288 {
            limb0: 0x6e9c8b0e4a218fa880c30aff,
            limb1: 0xa0a29b61d86b70b139b2005b,
            limb2: 0xf9a9ab747f3a7f9
        },
        r1a1: u288 {
            limb0: 0x134d1d804337f253e4661d4a,
            limb1: 0x712eb86384c41ca6ce1c78f9,
            limb2: 0x296793c6e83732c8
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x97d69f74fb1bd16ebf66de20,
            limb1: 0xf719d81769b97ea33f70c1b9,
            limb2: 0x4e3df4fde8f2c08
        },
        r0a1: u288 {
            limb0: 0x2abbbac9475b4816935ffb20,
            limb1: 0xd91c96eca9577046e71329d3,
            limb2: 0x12016a2814ab2d72
        },
        r1a0: u288 {
            limb0: 0x3709819acdd2db99aa550e02,
            limb1: 0x533a5328b7564de0b9849619,
            limb2: 0x9a4e13a443afb0e
        },
        r1a1: u288 {
            limb0: 0x234602ff023aa100669b9f7c,
            limb1: 0x6dac00368a0a879f332a4e4a,
            limb2: 0x14f563c7195baef9
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc2be99c9da22eeac37a5da,
            limb1: 0x6b3f7558e589927d6c43d2a6,
            limb2: 0x289e12345c099740
        },
        r0a1: u288 {
            limb0: 0xf06c2d6bf47322a816b8ba9f,
            limb1: 0x35fd88fd3756d7d757496938,
            limb2: 0x2ca548f9c8490d61
        },
        r1a0: u288 {
            limb0: 0x83ad3c15a447a025a8906568,
            limb1: 0xc70dc07411469c9c7ca23c28,
            limb2: 0x1fb9aa5e67dfde31
        },
        r1a1: u288 {
            limb0: 0x806601a6e6d64cb0b4f00962,
            limb1: 0x7f78fe8dbda6e074c75f2516,
            limb2: 0x8828b7a875d1269
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x93c4f609aa4a405b6ab351a0,
            limb1: 0x639520a47638a483bce4dd7,
            limb2: 0x32ca9e1ed4747be
        },
        r0a1: u288 {
            limb0: 0xef121d6705d1f96ad1d29abe,
            limb1: 0x5dbf59214304f2f92aa22ad6,
            limb2: 0x1b0044df756a77e0
        },
        r1a0: u288 {
            limb0: 0x7f608cda4ffd7078d74a7c47,
            limb1: 0x874b89d2a598096eb01669d1,
            limb2: 0x29c280d20bf3bcf3
        },
        r1a1: u288 {
            limb0: 0x2eb474deac6c85ab5151999b,
            limb1: 0xba06b684281819b82e1f9036,
            limb2: 0x1998c3adb65d78aa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x71c47147a2c8e8f92048784d,
            limb1: 0x47780197f6de646d207752fe,
            limb2: 0x2254e30dc68df07f
        },
        r0a1: u288 {
            limb0: 0x722b63b918a74933c131c3ed,
            limb1: 0xd69c82e1cf0a7d6f4fceb082,
            limb2: 0x2820eb8d3bd814db
        },
        r1a0: u288 {
            limb0: 0xb16e1e8ff628049d2f0851ff,
            limb1: 0xfee1725a613731f684579dd1,
            limb2: 0x130e6974f11e338d
        },
        r1a1: u288 {
            limb0: 0xe0c38f6807ae71a1e1c5beee,
            limb1: 0x370d2f93ec995aa6b8d9da71,
            limb2: 0xf95ea4b1375d517
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xecd79e03df273be4999cc532,
            limb1: 0xb9e7aad9019218cf71365128,
            limb2: 0x2596132d23f94b39
        },
        r0a1: u288 {
            limb0: 0x46d3cd53a3a1c18885aa3a6,
            limb1: 0xeffa1a62cef8c45729c2a04d,
            limb2: 0xdd17ae7d0d5209e
        },
        r1a0: u288 {
            limb0: 0x20b5e4bf101d47872e2c25a0,
            limb1: 0x94c40381f4e9fb79e2283d87,
            limb2: 0x1f8d1618a7884099
        },
        r1a1: u288 {
            limb0: 0x8de571dea2a5d5c3eb76ac5,
            limb1: 0x73f0032c69030839bae69561,
            limb2: 0x238027c77aedef31
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1f55c959c3bf3dfbd7de94aa,
            limb1: 0x338a7277289c02f06eb5d1a6,
            limb2: 0x111dc30920e9a82
        },
        r0a1: u288 {
            limb0: 0xacb5949aafcb1110a2919e48,
            limb1: 0x358694842966dd2521e367df,
            limb2: 0x1175ef31c3debacf
        },
        r1a0: u288 {
            limb0: 0x932772dc7e2a77162d83e491,
            limb1: 0xcf24c2e8c3ba63f184d95409,
            limb2: 0x2c91aa0c6d01e9c3
        },
        r1a1: u288 {
            limb0: 0xea92bb4edb0ae08593be68d4,
            limb1: 0xbcd80abfda72f2712ca3b4c3,
            limb2: 0x1ae4342780ad4d2a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdb21e22b6e75c4bb95b26541,
            limb1: 0x8e6f4d27e6f5578789f4d244,
            limb2: 0x254d3e1d0835bc44
        },
        r0a1: u288 {
            limb0: 0x16fae02180d0fd10afac33d0,
            limb1: 0x1a7aa4273e189ab028ef2b3c,
            limb2: 0x238dd2d800be4cc6
        },
        r1a0: u288 {
            limb0: 0x10e926ab0074ee0716dce3f2,
            limb1: 0x58c3c014dfbd8ad6db7bf512,
            limb2: 0x263b42bad310fa53
        },
        r1a1: u288 {
            limb0: 0x3d82106df0673b1ef88ee191,
            limb1: 0xcbef68f5c46b20d70b42b3ec,
            limb2: 0x1349abbfe9f03836
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x22a85c39768df7e62a99e602,
            limb1: 0x780a45d42f7a32ba714fa598,
            limb2: 0x4720a33396e080e
        },
        r0a1: u288 {
            limb0: 0x4610976dec72d51705143e4b,
            limb1: 0xb20016cb676196541ba88a7b,
            limb2: 0x1d3643848507e96a
        },
        r1a0: u288 {
            limb0: 0x90199519a0c287e0ac78f9c1,
            limb1: 0x20350248fefca9a80eee662e,
            limb2: 0xe1b15ffb75cb5bb
        },
        r1a1: u288 {
            limb0: 0x2f352d963ea4c26ad3726561,
            limb1: 0x254b7311e6c764d5aea1d977,
            limb2: 0x237bf57bb1368151
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2ea7e13fb214351a5e08e15a,
            limb1: 0x6b54e01260fa70c81dee5a0a,
            limb2: 0x63d77e44fae0c8c
        },
        r0a1: u288 {
            limb0: 0x275ba548739ffe6bc0bf85eb,
            limb1: 0x107fa3751bb02c4a7eca1977,
            limb2: 0x1efd20e5b373f303
        },
        r1a0: u288 {
            limb0: 0x82761ac1c2f4e8f1be6a3b46,
            limb1: 0x162d5aa2a7f84dd976c286f8,
            limb2: 0x23a4c0dd6dc0432e
        },
        r1a1: u288 {
            limb0: 0x87a7bfc9a96d51e3edbdb529,
            limb1: 0x2c7a348003a0c73e0ff7366c,
            limb2: 0x19ea050f28a01f71
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdb483db77c3fae892c71d671,
            limb1: 0x45b957d30b9b0d00916f1e40,
            limb2: 0x2b682676f39b296c
        },
        r0a1: u288 {
            limb0: 0xdec59f7e72c2787c54bedb66,
            limb1: 0xba7c9575141edc590f537b89,
            limb2: 0x1d4db9803c63f0a9
        },
        r1a0: u288 {
            limb0: 0x284d0a207e8dffd4e6993e6c,
            limb1: 0xfc0852078e4c758aa44bf4dc,
            limb2: 0x23f879e4db91c238
        },
        r1a1: u288 {
            limb0: 0xb254447f41f6b0ccdfbbcd51,
            limb1: 0xe4618adcdfb76119273df327,
            limb2: 0x1cb2408b1d35208b
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa0fcac9c8157a8e97e7034e3,
            limb1: 0x5b8e4d2fb7eae821151bfcb4,
            limb2: 0x201beadc8fab91b1
        },
        r0a1: u288 {
            limb0: 0xc1503784bb827a66d3e353a6,
            limb1: 0x28e79973f112209f7382aa73,
            limb2: 0x12cf270ddb432c3c
        },
        r1a0: u288 {
            limb0: 0xa38395067a2bc292ed60cf76,
            limb1: 0x2485ae18e04c27121b795a52,
            limb2: 0xcca0c0d1be84941
        },
        r1a1: u288 {
            limb0: 0xc4020943f1407869e4f621b2,
            limb1: 0x9dddb0b5aa7bccae28106c16,
            limb2: 0x1fc52a3b0f58ba9e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x97f1f82f3974e7bf9a45cf9b,
            limb1: 0xf7fbe9e036dee465b4f391fb,
            limb2: 0x2f54352a8733d009
        },
        r0a1: u288 {
            limb0: 0x54f913565d7834288a8419ed,
            limb1: 0xa58c44702689e6120183df45,
            limb2: 0x29987c8dc9b5e9f9
        },
        r1a0: u288 {
            limb0: 0x715f7226f72ae9de4613dbcc,
            limb1: 0xff9758816855c43e32cdc6b9,
            limb2: 0x2f08dc1b88137f7d
        },
        r1a1: u288 {
            limb0: 0x172c52d75b168b54d7d7a16d,
            limb1: 0xc44b0da06b20f65e0b672f36,
            limb2: 0x14ce19d9399fdedc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4d69d02465dd2a400f2fe4c,
            limb1: 0x4258a2647ca8d42625078a15,
            limb2: 0x775a4dc19032a45
        },
        r0a1: u288 {
            limb0: 0x2d7fe94e6da9a07b49aa55d7,
            limb1: 0xc79244a8b032ac30a1a23e1a,
            limb2: 0x1090e8555e8b3a68
        },
        r1a0: u288 {
            limb0: 0x67b4c781c212e55606be65bb,
            limb1: 0x6169b40a2d8e57c034b3bc70,
            limb2: 0x3d747de789a1541
        },
        r1a1: u288 {
            limb0: 0xfa9b576dc54ba10b8e7ac605,
            limb1: 0xcd2d705b1226ae9ceca55146,
            limb2: 0x2cb40a489a022b69
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x93b5b56288c07b1665c25401,
            limb1: 0x558afe7d8a30c299dba48ae,
            limb2: 0x11542482dd6d9a8e
        },
        r0a1: u288 {
            limb0: 0xac3ee251d3d22ebcf823318b,
            limb1: 0xbb3c68993895fad55d97ec23,
            limb2: 0x8b767bafbb39255
        },
        r1a0: u288 {
            limb0: 0x5bec482377a449aa199806ba,
            limb1: 0x74f43296a3fb28c46be66acd,
            limb2: 0xc999ef2af5b7000
        },
        r1a1: u288 {
            limb0: 0x706a04b5415a395a29fec61e,
            limb1: 0x4968e9a07de59b37064cffd9,
            limb2: 0x2ab3ccfb2ad7bf08
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe96525cfbb9cf0a66e381c30,
            limb1: 0x6f3c49b9c5f2a4f7c04226ce,
            limb2: 0x2c5a853c19ce501a
        },
        r0a1: u288 {
            limb0: 0x79563e659a3989f2b6b04ffd,
            limb1: 0x96ebe7d03964639537dd0bd2,
            limb2: 0x1fd59b41c2370337
        },
        r1a0: u288 {
            limb0: 0x7b3aa6693dae08f39e10c0c,
            limb1: 0xcabeaa2c599aeb376a204409,
            limb2: 0x1806e35f81eb0640
        },
        r1a1: u288 {
            limb0: 0xcea9939352765c14534221e3,
            limb1: 0xde55e1fdfdef99f67c228d2d,
            limb2: 0x1a1bcfb061d2433
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x70bf44aa065cdd2c9be56816,
            limb1: 0xfbde5308b4d89cca31bd57e7,
            limb2: 0x243b3e2ac4b7a578
        },
        r0a1: u288 {
            limb0: 0x1943c0851ea42367c4add3d,
            limb1: 0x3d7785ea8411bd0ea739938,
            limb2: 0x2a66105c663f4b47
        },
        r1a0: u288 {
            limb0: 0x24809961426b912f23460bf2,
            limb1: 0x13d19d0f445f9f0778948fa,
            limb2: 0x285e54dbe15d567b
        },
        r1a1: u288 {
            limb0: 0x8b6cc2e8badd831e49a12829,
            limb1: 0x1d42f4973f86bebfb7759129,
            limb2: 0xa9347986db474cf
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe5d74e490683dec387a8ce44,
            limb1: 0x6c546c6b2c9c61ff30a8ffda,
            limb2: 0x13ac72e1873b3914
        },
        r0a1: u288 {
            limb0: 0xb1b75004986194b5894fa5f0,
            limb1: 0x2dc5bec7a0532745edf2e539,
            limb2: 0x63795e39d495dd2
        },
        r1a0: u288 {
            limb0: 0xcdf8ef1e0b1eff116d28a3ca,
            limb1: 0x9eef72e9298fdc83dae4f296,
            limb2: 0x54d17388d97814e
        },
        r1a1: u288 {
            limb0: 0xaddb21e2b17b69653fb754bb,
            limb1: 0x4a4d898ffbcd2347192b4c72,
            limb2: 0x7be1b2b58f9ed4c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xcdefdf048638bd081a4bcc55,
            limb1: 0xc299ae3988f6c74823a9994f,
            limb2: 0x21eebfe64ce0a40c
        },
        r0a1: u288 {
            limb0: 0x73eb0e115bed7a9da31b0e7c,
            limb1: 0x9acae8605dcdb0c7c9d93db2,
            limb2: 0x3afe551846d2d72
        },
        r1a0: u288 {
            limb0: 0x7add55ae9977c344e520f4de,
            limb1: 0x4f5aa04486a580d6fcf49a47,
            limb2: 0xac822e96129c3b4
        },
        r1a1: u288 {
            limb0: 0xcdd7c57f48845f690ce084a,
            limb1: 0x9d39850ea356da2a97c2438b,
            limb2: 0xc4258be2201a482
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49b875e4d80d9c7a4b561450,
            limb1: 0x3edc3d9beb3816cbd0e1df2a,
            limb2: 0x1987773492cdbab2
        },
        r0a1: u288 {
            limb0: 0x97e825b450d56f96388b51f5,
            limb1: 0x5971aa3927d39674e5403cc6,
            limb2: 0xe4690e7822389fb
        },
        r1a0: u288 {
            limb0: 0x815e0c5e138b63e0afceeeb3,
            limb1: 0x1a2aa8b0fe75ca55acb97a5d,
            limb2: 0xa2fbaf344dc30b1
        },
        r1a1: u288 {
            limb0: 0x52f5bdd0539ea625088c7060,
            limb1: 0x3ebfd003370b420f74067de6,
            limb2: 0x18c38f763c154f2d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xca613e7c10916bd6e7a08c41,
            limb1: 0xc18c0549823ae26c2bcb56c9,
            limb2: 0x1353753f93b2899f
        },
        r0a1: u288 {
            limb0: 0xa478f7e09b8a971a3ab6a0cb,
            limb1: 0x4bfe82575e6403a437ddd524,
            limb2: 0x2e8c50fac097b200
        },
        r1a0: u288 {
            limb0: 0x8794f1702cf91342d3a5097c,
            limb1: 0xecce749ca57cb6e1adc8f8fc,
            limb2: 0x1a83ef1b40014080
        },
        r1a1: u288 {
            limb0: 0xe41ee29fa1d1bfdff8d6e994,
            limb1: 0xe6fdf2c53faffc11f07ba3,
            limb2: 0x109f8f5a304af500
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd4c83e9fffb5ae80d8d6a090,
            limb1: 0xd35b966818726b8dc9a7bfcd,
            limb2: 0x1771501af7678acf
        },
        r0a1: u288 {
            limb0: 0x13ede395e80c8ba3215b66be,
            limb1: 0xfa9ebc0493a7232df9637b13,
            limb2: 0x10b0673873f62bae
        },
        r1a0: u288 {
            limb0: 0x142a96688807eb9a0d32f8ac,
            limb1: 0x38398ec495ea58f613bb2fc3,
            limb2: 0x12e0a9e4b884cb1b
        },
        r1a1: u288 {
            limb0: 0x4d5c96a330f94e1940f64d1,
            limb1: 0x17e72a9cbb6a09bd00c0c409,
            limb2: 0x29ef16607e492cb7
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8d1f4e4f801a26f671be8b33,
            limb1: 0x31fcafe599b1b60c51d1a183,
            limb2: 0xc9b3169506188d1
        },
        r0a1: u288 {
            limb0: 0x19c18260100b2efc8c0132ba,
            limb1: 0xf3715f0385b1a847fcd8f735,
            limb2: 0x1cc9e494597fdf78
        },
        r1a0: u288 {
            limb0: 0x724edcb59b2fd442aad32bd0,
            limb1: 0x436a10a3fa5e413f215446aa,
            limb2: 0xe587e29c95ef90d
        },
        r1a1: u288 {
            limb0: 0x9c08a4ba7bbea3853c26cc8f,
            limb1: 0xc9d20615888613657215c27d,
            limb2: 0x1287cea096ab0c42
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x19fe5290acc247e5b23f76b2,
            limb1: 0x33acb0187fa5e61e065152de,
            limb2: 0xd21a8f1c59d0f2
        },
        r0a1: u288 {
            limb0: 0xee6ef3cbbbbe7020eb00b436,
            limb1: 0xb29b638c7cee1f3220b34a9e,
            limb2: 0x694eb87fd8289c2
        },
        r1a0: u288 {
            limb0: 0x57e29b250bc9b49dd3407b0b,
            limb1: 0x3816cffdfd5649d7f4c86e25,
            limb2: 0x1efaa70a67fa602c
        },
        r1a1: u288 {
            limb0: 0x1c0d2bdcc57d528a4c384679,
            limb1: 0x902a61aef7dcedb3de1b9005,
            limb2: 0x1904902b3f7b6893
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4070b750f16847f7c9a6c6a6,
            limb1: 0xd5d5ec6d6c9d520e6e722d84,
            limb2: 0x1d0ca4fa0cd81a2e
        },
        r0a1: u288 {
            limb0: 0x3128772bd18175a5ba4f6edf,
            limb1: 0xe87e192f3d72c15f4cf56072,
            limb2: 0x1bbcbbd9a04b32e5
        },
        r1a0: u288 {
            limb0: 0x5c3231eeaff90fd8cf528fd2,
            limb1: 0xab5cf8b70d2f4b370f82e234,
            limb2: 0x26acabd5ae081c2d
        },
        r1a1: u288 {
            limb0: 0xce5f997ec207c9d10d6a2506,
            limb1: 0xa21ac6ebb9218f49588d81f4,
            limb2: 0x1563d016a3d450a6
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa0d4a987e3a62050a541879a,
            limb1: 0x31ccc9088ecaa32a4324b372,
            limb2: 0x24ca40e40a3393af
        },
        r0a1: u288 {
            limb0: 0x7aeeff2b8de8c024eac0f467,
            limb1: 0x2342f2824c2041a7f009ed9c,
            limb2: 0x2b78fad5776098e2
        },
        r1a0: u288 {
            limb0: 0x286c990ae761263edabc5273,
            limb1: 0x9272b8d6397fde3b92decf92,
            limb2: 0x2a5ed053e2f2722
        },
        r1a1: u288 {
            limb0: 0x5107375193ca08c3275a6f37,
            limb1: 0x958a1b0679a4d8b7fad7cc80,
            limb2: 0x23f291a4cf6f0c7c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x620098c4ac0075b10f277a8,
            limb1: 0xeb356968a8e3504355e7cb1a,
            limb2: 0x22b8bd160d777622
        },
        r0a1: u288 {
            limb0: 0xe5fe2f4670ad0071baeb21a5,
            limb1: 0xe7314ac987e90777c9236f5d,
            limb2: 0x2221152ff323d8b9
        },
        r1a0: u288 {
            limb0: 0x489db96e280b3a2c68d2fdcd,
            limb1: 0xf8679f95ca8afe49261cf41b,
            limb2: 0x1c1254831e80c11a
        },
        r1a1: u288 {
            limb0: 0x3a8bacae12c0f9cb11c9d81b,
            limb1: 0x8df384eb864e9f1a428eced9,
            limb2: 0x60dd2d13b6bacdc
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x35e93eb79bc25cdc206b71cb,
            limb1: 0xa1da27f63c07723f35089dc1,
            limb2: 0x108cf3311b52fcc2
        },
        r0a1: u288 {
            limb0: 0xf67dc7405509ccb911954e33,
            limb1: 0xc88a101c5c23093b2880f5a8,
            limb2: 0x1b65cee0bea5ef34
        },
        r1a0: u288 {
            limb0: 0x35c1a206ad909795abd70315,
            limb1: 0xeb247eac301c0b69abfd2324,
            limb2: 0x297000614b9250d5
        },
        r1a1: u288 {
            limb0: 0xcd6165a8c6a2530c3426b464,
            limb1: 0x4970c8a5c9aeccba65019918,
            limb2: 0xbb47670ba69616
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd69d7b98b708324c1672dc3,
            limb1: 0x1503692f65c60bf3c0581a24,
            limb2: 0x1fa857369dde0784
        },
        r0a1: u288 {
            limb0: 0x601d4b8b055728db886ae1b2,
            limb1: 0xbced58ff201108fe40572cf2,
            limb2: 0x26b388a5feefaf4f
        },
        r1a0: u288 {
            limb0: 0x3d26c4fa46a0feb15adcf6b,
            limb1: 0x24bac63d4d95a48013227f49,
            limb2: 0x2d69a53e7f893c37
        },
        r1a1: u288 {
            limb0: 0x187fffdaa94ad3805a96673b,
            limb1: 0x5081dea86220a2126a2ba231,
            limb2: 0x21aaa4deab7eb6a1
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a51626808fc2938e6ef58c6,
            limb1: 0xdbc177c2e5dc5b9550e834c4,
            limb2: 0x85a2c9c65cc7296
        },
        r0a1: u288 {
            limb0: 0x77ca9153c38c2cc9b1e910b9,
            limb1: 0x8f7880bc9a855a26eab407c4,
            limb2: 0x1cdad8f22d74e83c
        },
        r1a0: u288 {
            limb0: 0x9ddbe4ed567458dfd430cceb,
            limb1: 0x89b2489fc6fbab172840ea87,
            limb2: 0x238bbcae07b1f635
        },
        r1a1: u288 {
            limb0: 0xf47cd59adbe0f6d10fdb85ed,
            limb1: 0xc59b2279b7cfb613872b5a79,
            limb2: 0x19fbce9fb428b31a
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1775e8fb652b525ffff20ab3,
            limb1: 0x4bff84763e10d61e0ea1fc1,
            limb2: 0x146bc88782f73bab
        },
        r0a1: u288 {
            limb0: 0x1606c1bc6959e159f5fe04f6,
            limb1: 0x4d79a3ac77696debb49e9d7d,
            limb2: 0x1d315aeef10f0102
        },
        r1a0: u288 {
            limb0: 0x5948f1b4647aa0ded227def2,
            limb1: 0x4d844efe55afb7c56b3b2cd3,
            limb2: 0x14281625e500d305
        },
        r1a1: u288 {
            limb0: 0x569fbea9c5d8cf2cb051f411,
            limb1: 0xb892acf59caca28782b29ee5,
            limb2: 0x2c7fe77e7e655c74
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x45fb3af0d434a5bb48562135,
            limb1: 0x3a5846faf21275076ca29a5,
            limb2: 0x1684ddd39b2a7398
        },
        r0a1: u288 {
            limb0: 0xfe6a6c2505f60f822e65c35e,
            limb1: 0xf0432afde90589cb2341376f,
            limb2: 0x2229aa41a6eaf4d3
        },
        r1a0: u288 {
            limb0: 0x84fb2844069d3d1912764c61,
            limb1: 0xdd8b0f54b0779811211d1fae,
            limb2: 0xe19d5e5b99c1426
        },
        r1a1: u288 {
            limb0: 0xc0bb8666850f7c6f6f85d1f0,
            limb1: 0x44550b4d02f07730c7022605,
            limb2: 0x23b38a5e2d839dc5
        }
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x52acb04cdcdbc047e4cc6df6,
            limb1: 0x6f25c8c4fc6e845d2665d6e5,
            limb2: 0x26ce2bbe436798f3
        },
        r0a1: u288 {
            limb0: 0xaf012a9cea3cd6415f253f6f,
            limb1: 0xc47bb93b85d1dfe124f67076,
            limb2: 0x3a4e62e4864e7d8
        },
        r1a0: u288 {
            limb0: 0xfc7843309b2356848819e37f,
            limb1: 0x7a76920e3e979eb2b77a0c6d,
            limb2: 0x1e2b0754b65a7514
        },
        r1a1: u288 {
            limb0: 0x98a4a38de7798bbe6ce932b,
            limb1: 0xd317a8715a76e128cf917d73,
            limb2: 0x20e7ed51077467e3
        }
    },
];

