package org.apache.james.mime4j.codec;

import de.cketti.changelog.XmlParser;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.util.BufferRecycler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class Base64InputStream extends InputStream implements InputStreamRetargetInterface {
    public boolean closed;
    public final XmlParser decodedBuf;
    public final byte[] encoded;
    public boolean eof;
    public final InputStream in;
    public final DecodeMonitor monitor;
    public int position;
    public final byte[] singleByte;
    public int size;
    public static final ThreadLocal _recyclerRef = new ThreadLocal();
    public static final int[] BASE64_DECODE = new int[256];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            BASE64_DECODE[i2] = -1;
        }
        while (true) {
            byte[] bArr = Base64OutputStream.BASE64_TABLE;
            if (i >= 64) {
                return;
            }
            BASE64_DECODE[bArr[i] & 255] = i;
            i++;
        }
    }

    public Base64InputStream(InputStream inputStream, DecodeMonitor decodeMonitor, int i) {
        this.singleByte = new byte[1];
        this.position = 0;
        this.size = 0;
        this.closed = false;
        if (inputStream == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            throw null;
        }
        this.encoded = getBufferRecycler().allocByteBuffer(1, 1536);
        this.decodedBuf = new XmlParser(getBufferRecycler(), 512);
        this.in = inputStream;
        this.monitor = decodeMonitor;
    }

    public static BufferRecycler getBufferRecycler() {
        ThreadLocal threadLocal = _recyclerRef;
        SoftReference softReference = (SoftReference) threadLocal.get();
        BufferRecycler bufferRecycler = softReference == null ? null : (BufferRecycler) softReference.get();
        if (bufferRecycler != null) {
            return bufferRecycler;
        }
        BufferRecycler bufferRecycler2 = new BufferRecycler();
        threadLocal.set(new SoftReference(bufferRecycler2));
        return bufferRecycler2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        getBufferRecycler().releaseByteBuffer(1, this.encoded);
        XmlParser xmlParser = this.decodedBuf;
        ((BufferRecycler) xmlParser.xmlPullParser).releaseByteBuffer(0, (byte[]) xmlParser.result);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
            return 0;
        }
        bArr.getClass();
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        return read0(bArr, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00ba, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0026, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005a, code lost:
    
        r6 = r12.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x005e, code lost:
    
        if (r6 >= r12.size) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0060, code lost:
    
        if (r15 >= r0) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0062, code lost:
    
        r12.position = r6 + 1;
        r6 = r8[r6] & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
    
        if (r6 != 61) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bb, code lost:
    
        r7 = org.apache.james.mime4j.codec.Base64InputStream.BASE64_DECODE[r6];
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bf, code lost:
    
        if (r7 >= 0) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00db, code lost:
    
        r5 = (r5 << 6) | r7;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e0, code lost:
    
        if (r2 != 4) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e2, code lost:
    
        r2 = (byte) (r5 >>> 16);
        r6 = (byte) (r5 >>> 8);
        r7 = (byte) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00eb, code lost:
    
        if (r15 >= (r0 - 2)) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ed, code lost:
    
        r13[r15] = r2;
        r2 = r15 + 2;
        r13[r15 + 1] = r6;
        r15 = r15 + 3;
        r13[r2] = r7;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fe, code lost:
    
        if (r15 >= (r0 - 1)) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0100, code lost:
    
        r13[r15] = r2;
        r13[r15 + 1] = r6;
        r1.append(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x011f, code lost:
    
        return r0 - r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010a, code lost:
    
        if (r15 >= r0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x010c, code lost:
    
        r13[r15] = r2;
        r1.append(r6);
        r1.append(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0115, code lost:
    
        r1.append(r2);
        r1.append(r6);
        r1.append(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c3, code lost:
    
        if (r6 == 13) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c7, code lost:
    
        if (r6 == 10) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00cb, code lost:
    
        if (r6 == 32) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00cd, code lost:
    
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d2, code lost:
    
        if ((r9 instanceof org.apache.james.mime4j.codec.DecodeMonitor.AnonymousClass1) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d5, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$4("Unexpected base64 byte");
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00da, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x006f, code lost:
    
        r12.eof = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0072, code lost:
    
        if (r2 != 2) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0074, code lost:
    
        r12 = (byte) (r5 >>> 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0077, code lost:
    
        if (r15 >= r0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0079, code lost:
    
        r0 = r15 + 1;
        r13[r15] = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x007d, code lost:
    
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00b4, code lost:
    
        return r15 - r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x007f, code lost:
    
        r1.append(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0084, code lost:
    
        if (r2 != 3) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0086, code lost:
    
        r2 = (byte) (r5 >>> 10);
        r12 = (byte) ((r5 >>> 2) & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0090, code lost:
    
        if (r15 >= (r0 - 1)) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0092, code lost:
    
        r0 = r15 + 1;
        r13[r15] = r2;
        r15 = r15 + 2;
        r13[r0] = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x009b, code lost:
    
        if (r15 >= r0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x009d, code lost:
    
        r0 = r15 + 1;
        r13[r15] = r2;
        r1.append(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00a5, code lost:
    
        r1.append(r2);
        r1.append(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00ac, code lost:
    
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00b1, code lost:
    
        if ((r9 instanceof org.apache.james.mime4j.codec.DecodeMonitor.AnonymousClass1) != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00b5, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$4("Unexpected padding character");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read0(byte[] r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.codec.Base64InputStream.read0(byte[], int, int):int");
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        if (!this.closed) {
            bArr.getClass();
            if (bArr.length == 0) {
                return 0;
            }
            return read0(bArr, 0, bArr.length);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
        return 0;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr;
        int read0;
        if (!this.closed) {
            do {
                bArr = this.singleByte;
                read0 = read0(bArr, 0, 1);
                if (read0 == -1) {
                    return -1;
                }
            } while (read0 != 1);
            return bArr[0] & 255;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("Stream has been closed");
        return 0;
    }

    public Base64InputStream(InputStream inputStream, int i) {
        this(inputStream, DecodeMonitor.SILENT, 0);
    }
}
