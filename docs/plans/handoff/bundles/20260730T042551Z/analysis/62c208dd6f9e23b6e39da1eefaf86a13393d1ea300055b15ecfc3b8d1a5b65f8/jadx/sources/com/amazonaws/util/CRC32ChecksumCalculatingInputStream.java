package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
public class CRC32ChecksumCalculatingInputStream extends SdkFilterInputStream {

    /* renamed from: do, reason: not valid java name */
    public final CRC32 f9072do;

    public CRC32ChecksumCalculatingInputStream(InputStream inputStream) {
        super(inputStream);
        this.f9072do = new CRC32();
    }

    /* renamed from: if, reason: not valid java name */
    public final long m5177if() {
        return this.f9072do.getValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        SdkFilterInputStream.m5056do();
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f9072do.update(read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        SdkFilterInputStream.m5056do();
        this.f9072do.reset();
        ((FilterInputStream) this).in.reset();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        SdkFilterInputStream.m5056do();
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read != -1) {
            this.f9072do.update(bArr, i, read);
        }
        return read;
    }
}
