package org.jsoup.internal;

import com.google.android.exoplayer2.util.Log;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.FilterInputStream;
import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ControllableInputStream extends FilterInputStream implements InputStreamRetargetInterface {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final boolean allowClose;
    public final SimpleBufferedInput buff;
    public boolean interrupted;
    public int markPos;
    public final int maxSize;
    public int readPos;
    public int remaining;

    public ControllableInputStream(SimpleBufferedInput simpleBufferedInput) {
        super(simpleBufferedInput);
        this.allowClose = true;
        this.readPos = 0;
        this.buff = simpleBufferedInput;
        this.maxSize = 0;
        this.remaining = 0;
        this.markPos = -1;
        System.nanoTime();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.allowClose) {
            super.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        this.markPos = this.readPos;
        SimpleBufferedInput simpleBufferedInput = this.buff;
        simpleBufferedInput.bufMark = simpleBufferedInput.bufPos;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        boolean z = this.maxSize != 0;
        if (this.interrupted || (z && this.remaining <= 0)) {
            return -1;
        }
        if (Thread.currentThread().isInterrupted()) {
            this.interrupted = true;
            return -1;
        }
        if (z && i2 > (i3 = this.remaining)) {
            i2 = i3;
        }
        int i4 = z ? this.remaining : Log.LOG_LEVEL_OFF;
        SimpleBufferedInput simpleBufferedInput = this.buff;
        simpleBufferedInput.getClass();
        simpleBufferedInput.capRemaining = Math.max(0, i4);
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            return read;
        }
        if (z && read > 0) {
            this.remaining -= read;
        }
        this.readPos += read;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        int i = this.markPos;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Resetting to invalid mark");
            return;
        }
        SimpleBufferedInput simpleBufferedInput = this.buff;
        int i2 = simpleBufferedInput.bufMark;
        if (i2 < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Resetting to invalid mark");
            return;
        }
        simpleBufferedInput.bufPos = i2;
        simpleBufferedInput.bufMark = -1;
        int i3 = this.maxSize;
        if (i3 != 0) {
            int i4 = i3 - i;
            this.remaining = i4;
            simpleBufferedInput.capRemaining = Math.max(0, i4);
        } else {
            this.remaining = 0;
            simpleBufferedInput.capRemaining = Math.max(0, Log.LOG_LEVEL_OFF);
        }
        this.readPos = this.markPos;
        this.markPos = -1;
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }
}
