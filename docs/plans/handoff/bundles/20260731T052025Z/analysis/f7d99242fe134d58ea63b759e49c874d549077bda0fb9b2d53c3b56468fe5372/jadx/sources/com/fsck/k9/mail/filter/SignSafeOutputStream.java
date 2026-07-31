package com.fsck.k9.mail.filter;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SignSafeOutputStream extends FilterOutputStream {
    public static final byte[] ESCAPED_SPACE = {61, 50, 48};
    public boolean closed;
    public final byte[] outBuffer;
    public int outputIndex;
    public int state;

    public SignSafeOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.state = 3;
        this.closed = false;
        this.outBuffer = new byte[1024];
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.closed) {
            return;
        }
        try {
            flush();
        } finally {
            this.closed = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0042, code lost:
    
        if (r6 != 13) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0047, code lost:
    
        if (r6 != 13) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000b, code lost:
    
        if (r6 != 13) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void encode(byte r6) {
        /*
            r5 = this;
            int r0 = r5.state
            r1 = 8
            r2 = 13
            r3 = 2
            r4 = 1
            switch(r0) {
                case 1: goto L47;
                case 2: goto L3e;
                case 3: goto L35;
                case 4: goto L2c;
                case 5: goto L23;
                case 6: goto L1a;
                case 7: goto L11;
                default: goto Lb;
            }
        Lb:
            if (r6 == r2) goto Lf
        Ld:
            r0 = r4
            goto L4a
        Lf:
            r0 = r3
            goto L4a
        L11:
            if (r6 == r2) goto Lf
            r0 = 32
            if (r6 == r0) goto L18
            goto Ld
        L18:
            r0 = r1
            goto L4a
        L1a:
            if (r6 == r2) goto Lf
            r0 = 109(0x6d, float:1.53E-43)
            if (r6 == r0) goto L21
            goto Ld
        L21:
            r0 = 7
            goto L4a
        L23:
            if (r6 == r2) goto Lf
            r0 = 111(0x6f, float:1.56E-43)
            if (r6 == r0) goto L2a
            goto Ld
        L2a:
            r0 = 6
            goto L4a
        L2c:
            if (r6 == r2) goto Lf
            r0 = 114(0x72, float:1.6E-43)
            if (r6 == r0) goto L33
            goto Ld
        L33:
            r0 = 5
            goto L4a
        L35:
            if (r6 == r2) goto Lf
            r0 = 70
            if (r6 == r0) goto L3c
            goto Ld
        L3c:
            r0 = 4
            goto L4a
        L3e:
            r0 = 10
            if (r6 == r0) goto L45
            if (r6 == r2) goto Lf
            goto Ld
        L45:
            r0 = 3
            goto L4a
        L47:
            if (r6 == r2) goto Lf
            goto Ld
        L4a:
            if (r0 != r1) goto L61
            r5.state = r4
            r6 = 0
            byte[] r0 = com.fsck.k9.mail.filter.SignSafeOutputStream.ESCAPED_SPACE
            r6 = r0[r6]
            r5.writeToBuffer(r6)
            r6 = r0[r4]
            r5.writeToBuffer(r6)
            r6 = r0[r3]
            r5.writeToBuffer(r6)
            return
        L61:
            r5.state = r0
            r5.writeToBuffer(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.filter.SignSafeOutputStream.encode(byte):void");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() {
        int i = this.outputIndex;
        byte[] bArr = this.outBuffer;
        int length = bArr.length;
        OutputStream outputStream = ((FilterOutputStream) this).out;
        if (i < length) {
            outputStream.write(bArr, 0, i);
        } else {
            outputStream.write(bArr);
        }
        this.outputIndex = 0;
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
            return;
        }
        for (int i3 = i; i3 < i2 + i; i3++) {
            encode(bArr[i3]);
        }
    }

    public final void writeToBuffer(byte b) {
        int i = this.outputIndex;
        int i2 = i + 1;
        this.outputIndex = i2;
        byte[] bArr = this.outBuffer;
        bArr[i] = b;
        if (i2 >= bArr.length) {
            int length = bArr.length;
            OutputStream outputStream = ((FilterOutputStream) this).out;
            if (i2 < length) {
                outputStream.write(bArr, 0, i2);
            } else {
                outputStream.write(bArr);
            }
            this.outputIndex = 0;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        if (!this.closed) {
            encode((byte) i);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
        }
    }
}
