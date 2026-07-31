package com.jcraft.jzlib;

import com.jcraft.jzlib.Deflate;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.io.FileSystemException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZOutputStream extends OutputStream {
    public final byte[] buf;
    public final byte[] buf1;
    public final int bufsize;
    public final boolean compress;
    public int flush;
    public OutputStream out;
    public ZStream z;

    public ZOutputStream(OutputStream outputStream) {
        ZStream zStream = new ZStream();
        zStream._adler = new Adler32(0);
        this.z = zStream;
        this.bufsize = 512;
        this.flush = 0;
        this.buf = new byte[512];
        this.buf1 = new byte[1];
        this.out = outputStream;
        Deflate deflate = new Deflate();
        Tree tree = new Tree();
        deflate.l_desc = tree;
        Tree tree2 = new Tree();
        deflate.d_desc = tree2;
        Tree tree3 = new Tree();
        deflate.bl_desc = tree3;
        deflate.bl_count = new short[16];
        deflate.heap = new int[573];
        deflate.depth = new byte[573];
        short[] sArr = new short[1146];
        deflate.dyn_ltree = sArr;
        short[] sArr2 = new short[122];
        deflate.dyn_dtree = sArr2;
        short[] sArr3 = new short[78];
        deflate.bl_tree = sArr3;
        zStream.dstate = deflate;
        deflate.noheader = 1;
        deflate.w_bits = 15;
        deflate.w_size = 32768;
        deflate.w_mask = 32767;
        deflate.hash_size = 32768;
        deflate.hash_mask = 32767;
        deflate.hash_shift = 5;
        deflate.window = new byte[65536];
        deflate.prev = new short[32768];
        deflate.head = new short[32768];
        deflate.lit_bufsize = 16384;
        deflate.pending_buf = new byte[65536];
        deflate.pending_buf_size = 65536;
        deflate.d_buf = 8192;
        deflate.l_buf = 49152;
        deflate.level = 1;
        zStream.msg = null;
        deflate.pending = 0;
        deflate.pending_out = 0;
        deflate.status = 113;
        zStream.adler = 1L;
        deflate.last_flush = 0;
        tree.dyn_tree = sArr;
        tree.stat_desc = StaticTree.static_l_desc;
        tree2.dyn_tree = sArr2;
        tree2.stat_desc = StaticTree.static_d_desc;
        tree3.dyn_tree = sArr3;
        tree3.stat_desc = StaticTree.static_bl_desc;
        deflate.bi_buf = (short) 0;
        deflate.bi_valid = 0;
        deflate.last_eob_len = 8;
        deflate.init_block();
        deflate.window_size = deflate.w_size * 2;
        deflate.head[deflate.hash_size - 1] = 0;
        for (int i = 0; i < deflate.hash_size - 1; i++) {
            deflate.head[i] = 0;
        }
        Deflate.Config config = Deflate.config_table[deflate.level];
        deflate.max_lazy_match = config.max_lazy;
        deflate.good_match = config.good_length;
        deflate.nice_match = config.nice_length;
        deflate.max_chain_length = config.max_chain;
        deflate.strstart = 0;
        deflate.block_start = 0;
        deflate.lookahead = 0;
        deflate.prev_length = 2;
        deflate.match_length = 2;
        deflate.match_available = 0;
        deflate.ins_h = 0;
        this.compress = true;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            finish();
        } catch (IOException unused) {
        } catch (Throwable th) {
            end();
            this.out.close();
            this.out = null;
            throw th;
        }
        end();
        this.out.close();
        this.out = null;
    }

    public final void end() {
        Deflate deflate;
        ZStream zStream = this.z;
        if (zStream == null) {
            return;
        }
        if (this.compress && (deflate = zStream.dstate) != null) {
            int i = deflate.status;
            if (i == 42 || i == 113 || i == 666) {
                deflate.pending_buf = null;
                deflate.head = null;
                deflate.prev = null;
                deflate.window = null;
            }
            zStream.dstate = null;
        }
        zStream.next_in = null;
        zStream.next_out = null;
        zStream.msg = null;
        zStream._adler = null;
        this.z = null;
    }

    public final void finish() {
        while (true) {
            ZStream zStream = this.z;
            byte[] bArr = this.buf;
            zStream.next_out = bArr;
            zStream.next_out_index = 0;
            int i = this.bufsize;
            zStream.avail_out = i;
            boolean z = this.compress;
            int deflate = z ? zStream.deflate(4) : -2;
            if (deflate != 1 && deflate != 0) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(z ? "de" : "in");
                stringBuffer.append("flating: ");
                stringBuffer.append(this.z.msg);
                throw new FileSystemException(stringBuffer.toString());
            }
            int i2 = i - this.z.avail_out;
            if (i2 > 0) {
                this.out.write(bArr, 0, i2);
            }
            ZStream zStream2 = this.z;
            if (zStream2.avail_in <= 0 && zStream2.avail_out != 0) {
                flush();
                return;
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.out.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        ZStream zStream = this.z;
        zStream.next_in = bArr;
        zStream.next_in_index = i;
        zStream.avail_in = i2;
        while (true) {
            ZStream zStream2 = this.z;
            byte[] bArr2 = this.buf;
            zStream2.next_out = bArr2;
            zStream2.next_out_index = 0;
            int i3 = this.bufsize;
            zStream2.avail_out = i3;
            int i4 = this.flush;
            boolean z = this.compress;
            if ((z ? zStream2.deflate(i4) : -2) != 0) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(z ? "de" : "in");
                stringBuffer.append("flating: ");
                stringBuffer.append(this.z.msg);
                throw new FileSystemException(stringBuffer.toString());
            }
            this.out.write(bArr2, 0, i3 - this.z.avail_out);
            ZStream zStream3 = this.z;
            if (zStream3.avail_in <= 0 && zStream3.avail_out != 0) {
                return;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        byte[] bArr = this.buf1;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
