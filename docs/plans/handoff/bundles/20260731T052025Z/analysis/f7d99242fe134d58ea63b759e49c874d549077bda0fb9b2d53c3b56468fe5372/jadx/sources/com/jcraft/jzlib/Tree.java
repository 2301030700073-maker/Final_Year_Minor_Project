package com.jcraft.jzlib;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Tree {
    public short[] dyn_tree;
    public int max_code;
    public StaticTree stat_desc;
    public static final int[] extra_lbits = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0};
    public static final int[] extra_dbits = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    public static final int[] extra_blbits = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 7};
    public static final byte[] bl_order = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    public static final byte[] _dist_code = {0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 16, 17, 18, 18, 19, 19, 20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29};
    public static final byte[] _length_code = {0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28};
    public static final int[] base_length = {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 0};
    public static final int[] base_dist = {0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024, 1536, 2048, 3072, 4096, 6144, 8192, 12288, 16384, 24576};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14, types: [int] */
    /* JADX WARN: Type inference failed for: r3v15, types: [int] */
    /* JADX WARN: Type inference failed for: r4v18, types: [int, short] */
    /* JADX WARN: Type inference failed for: r4v19, types: [int] */
    /* JADX WARN: Type inference failed for: r4v20, types: [int] */
    /* JADX WARN: Type inference failed for: r5v12, types: [short] */
    /* JADX WARN: Type inference failed for: r5v13, types: [int] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15, types: [int] */
    public final void build_tree(Deflate deflate) {
        int i;
        int i2;
        char c;
        short s;
        short s2;
        short[] sArr;
        short[] sArr2;
        int i3;
        int i4;
        short[] sArr3 = this.dyn_tree;
        StaticTree staticTree = this.stat_desc;
        short[] sArr4 = staticTree.static_tree;
        int i5 = staticTree.elems;
        short s3 = 0;
        deflate.heap_len = 0;
        short[] sArr5 = deflate.bl_count;
        byte[] bArr = deflate.depth;
        int[] iArr = deflate.heap;
        deflate.heap_max = 573;
        int i6 = 0;
        int i7 = -1;
        while (true) {
            i = 1;
            if (i6 >= i5) {
                break;
            }
            int i8 = i6 * 2;
            if (sArr3[i8] != 0) {
                int i9 = deflate.heap_len + 1;
                deflate.heap_len = i9;
                iArr[i9] = i6;
                bArr[i6] = 0;
                i7 = i6;
            } else {
                sArr3[i8 + 1] = 0;
            }
            i6++;
        }
        while (true) {
            i2 = deflate.heap_len;
            c = 2;
            if (i2 >= 2) {
                break;
            }
            int i10 = i2 + 1;
            deflate.heap_len = i10;
            if (i7 < 2) {
                i4 = i7 + 1;
                i3 = i4;
            } else {
                i3 = i7;
                i4 = 0;
            }
            iArr[i10] = i4;
            int i11 = i4 * 2;
            sArr3[i11] = 1;
            bArr[i4] = 0;
            deflate.opt_len--;
            if (sArr4 != null) {
                deflate.static_len -= sArr4[i11 + 1];
            }
            i7 = i3;
        }
        this.max_code = i7;
        for (int i12 = i2 / 2; i12 >= 1; i12--) {
            deflate.pqdownheap(i12, sArr3);
        }
        while (true) {
            int i13 = iArr[1];
            int i14 = deflate.heap_len;
            deflate.heap_len = i14 - 1;
            iArr[1] = iArr[i14];
            deflate.pqdownheap(1, sArr3);
            int i15 = iArr[1];
            int i16 = deflate.heap_max;
            s = s3;
            int i17 = i16 - 1;
            deflate.heap_max = i17;
            iArr[i17] = i13;
            int i18 = i16 - 2;
            deflate.heap_max = i18;
            iArr[i18] = i15;
            int i19 = i13 * 2;
            int i20 = i15 * 2;
            sArr3[i5 * 2] = (short) (sArr3[i19] + sArr3[i20]);
            bArr[i5] = (byte) (Math.max((int) bArr[i13], (int) bArr[i15]) + 1);
            short s4 = (short) i5;
            sArr3[i20 + 1] = s4;
            sArr3[i19 + 1] = s4;
            int i21 = i5 + 1;
            iArr[1] = i5;
            deflate.pqdownheap(1, sArr3);
            if (deflate.heap_len < 2) {
                break;
            }
            i5 = i21;
            s3 = s;
        }
        int i22 = deflate.heap_max - 1;
        deflate.heap_max = i22;
        iArr[i22] = iArr[1];
        short[] sArr6 = this.dyn_tree;
        StaticTree staticTree2 = this.stat_desc;
        short[] sArr7 = staticTree2.static_tree;
        int[] iArr2 = staticTree2.extra_bits;
        int i23 = staticTree2.extra_base;
        int i24 = staticTree2.max_length;
        for (int i25 = s; i25 <= 15; i25++) {
            sArr5[i25] = s;
        }
        int i26 = deflate.heap_max;
        sArr6[(iArr[i26] * 2) + 1] = s;
        int i27 = i26 + 1;
        int i28 = s;
        for (int i29 = 573; i27 < i29; i29 = 573) {
            int i30 = iArr[i27];
            int i31 = i30 * 2;
            int i32 = i31 + 1;
            int i33 = i;
            int i34 = sArr6[(sArr6[i32] * 2) + 1] + 1;
            if (i34 > i24) {
                i28++;
                i34 = i24;
            }
            char c2 = c;
            sArr6[i32] = (short) i34;
            if (i30 <= this.max_code) {
                sArr5[i34] = (short) (sArr5[i34] + 1);
                int i35 = i30 >= i23 ? iArr2[i30 - i23] : s;
                short s5 = sArr6[i31];
                deflate.opt_len = ((i34 + i35) * s5) + deflate.opt_len;
                if (sArr7 != null) {
                    deflate.static_len = ((sArr7[i32] + i35) * s5) + deflate.static_len;
                }
            }
            i27++;
            c = c2;
            i = i33;
        }
        int i36 = i;
        if (i28 != 0) {
            do {
                int i37 = i24 - 1;
                while (true) {
                    s2 = sArr5[i37];
                    if (s2 != 0) {
                        break;
                    } else {
                        i37--;
                    }
                }
                sArr5[i37] = (short) (s2 - 1);
                int i38 = i37 + 1;
                sArr5[i38] = (short) (sArr5[i38] + 2);
                sArr5[i24] = (short) (sArr5[i24] - 1);
                i28 -= 2;
            } while (i28 > 0);
            while (i24 != 0) {
                short s6 = sArr5[i24];
                while (s6 != 0) {
                    i27--;
                    int i39 = iArr[i27];
                    if (i39 <= this.max_code) {
                        int i40 = (i39 * 2) + 1;
                        short s7 = sArr6[i40];
                        if (s7 != i24) {
                            sArr = sArr3;
                            sArr2 = sArr6;
                            deflate.opt_len = (int) ((sArr2[r7] * (i24 - s7)) + deflate.opt_len);
                            sArr2[i40] = (short) i24;
                        } else {
                            sArr = sArr3;
                            sArr2 = sArr6;
                        }
                        s6--;
                        sArr3 = sArr;
                        sArr6 = sArr2;
                    }
                }
                i24--;
            }
        }
        short[] sArr8 = sArr3;
        short[] sArr9 = new short[16];
        short s8 = s;
        for (int i41 = i36; i41 <= 15; i41++) {
            s8 = (short) ((s8 + sArr5[i41 - 1]) << 1);
            sArr9[i41] = s8;
        }
        for (int i42 = s; i42 <= i7; i42++) {
            int i43 = i42 * 2;
            short s9 = sArr8[i43 + 1];
            if (s9 != 0) {
                short s10 = sArr9[s9];
                sArr9[s9] = (short) (s10 + 1);
                int i44 = s;
                do {
                    int i45 = i44 | (s10 & 1);
                    s10 >>>= 1;
                    i44 = i45 << 1;
                    s9--;
                } while (s9 > 0);
                sArr8[i43] = (short) (i44 >>> 1);
            }
        }
    }
}
