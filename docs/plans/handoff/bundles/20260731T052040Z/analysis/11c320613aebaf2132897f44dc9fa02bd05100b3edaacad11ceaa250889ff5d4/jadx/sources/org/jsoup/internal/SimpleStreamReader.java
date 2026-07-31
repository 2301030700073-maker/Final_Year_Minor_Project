package org.jsoup.internal;

import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SimpleStreamReader extends Reader {
    public ByteBuffer byteBuf;
    public final CharsetDecoder decoder;
    public final ControllableInputStream in;

    public SimpleStreamReader(ControllableInputStream controllableInputStream, Charset charset) {
        this.in = controllableInputStream;
        CharsetDecoder newDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this.decoder = newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        ByteBuffer wrap = ByteBuffer.wrap((byte[]) SimpleBufferedInput.BufferPool.borrow());
        this.byteBuf = wrap;
        wrap.flip();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ByteBuffer byteBuffer = this.byteBuf;
        if (byteBuffer == null) {
            return;
        }
        SimpleBufferedInput.BufferPool.release(byteBuffer.array());
        this.byteBuf = null;
        this.in.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0095, code lost:
    
        throw new java.io.IOException("Underlying input stream returned zero bytes");
     */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(char[] r7, int r8, int r9) {
        /*
            r6 = this;
            java.nio.ByteBuffer r0 = r6.byteBuf
            androidx.sqlite.SQLite.notNull(r0)
            java.nio.CharBuffer r7 = java.nio.CharBuffer.wrap(r7, r8, r9)
            int r8 = r7.position()
            if (r8 == 0) goto L13
            java.nio.CharBuffer r7 = r7.slice()
        L13:
            r8 = 0
            r9 = r8
        L15:
            java.nio.ByteBuffer r0 = r6.byteBuf
            java.nio.charset.CharsetDecoder r1 = r6.decoder
            java.nio.charset.CoderResult r0 = r1.decode(r0, r7, r9)
            boolean r2 = r0.isUnderflow()
            if (r2 == 0) goto L9c
            if (r9 != 0) goto La2
            boolean r0 = r7.hasRemaining()
            if (r0 == 0) goto La2
            int r0 = r7.position()
            org.jsoup.internal.ControllableInputStream r2 = r6.in
            if (r0 <= 0) goto L39
            int r0 = r2.available()     // Catch: java.io.IOException -> La2
            if (r0 <= 0) goto La2
        L39:
            java.nio.ByteBuffer r0 = r6.byteBuf
            r0.compact()
            java.nio.ByteBuffer r0 = r6.byteBuf     // Catch: java.lang.Throwable -> L8c
            int r0 = r0.position()     // Catch: java.lang.Throwable -> L8c
            java.nio.ByteBuffer r3 = r6.byteBuf     // Catch: java.lang.Throwable -> L8c
            int r3 = r3.limit()     // Catch: java.lang.Throwable -> L8c
            int r3 = r3 - r0
            java.nio.ByteBuffer r4 = r6.byteBuf     // Catch: java.lang.Throwable -> L8c
            byte[] r4 = r4.array()     // Catch: java.lang.Throwable -> L8c
            java.nio.ByteBuffer r5 = r6.byteBuf     // Catch: java.lang.Throwable -> L8c
            int r5 = r5.arrayOffset()     // Catch: java.lang.Throwable -> L8c
            int r5 = r5 + r0
            int r2 = r2.read(r4, r5, r3)     // Catch: java.lang.Throwable -> L8c
            if (r2 >= 0) goto L64
            java.nio.ByteBuffer r0 = r6.byteBuf
            r0.flip()
            goto L77
        L64:
            if (r2 == 0) goto L8e
            java.nio.ByteBuffer r3 = r6.byteBuf     // Catch: java.lang.Throwable -> L8c
            int r0 = r0 + r2
            r3.position(r0)     // Catch: java.lang.Throwable -> L8c
            java.nio.ByteBuffer r0 = r6.byteBuf
            r0.flip()
            java.nio.ByteBuffer r0 = r6.byteBuf
            int r2 = r0.remaining()
        L77:
            if (r2 >= 0) goto L15
            int r9 = r7.position()
            r0 = 1
            if (r9 != 0) goto L8a
            java.nio.ByteBuffer r9 = r6.byteBuf
            boolean r9 = r9.hasRemaining()
            if (r9 != 0) goto L8a
            r9 = r0
            goto La2
        L8a:
            r9 = r0
            goto L15
        L8c:
            r7 = move-exception
            goto L96
        L8e:
            java.io.IOException r7 = new java.io.IOException     // Catch: java.lang.Throwable -> L8c
            java.lang.String r8 = "Underlying input stream returned zero bytes"
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L8c
            throw r7     // Catch: java.lang.Throwable -> L8c
        L96:
            java.nio.ByteBuffer r6 = r6.byteBuf
            r6.flip()
            throw r7
        L9c:
            boolean r2 = r0.isOverflow()
            if (r2 == 0) goto Lb6
        La2:
            if (r9 == 0) goto La7
            r1.reset()
        La7:
            int r6 = r7.position()
            if (r6 != 0) goto Lb1
            if (r9 == 0) goto Lb0
            r8 = -1
        Lb0:
            return r8
        Lb1:
            int r6 = r7.position()
            return r6
        Lb6:
            r0.throwException()
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.internal.SimpleStreamReader.read(char[], int, int):int");
    }
}
