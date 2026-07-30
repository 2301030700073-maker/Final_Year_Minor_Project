package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.FilterInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public class SdkFilterInputStream extends FilterInputStream {
    public SdkFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5056do() {
        if (Thread.interrupted()) {
            throw new AbortedException();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        m5056do();
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((FilterInputStream) this).in.close();
        m5056do();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        m5056do();
        ((FilterInputStream) this).in.mark(i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        m5056do();
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        m5056do();
        return ((FilterInputStream) this).in.skip(j);
    }
}
