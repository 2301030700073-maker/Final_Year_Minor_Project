package com.beetstra.jutf7;

import java.nio.ByteBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UTF7StyleCharsetEncoder extends CharsetEncoder {
    public static final boolean useUglyHackToForceCallToFlushInJava5;
    public final Base64Util base64;
    public boolean base64mode;
    public int bitsToOutput;
    public final UTF7StyleCharset cs;
    public int sextet;
    public final byte shift;
    public final boolean strict;
    public final byte unshift;

    static {
        String property = System.getProperty("java.specification.version");
        String property2 = System.getProperty("java.vm.vendor");
        boolean z = "1.4".equals(property) || "1.5".equals(property);
        useUglyHackToForceCallToFlushInJava5 = z;
        useUglyHackToForceCallToFlushInJava5 = z & "Sun Microsystems Inc.".equals(property2);
    }

    public UTF7StyleCharsetEncoder(UTF7StyleCharset uTF7StyleCharset, Base64Util base64Util, boolean z) {
        super(uTF7StyleCharset, 1.5f, 5.0f);
        this.cs = uTF7StyleCharset;
        this.base64 = base64Util;
        this.strict = z;
        this.shift = uTF7StyleCharset.shift();
        this.unshift = (byte) 45;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x004b, code lost:
    
        if (r6.strict == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0044, code lost:
    
        if (((int[]) r4.inverseAlphabet)[r0] >= 0) goto L24;
     */
    @Override // java.nio.charset.CharsetEncoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.nio.charset.CoderResult encodeLoop(java.nio.CharBuffer r7, java.nio.ByteBuffer r8) {
        /*
            r6 = this;
        L0:
            boolean r0 = r7.hasRemaining()
            if (r0 == 0) goto L9e
            int r0 = r8.remaining()
            r1 = 4
            if (r0 >= r1) goto L10
            java.nio.charset.CoderResult r6 = java.nio.charset.CoderResult.OVERFLOW
            return r6
        L10:
            char r0 = r7.get()
            com.beetstra.jutf7.UTF7StyleCharset r1 = r6.cs
            boolean r1 = r1.canEncodeDirectly(r0)
            boolean r2 = r6.base64mode
            r3 = 0
            com.beetstra.jutf7.Base64Util r4 = r6.base64
            byte r5 = r6.unshift
            if (r1 == 0) goto L5b
            if (r2 != 0) goto L26
            goto L56
        L26:
            int r1 = r6.bitsToOutput
            if (r1 == 0) goto L36
            int r1 = r6.sextet
            java.lang.Object r2 = r4.alphabet
            char[] r2 = (char[]) r2
            char r1 = r2[r1]
            byte r1 = (byte) r1
            r8.put(r1)
        L36:
            r1 = 128(0x80, float:1.8E-43)
            if (r0 < r1) goto L3e
            r4.getClass()
            goto L47
        L3e:
            java.lang.Object r1 = r4.inverseAlphabet
            int[] r1 = (int[]) r1
            r1 = r1[r0]
            if (r1 < 0) goto L47
            goto L4d
        L47:
            if (r0 == r5) goto L4d
            boolean r1 = r6.strict
            if (r1 == 0) goto L50
        L4d:
            r8.put(r5)
        L50:
            r6.base64mode = r3
            r6.sextet = r3
            r6.bitsToOutput = r3
        L56:
            byte r0 = (byte) r0
            r8.put(r0)
            goto L0
        L5b:
            byte r1 = r6.shift
            if (r2 != 0) goto L68
            if (r0 != r1) goto L68
            r8.put(r1)
            r8.put(r5)
            goto L0
        L68:
            if (r2 != 0) goto L6d
            r8.put(r1)
        L6d:
            r1 = 1
            r6.base64mode = r1
            int r1 = r6.bitsToOutput
            int r1 = r1 + 16
            r6.bitsToOutput = r1
        L76:
            int r1 = r6.bitsToOutput
            r2 = 6
            if (r1 < r2) goto L95
            int r1 = r1 + (-6)
            r6.bitsToOutput = r1
            int r2 = r6.sextet
            int r1 = r0 >> r1
            int r2 = r2 + r1
            r1 = r2 & 63
            r6.sextet = r1
            java.lang.Object r2 = r4.alphabet
            char[] r2 = (char[]) r2
            char r1 = r2[r1]
            byte r1 = (byte) r1
            r8.put(r1)
            r6.sextet = r3
            goto L76
        L95:
            int r1 = 6 - r1
            int r0 = r0 << r1
            r0 = r0 & 63
            r6.sextet = r0
            goto L0
        L9e:
            boolean r6 = r6.base64mode
            if (r6 == 0) goto Lba
            boolean r6 = com.beetstra.jutf7.UTF7StyleCharsetEncoder.useUglyHackToForceCallToFlushInJava5
            if (r6 == 0) goto Lba
            int r6 = r8.limit()
            float r6 = (float) r6
            int r7 = r7.limit()
            float r7 = (float) r7
            r8 = 1084227584(0x40a00000, float:5.0)
            float r7 = r7 * r8
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 == 0) goto Lba
            java.nio.charset.CoderResult r6 = java.nio.charset.CoderResult.OVERFLOW
            return r6
        Lba:
            java.nio.charset.CoderResult r6 = java.nio.charset.CoderResult.UNDERFLOW
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beetstra.jutf7.UTF7StyleCharsetEncoder.encodeLoop(java.nio.CharBuffer, java.nio.ByteBuffer):java.nio.charset.CoderResult");
    }

    @Override // java.nio.charset.CharsetEncoder
    public final CoderResult implFlush(ByteBuffer byteBuffer) {
        if (this.base64mode) {
            if (byteBuffer.remaining() < 2) {
                return CoderResult.OVERFLOW;
            }
            if (this.bitsToOutput != 0) {
                byteBuffer.put((byte) ((char[]) this.base64.alphabet)[this.sextet]);
            }
            byteBuffer.put(this.unshift);
        }
        return CoderResult.UNDERFLOW;
    }

    @Override // java.nio.charset.CharsetEncoder
    public final void implReset() {
        this.base64mode = false;
        this.sextet = 0;
        this.bitsToOutput = 0;
    }
}
