package org.apache.commons.io.output;

import com.fsck.k9.mailstore.DeferredFileBody;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.commons.io.IOUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ThresholdingOutputStream extends OutputStream {
    public final int threshold = 8192;
    public boolean thresholdExceeded;
    public long written;

    public final void checkThreshold(int i) {
        if (this.thresholdExceeded || this.written + i <= this.threshold) {
            return;
        }
        this.thresholdExceeded = true;
        DeferredFileBody.AnonymousClass1 anonymousClass1 = (DeferredFileBody.AnonymousClass1) this;
        if (anonymousClass1.outputFile != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("thresholdReached must not be called if we already have an output file!");
            return;
        }
        OutputStream outputStream = anonymousClass1.currentOutputStream;
        if (!(outputStream instanceof ByteArrayOutputStream)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("currentOutputStream must be memory-based at this point!");
            return;
        }
        anonymousClass1.outputFile = anonymousClass1.fileFactory.createFile();
        FileOutputStream fileOutputStream = new FileOutputStream(anonymousClass1.outputFile);
        anonymousClass1.currentOutputStream = fileOutputStream;
        ((ByteArrayOutputStream) outputStream).writeTo(fileOutputStream);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            flush();
        } catch (IOException unused) {
        }
        ((DeferredFileBody.AnonymousClass1) this).currentOutputStream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        ((DeferredFileBody.AnonymousClass1) this).currentOutputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3 = IOUtils.$r8$clinit;
        Objects.requireNonNull(bArr, "byte array");
        IOUtils.checkFromIndexSize(i, i2, bArr.length);
        checkThreshold(i2);
        ((DeferredFileBody.AnonymousClass1) this).currentOutputStream.write(bArr, i, i2);
        this.written += i2;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        checkThreshold(bArr.length);
        ((DeferredFileBody.AnonymousClass1) this).currentOutputStream.write(bArr);
        this.written += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        checkThreshold(1);
        ((DeferredFileBody.AnonymousClass1) this).currentOutputStream.write(i);
        this.written++;
    }
}
