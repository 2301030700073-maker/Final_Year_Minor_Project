package org.apache.james.mime4j.io;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextInputStream extends InputStream implements InputStreamRetargetInterface {
    public final ByteBuffer bbuf;
    public final CharBuffer cbuf;
    public final CharsetEncoder encoder;
    public int mark = -1;

    public TextInputStream(CharSequence charSequence, Charset charset) {
        CharsetEncoder newEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this.encoder = newEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        ByteBuffer allocate = ByteBuffer.allocate(1024);
        this.bbuf = allocate;
        allocate.flip();
        this.cbuf = CharBuffer.wrap(charSequence);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.cbuf.remaining();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.mark = this.cbuf.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        ByteBuffer byteBuffer = this.bbuf;
        boolean hasRemaining = byteBuffer.hasRemaining();
        CharBuffer charBuffer = this.cbuf;
        if (!hasRemaining && !charBuffer.hasRemaining()) {
            return -1;
        }
        int i3 = 0;
        while (i2 > 0) {
            if (!byteBuffer.hasRemaining()) {
                byteBuffer.compact();
                CoderResult encode = this.encoder.encode(charBuffer, byteBuffer, true);
                if (encode.isError()) {
                    encode.throwException();
                }
                byteBuffer.flip();
                if (!byteBuffer.hasRemaining() && !charBuffer.hasRemaining()) {
                    break;
                }
            } else {
                int min = Math.min(byteBuffer.remaining(), i2);
                byteBuffer.get(bArr, i, min);
                i += min;
                i2 -= min;
                i3 += min;
            }
        }
        if (i3 > 0 || byteBuffer.hasRemaining() || charBuffer.hasRemaining()) {
            return i3;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final void reset() {
        int i = this.mark;
        if (i != -1) {
            this.cbuf.position(i);
            this.mark = -1;
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        int i = 0;
        while (j > 0) {
            CharBuffer charBuffer = this.cbuf;
            if (!charBuffer.hasRemaining()) {
                break;
            }
            charBuffer.get();
            j--;
            i++;
        }
        return i;
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read() {
        while (true) {
            ByteBuffer byteBuffer = this.bbuf;
            if (byteBuffer.hasRemaining()) {
                return byteBuffer.get() & 255;
            }
            byteBuffer.compact();
            CharsetEncoder charsetEncoder = this.encoder;
            CharBuffer charBuffer = this.cbuf;
            CoderResult encode = charsetEncoder.encode(charBuffer, byteBuffer, true);
            if (encode.isError()) {
                encode.throwException();
            }
            byteBuffer.flip();
            if (!byteBuffer.hasRemaining() && !charBuffer.hasRemaining()) {
                return -1;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
