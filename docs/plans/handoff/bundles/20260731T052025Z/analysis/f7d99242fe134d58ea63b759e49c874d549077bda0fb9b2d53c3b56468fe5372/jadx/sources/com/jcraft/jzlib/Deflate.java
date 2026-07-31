package com.jcraft.jzlib;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Deflate {
    public static final Config[] config_table = {new Config(0, 0, 0, 0, 0), new Config(4, 4, 8, 4, 1), new Config(4, 5, 16, 8, 1), new Config(4, 6, 32, 32, 1), new Config(4, 4, 16, 16, 2), new Config(8, 16, 32, 32, 2), new Config(8, 16, 128, 128, 2), new Config(8, 32, 128, 256, 2), new Config(32, 128, 258, 1024, 2), new Config(32, 258, 258, 4096, 2)};
    public static final String[] z_errmsg = {"need dictionary", "stream end", "", "file error", "stream error", "data error", "insufficient memory", "buffer error", "incompatible version", ""};
    public short bi_buf;
    public int bi_valid;
    public short[] bl_count;
    public Tree bl_desc;
    public short[] bl_tree;
    public int block_start;
    public int d_buf;
    public Tree d_desc;
    public byte data_type;
    public byte[] depth;
    public short[] dyn_dtree;
    public short[] dyn_ltree;
    public int good_match;
    public int hash_mask;
    public int hash_shift;
    public int hash_size;
    public short[] head;
    public int[] heap;
    public int heap_len;
    public int heap_max;
    public int ins_h;
    public int l_buf;
    public Tree l_desc;
    public int last_eob_len;
    public int last_flush;
    public int last_lit;
    public int level;
    public int lit_bufsize;
    public int lookahead;
    public int match_available;
    public int match_length;
    public int match_start;
    public int matches;
    public int max_chain_length;
    public int max_lazy_match;
    public int nice_match;
    public int noheader;
    public int opt_len;
    public int pending;
    public byte[] pending_buf;
    public int pending_buf_size;
    public int pending_out;
    public short[] prev;
    public int prev_length;
    public int prev_match;
    public int static_len;
    public int status;
    public ZStream strm;
    public int strstart;
    public int w_bits;
    public int w_mask;
    public int w_size;
    public byte[] window;
    public int window_size;

    public final void _tr_stored_block(int i, int i2, boolean z) {
        send_bits(z ? 1 : 0, 3);
        int i3 = this.bi_valid;
        if (i3 > 8) {
            put_short(this.bi_buf);
        } else if (i3 > 0) {
            put_byte((byte) this.bi_buf);
        }
        this.bi_buf = (short) 0;
        this.bi_valid = 0;
        this.last_eob_len = 8;
        put_short((short) i2);
        put_short((short) (~i2));
        System.arraycopy(this.window, i, this.pending_buf, this.pending, i2);
        this.pending += i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0087, code lost:
    
        if (r0 < (r13 / 2)) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean _tr_tally(int r13, int r14) {
        /*
            r12 = this;
            short[] r0 = r12.dyn_dtree
            short[] r1 = r12.dyn_ltree
            byte[] r2 = r12.pending_buf
            int r3 = r12.d_buf
            int r4 = r12.last_lit
            int r5 = r4 * 2
            int r5 = r5 + r3
            int r3 = r13 >>> 8
            byte r3 = (byte) r3
            r2[r5] = r3
            r3 = 1
            int r5 = r5 + r3
            byte r6 = (byte) r13
            r2[r5] = r6
            int r5 = r12.l_buf
            int r5 = r5 + r4
            byte r6 = (byte) r14
            r2[r5] = r6
            int r4 = r4 + r3
            r12.last_lit = r4
            r2 = 2
            if (r13 != 0) goto L2b
            int r14 = r14 * r2
            short r13 = r1[r14]
            int r13 = r13 + r3
            short r13 = (short) r13
            r1[r14] = r13
            goto L54
        L2b:
            int r5 = r12.matches
            int r5 = r5 + r3
            r12.matches = r5
            int r13 = r13 + (-1)
            byte[] r5 = com.jcraft.jzlib.Tree._length_code
            r14 = r5[r14]
            int r14 = r14 + 257
            int r14 = r14 * r2
            short r5 = r1[r14]
            int r5 = r5 + r3
            short r5 = (short) r5
            r1[r14] = r5
            byte[] r14 = com.jcraft.jzlib.Tree._dist_code
            r1 = 256(0x100, float:3.59E-43)
            if (r13 >= r1) goto L48
            r13 = r14[r13]
            goto L4d
        L48:
            int r13 = r13 >>> 7
            int r13 = r13 + r1
            r13 = r14[r13]
        L4d:
            int r13 = r13 * r2
            short r14 = r0[r13]
            int r14 = r14 + r3
            short r14 = (short) r14
            r0[r13] = r14
        L54:
            r13 = r4 & 8191(0x1fff, float:1.1478E-41)
            r14 = 0
            if (r13 != 0) goto L8a
            int r13 = r12.level
            if (r13 <= r2) goto L8a
            int r4 = r4 * 8
            int r13 = r12.strstart
            int r1 = r12.block_start
            int r13 = r13 - r1
            r1 = r14
        L65:
            r5 = 30
            if (r1 >= r5) goto L7d
            long r4 = (long) r4
            int r6 = r1 * 2
            short r6 = r0[r6]
            long r6 = (long) r6
            int[] r8 = com.jcraft.jzlib.Tree.extra_dbits
            r8 = r8[r1]
            long r8 = (long) r8
            r10 = 5
            long r8 = r8 + r10
            long r8 = r8 * r6
            long r8 = r8 + r4
            int r4 = (int) r8
            int r1 = r1 + 1
            goto L65
        L7d:
            int r0 = r4 >>> 3
            int r1 = r12.matches
            int r4 = r12.last_lit
            int r4 = r4 / r2
            if (r1 >= r4) goto L8a
            int r13 = r13 / r2
            if (r0 >= r13) goto L8a
            goto L91
        L8a:
            int r13 = r12.last_lit
            int r12 = r12.lit_bufsize
            int r12 = r12 - r3
            if (r13 != r12) goto L92
        L91:
            return r3
        L92:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jzlib.Deflate._tr_tally(int, int):boolean");
    }

    public final void bi_flush() {
        int i = this.bi_valid;
        if (i == 16) {
            put_short(this.bi_buf);
            this.bi_buf = (short) 0;
            this.bi_valid = 0;
        } else if (i >= 8) {
            put_byte((byte) this.bi_buf);
            this.bi_buf = (short) (this.bi_buf >>> 8);
            this.bi_valid -= 8;
        }
    }

    public final void compress_block(short[] sArr, short[] sArr2) {
        if (this.last_lit != 0) {
            int i = 0;
            do {
                byte[] bArr = this.pending_buf;
                int i2 = (i * 2) + this.d_buf;
                int i3 = ((bArr[i2] << 8) & 65280) | (bArr[i2 + 1] & 255);
                int i4 = bArr[this.l_buf + i] & 255;
                i++;
                if (i3 == 0) {
                    send_code(i4, sArr);
                } else {
                    byte b = Tree._length_code[i4];
                    send_code(b + 257, sArr);
                    int i5 = Tree.extra_lbits[b];
                    if (i5 != 0) {
                        send_bits(i4 - Tree.base_length[b], i5);
                    }
                    int i6 = i3 - 1;
                    byte[] bArr2 = Tree._dist_code;
                    byte b2 = i6 < 256 ? bArr2[i6] : bArr2[(i6 >>> 7) + 256];
                    send_code(b2, sArr2);
                    int i7 = Tree.extra_dbits[b2];
                    if (i7 != 0) {
                        send_bits(i6 - Tree.base_dist[b2], i7);
                    }
                }
            } while (i < this.last_lit);
        }
        send_code(256, sArr);
        this.last_eob_len = sArr[513];
    }

    public final void fill_window() {
        int i;
        int i2;
        byte[] bArr;
        long j;
        do {
            int i3 = this.window_size;
            int i4 = this.lookahead;
            int i5 = this.strstart;
            int i6 = (i3 - i4) - i5;
            int i7 = 0;
            char c = 65535;
            if (i6 == 0 && i5 == 0 && i4 == 0) {
                i6 = this.w_size;
            } else if (i6 == -1) {
                i6--;
            } else {
                int i8 = this.w_size;
                if (i5 >= (i8 + i8) - 262) {
                    byte[] bArr2 = this.window;
                    System.arraycopy(bArr2, i8, bArr2, 0, i8);
                    int i9 = this.match_start;
                    int i10 = this.w_size;
                    this.match_start = i9 - i10;
                    this.strstart -= i10;
                    this.block_start -= i10;
                    int i11 = this.hash_size;
                    int i12 = i11;
                    do {
                        short[] sArr = this.head;
                        i11--;
                        int i13 = sArr[i11] & 65535;
                        i = this.w_size;
                        sArr[i11] = i13 >= i ? (short) (i13 - i) : (short) 0;
                        i12--;
                    } while (i12 != 0);
                    int i14 = i;
                    do {
                        short[] sArr2 = this.prev;
                        i--;
                        int i15 = sArr2[i] & 65535;
                        i2 = this.w_size;
                        sArr2[i] = i15 >= i2 ? (short) (i15 - i2) : (short) 0;
                        i14--;
                    } while (i14 != 0);
                    i6 += i2;
                }
            }
            ZStream zStream = this.strm;
            int i16 = zStream.avail_in;
            if (i16 == 0) {
                return;
            }
            byte[] bArr3 = this.window;
            int i17 = this.strstart + this.lookahead;
            if (i16 <= i6) {
                i6 = i16;
            }
            if (i6 != 0) {
                zStream.avail_in = i16 - i6;
                if (zStream.dstate.noheader == 0) {
                    Adler32 adler32 = zStream._adler;
                    long j2 = zStream.adler;
                    byte[] bArr4 = zStream.next_in;
                    int i18 = zStream.next_in_index;
                    adler32.getClass();
                    if (bArr4 == null) {
                        j = 1;
                        bArr = bArr3;
                    } else {
                        long j3 = j2 & 65535;
                        int i19 = 16;
                        long j4 = (j2 >> 16) & 65535;
                        int i20 = i6;
                        while (i20 > 0) {
                            int i21 = i20 < 5552 ? i20 : 5552;
                            i20 -= i21;
                            while (i21 >= i19) {
                                long j5 = j3 + (bArr4[i18] & 255);
                                long j6 = j4 + j5;
                                long j7 = j5 + (r18[i18 + 1] & 255);
                                long j8 = j6 + j7;
                                long j9 = j7 + (r18[i18 + 2] & 255);
                                long j10 = j8 + j9;
                                long j11 = j9 + (r18[i18 + 3] & 255);
                                long j12 = j10 + j11;
                                long j13 = j11 + (r18[i18 + 4] & 255);
                                long j14 = j12 + j13;
                                long j15 = j13 + (r18[i18 + 5] & 255);
                                long j16 = j14 + j15;
                                long j17 = j15 + (r18[i18 + 6] & 255);
                                long j18 = j16 + j17;
                                long j19 = j17 + (r18[i18 + 7] & 255);
                                long j20 = j18 + j19;
                                long j21 = j19 + (r18[i18 + 8] & 255);
                                long j22 = j20 + j21;
                                long j23 = j21 + (r18[i18 + 9] & 255);
                                long j24 = j22 + j23;
                                long j25 = j23 + (r18[i18 + 10] & 255);
                                long j26 = j24 + j25;
                                long j27 = j25 + (r18[i18 + 11] & 255);
                                long j28 = j26 + j27;
                                long j29 = j27 + (r18[i18 + 12] & 255);
                                long j30 = j28 + j29;
                                long j31 = j29 + (r18[i18 + 13] & 255);
                                long j32 = j30 + j31;
                                int i22 = i18 + 15;
                                long j33 = j31 + (r18[i18 + 14] & 255);
                                long j34 = j32 + j33;
                                i18 += 16;
                                j3 = j33 + (r18[i22] & 255);
                                j4 = j34 + j3;
                                i21 -= 16;
                                bArr3 = bArr3;
                                c = c;
                                i19 = i19;
                                bArr4 = bArr4;
                            }
                            int i23 = i19;
                            byte[] bArr5 = bArr4;
                            char c2 = c;
                            byte[] bArr6 = bArr3;
                            if (i21 != 0) {
                                do {
                                    j3 += bArr5[i18] & 255;
                                    j4 += j3;
                                    i21--;
                                    i18++;
                                } while (i21 != 0);
                            }
                            j3 %= 65521;
                            j4 %= 65521;
                            bArr3 = bArr6;
                            c = c2;
                            i19 = i23;
                            bArr4 = bArr5;
                        }
                        bArr = bArr3;
                        j = (j4 << i19) | j3;
                    }
                    zStream.adler = j;
                } else {
                    bArr = bArr3;
                }
                System.arraycopy(zStream.next_in, zStream.next_in_index, bArr, i17, i6);
                zStream.next_in_index += i6;
                i7 = i6;
            }
            int i24 = this.lookahead + i7;
            this.lookahead = i24;
            if (i24 >= 3) {
                byte[] bArr7 = this.window;
                int i25 = this.strstart;
                int i26 = bArr7[i25] & 255;
                this.ins_h = i26;
                this.ins_h = ((bArr7[i25 + 1] & 255) ^ (i26 << this.hash_shift)) & this.hash_mask;
            }
            if (i24 >= 262) {
                return;
            }
        } while (this.strm.avail_in != 0);
    }

    public final void flush_block_only(boolean z) {
        int i;
        int i2;
        int i3;
        int i4 = this.block_start;
        int i5 = i4 >= 0 ? i4 : -1;
        int i6 = this.strstart - i4;
        short[] sArr = this.bl_tree;
        short[] sArr2 = this.dyn_dtree;
        Tree tree = this.d_desc;
        Tree tree2 = this.l_desc;
        short[] sArr3 = this.dyn_ltree;
        int i7 = this.level;
        byte[] bArr = Tree.bl_order;
        if (i7 > 0) {
            if (this.data_type == 2) {
                int i8 = 0;
                int i9 = 0;
                while (i8 < 7) {
                    i9 += sArr3[i8 * 2];
                    i8++;
                }
                int i10 = 0;
                while (i8 < 128) {
                    i10 += sArr3[i8 * 2];
                    i8++;
                }
                int i11 = i9;
                while (i8 < 256) {
                    i11 += sArr3[i8 * 2];
                    i8++;
                }
                this.data_type = (byte) (i11 > (i10 >>> 2) ? 0 : 1);
            }
            tree2.build_tree(this);
            tree.build_tree(this);
            scan_tree(tree2.max_code, sArr3);
            scan_tree(tree.max_code, sArr2);
            this.bl_desc.build_tree(this);
            i3 = 18;
            while (i3 >= 3 && sArr[(bArr[i3] * 2) + 1] == 0) {
                i3--;
            }
            int i12 = ((i3 + 1) * 3) + 14 + this.opt_len;
            this.opt_len = i12;
            i = (i12 + 10) >>> 3;
            i2 = (this.static_len + 10) >>> 3;
            if (i2 <= i) {
                i = i2;
            }
        } else {
            i = i6 + 5;
            i2 = i;
            i3 = 0;
        }
        if (i6 + 4 <= i && i5 != -1) {
            _tr_stored_block(i5, i6, z);
        } else if (i2 == i) {
            send_bits((z ? 1 : 0) + 2, 3);
            compress_block(StaticTree.static_ltree, StaticTree.static_dtree);
        } else {
            send_bits((z ? 1 : 0) + 4, 3);
            int i13 = tree2.max_code;
            int i14 = tree.max_code;
            int i15 = i3 + 1;
            send_bits(i13 - 256, 5);
            send_bits(i14, 5);
            send_bits(i3 - 3, 4);
            for (int i16 = 0; i16 < i15; i16++) {
                send_bits(sArr[(bArr[i16] * 2) + 1], 3);
            }
            send_tree(i13, sArr3);
            send_tree(i14, sArr2);
            compress_block(sArr3, sArr2);
        }
        init_block();
        if (z) {
            int i17 = this.bi_valid;
            if (i17 > 8) {
                put_short(this.bi_buf);
            } else if (i17 > 0) {
                put_byte((byte) this.bi_buf);
            }
            this.bi_buf = (short) 0;
            this.bi_valid = 0;
        }
        this.block_start = this.strstart;
        this.strm.flush_pending();
    }

    public final void init_block() {
        short[] sArr = this.dyn_ltree;
        for (int i = 0; i < 286; i++) {
            sArr[i * 2] = 0;
        }
        for (int i2 = 0; i2 < 30; i2++) {
            this.dyn_dtree[i2 * 2] = 0;
        }
        for (int i3 = 0; i3 < 19; i3++) {
            this.bl_tree[i3 * 2] = 0;
        }
        sArr[512] = 1;
        this.static_len = 0;
        this.opt_len = 0;
        this.matches = 0;
        this.last_lit = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b3, code lost:
    
        r14 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00de, code lost:
    
        r2 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int longest_match(int r19) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jzlib.Deflate.longest_match(int):int");
    }

    public final void pqdownheap(int i, short[] sArr) {
        byte[] bArr = this.depth;
        int[] iArr = this.heap;
        int i2 = iArr[i];
        int i3 = i << 1;
        while (true) {
            int i4 = this.heap_len;
            if (i3 <= i4) {
                if (i3 < i4) {
                    int i5 = i3 + 1;
                    int i6 = iArr[i5];
                    int i7 = iArr[i3];
                    short s = sArr[i6 * 2];
                    short s2 = sArr[i7 * 2];
                    if (s < s2 || (s == s2 && bArr[i6] <= bArr[i7])) {
                        i3 = i5;
                    }
                }
                int i8 = iArr[i3];
                short s3 = sArr[i2 * 2];
                short s4 = sArr[i8 * 2];
                if (s3 < s4 || (s3 == s4 && bArr[i2] <= bArr[i8])) {
                    break;
                }
                iArr[i] = i8;
                int i9 = i3;
                i3 <<= 1;
                i = i9;
            } else {
                break;
            }
        }
        iArr[i] = i2;
    }

    public final void putShortMSB(int i) {
        put_byte((byte) (i >> 8));
        put_byte((byte) i);
    }

    public final void put_byte(byte b) {
        byte[] bArr = this.pending_buf;
        int i = this.pending;
        this.pending = i + 1;
        bArr[i] = b;
    }

    public final void put_short(int i) {
        put_byte((byte) i);
        put_byte((byte) (i >>> 8));
    }

    public final void scan_tree(int i, short[] sArr) {
        int i2;
        int i3;
        short[] sArr2 = this.bl_tree;
        short s = sArr[1];
        if (s == 0) {
            i2 = 138;
            i3 = 3;
        } else {
            i2 = 7;
            i3 = 4;
        }
        short s2 = -1;
        sArr[((i + 1) * 2) + 1] = -1;
        int i4 = 0;
        int i5 = 0;
        while (i4 <= i) {
            i4++;
            short s3 = sArr[(i4 * 2) + 1];
            i5++;
            if (i5 >= i2 || s != s3) {
                if (i5 < i3) {
                    int i6 = s * 2;
                    sArr2[i6] = (short) (sArr2[i6] + i5);
                } else if (s != 0) {
                    if (s != s2) {
                        int i7 = s * 2;
                        sArr2[i7] = (short) (sArr2[i7] + 1);
                    }
                    sArr2[32] = (short) (sArr2[32] + 1);
                } else if (i5 <= 10) {
                    sArr2[34] = (short) (sArr2[34] + 1);
                } else {
                    sArr2[36] = (short) (sArr2[36] + 1);
                }
                if (s3 == 0) {
                    s2 = s;
                    i2 = 138;
                } else if (s == s3) {
                    i2 = 6;
                    s2 = s;
                } else {
                    s2 = s;
                    i2 = 7;
                    i3 = 4;
                    i5 = 0;
                }
                i3 = 3;
                i5 = 0;
            }
            s = s3;
        }
    }

    public final void send_bits(int i, int i2) {
        int i3 = this.bi_valid;
        int i4 = 16 - i2;
        short s = this.bi_buf;
        if (i3 <= i4) {
            this.bi_buf = (short) (((i << i3) & 65535) | s);
            this.bi_valid = i3 + i2;
            return;
        }
        short s2 = (short) (((i << i3) & 65535) | s);
        this.bi_buf = s2;
        put_short(s2);
        int i5 = this.bi_valid;
        this.bi_buf = (short) (i >>> (16 - i5));
        this.bi_valid = (i2 - 16) + i5;
    }

    public final void send_code(int i, short[] sArr) {
        int i2 = i * 2;
        send_bits(sArr[i2] & 65535, sArr[i2 + 1] & 65535);
    }

    public final void send_tree(int i, short[] sArr) {
        int i2;
        int i3;
        short[] sArr2 = this.bl_tree;
        short s = sArr[1];
        if (s == 0) {
            i3 = 3;
            i2 = 138;
        } else {
            i2 = 7;
            i3 = 4;
        }
        short s2 = -1;
        int i4 = 0;
        int i5 = 0;
        while (i4 <= i) {
            i4++;
            short s3 = sArr[(i4 * 2) + 1];
            int i6 = i5 + 1;
            if (i6 >= i2 || s != s3) {
                if (i6 < i3) {
                    do {
                        send_code(s, sArr2);
                        i6--;
                    } while (i6 != 0);
                } else if (s != 0) {
                    if (s != s2) {
                        send_code(s, sArr2);
                    } else {
                        i5 = i6;
                    }
                    send_code(16, sArr2);
                    send_bits(i5 - 3, 2);
                } else if (i6 <= 10) {
                    send_code(17, sArr2);
                    send_bits(i5 - 2, 3);
                } else {
                    send_code(18, sArr2);
                    send_bits(i5 - 10, 7);
                }
                if (s3 == 0) {
                    s2 = s;
                    i3 = 3;
                    i5 = 0;
                    i2 = 138;
                } else {
                    if (s == s3) {
                        s2 = s;
                        i2 = 6;
                        i3 = 3;
                    } else {
                        s2 = s;
                        i2 = 7;
                        i3 = 4;
                    }
                    i5 = 0;
                }
            } else {
                i5 = i6;
            }
            s = s3;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Config {
        public final /* synthetic */ int $r8$classId;
        public int func;
        public int good_length;
        public int max_chain;
        public int max_lazy;
        public int nice_length;

        public Config(int i, int i2, int i3, int i4, int i5) {
            this.$r8$classId = 0;
            this.good_length = i;
            this.max_lazy = i2;
            this.nice_length = i3;
            this.max_chain = i4;
            this.func = i5;
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
        
            if ((((r1 > r5 ? 1 : r1 == r5 ? 2 : 4) << 4) & r0) == 0) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0049, code lost:
        
            if ((((r1 > r5 ? 1 : r1 == r5 ? 2 : 4) << 8) & r0) == 0) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x007a, code lost:
        
            if (((r1 > r5 ? 1 : r1 == r5 ? 2 : 4) & r0) == 0) goto L92;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0090, code lost:
        
            if ((((r1 > r5 ? 1 : r1 == r5 ? 2 : 4) << 4) & r0) == 0) goto L92;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x00a7, code lost:
        
            if ((((r1 > r5 ? 1 : r1 == r5 ? 2 : 4) << 8) & r0) == 0) goto L92;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        
            if (((r1 > r5 ? 1 : r1 == r5 ? 2 : 4) & r0) == 0) goto L47;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean boundsMatch() {
            /*
                Method dump skipped, instructions count: 200
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.jcraft.jzlib.Deflate.Config.boundsMatch():boolean");
        }

        public /* synthetic */ Config(int i) {
            this.$r8$classId = i;
        }
    }
}
