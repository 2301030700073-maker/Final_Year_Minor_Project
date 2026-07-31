package org.schabi.newpipe.streams.io;

import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SharpOutputStream extends OutputStream {
    public final SharpStream stream;

    public SharpOutputStream(SharpStream sharpStream) {
        if (sharpStream.canWrite()) {
            this.stream = sharpStream;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("SharpStream is not writable");
            throw null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.stream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.stream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.stream.write((byte) i);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.stream.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.stream.write(bArr, i, i2);
    }
}
