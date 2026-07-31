package org.apache.commons.io.input;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.function.Constants;
import org.apache.commons.io.function.IOIntConsumer$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BoundedInputStream extends FilterInputStream implements InputStreamRetargetInterface {
    public final IOIntConsumer$$ExternalSyntheticLambda0 afterRead;
    public volatile boolean closed;
    public long count;
    public long mark;
    public final long maxCount;
    public final IOIntConsumer$$ExternalSyntheticLambda0 onMaxCount;
    public final boolean propagateClose;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder extends AbstractStreamBuilder {
        public long maxCount;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoundedInputStream(InputStream inputStream, long j) {
        super(inputStream);
        Builder builder = new Builder();
        Charset.defaultCharset();
        Charset.defaultCharset();
        builder.maxCount = -1L;
        builder.maxCount = Math.max(-1L, j);
        this.afterRead = IOIntConsumer$$ExternalSyntheticLambda0.NOOP;
        this.count = 0L;
        this.maxCount = builder.maxCount;
        this.propagateClose = true;
        this.onMaxCount = Constants.IO_BI_CONSUMER;
    }

    public final synchronized void afterRead(int i) {
        if (i != -1) {
            try {
                this.count += i;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.afterRead.getClass();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        long j = this.maxCount;
        return Math.min(available$org$apache$commons$io$input$ProxyInputStream(), (int) Math.min(j == -1 ? Long.MAX_VALUE : Math.max(0L, j - getCount()), 2147483647L));
    }

    public final int available$org$apache$commons$io$input$ProxyInputStream() {
        if (((FilterInputStream) this).in == null || this.closed) {
            return 0;
        }
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.propagateClose) {
            close$org$apache$commons$io$input$ProxyInputStream();
        }
    }

    public final void close$org$apache$commons$io$input$ProxyInputStream() {
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new IOException(e2);
            }
        }
        this.closed = true;
    }

    public final synchronized long getCount() {
        return this.count;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.mark = this.count;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.maxCount;
        if (j >= 0 && getCount() >= j) {
            getCount();
            this.onMaxCount.getClass();
            return -1;
        }
        long j2 = i2;
        if (j >= 0) {
            j2 = Math.min(j2, j - getCount());
        }
        return read$org$apache$commons$io$input$ProxyInputStream(bArr, i, (int) j2);
    }

    public final int read$org$apache$commons$io$input$ProxyInputStream() {
        int read = ((FilterInputStream) this).in.read();
        afterRead(read != -1 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        ((FilterInputStream) this).in.reset();
        this.count = this.mark;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        long skip;
        long j2 = this.maxCount;
        if (j2 >= 0) {
            j = Math.min(j, j2 - getCount());
        }
        skip = ((FilterInputStream) this).in.skip(j);
        this.count += skip;
        return skip;
    }

    public final String toString() {
        return ((FilterInputStream) this).in.toString();
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }

    public final int read$org$apache$commons$io$input$ProxyInputStream(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        afterRead(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        long j = this.maxCount;
        if (j >= 0 && getCount() >= j) {
            getCount();
            this.onMaxCount.getClass();
            return -1;
        }
        return read$org$apache$commons$io$input$ProxyInputStream();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
