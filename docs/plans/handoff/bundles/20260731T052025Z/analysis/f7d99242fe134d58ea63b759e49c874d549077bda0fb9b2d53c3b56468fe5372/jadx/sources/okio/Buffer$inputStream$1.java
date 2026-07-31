package okio;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Buffer$inputStream$1 extends InputStream implements InputStreamRetargetInterface {
    public final /* synthetic */ Buffer this$0;

    public Buffer$inputStream$1(Buffer buffer) {
        this.this$0 = buffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return (int) Math.min(this.this$0.size, 2147483647L);
    }

    @Override // java.io.InputStream
    public final int read() {
        Buffer buffer = this.this$0;
        if (buffer.size > 0) {
            return buffer.readByte() & 255;
        }
        return -1;
    }

    public final String toString() {
        return this.this$0 + ".inputStream()";
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        return this.this$0.read(bArr, i, i2);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
