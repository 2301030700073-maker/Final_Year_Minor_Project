package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class zzbt extends InputStream {
    private final InputStream zza;
    private volatile zzbe zzb;

    public zzbt(InputStream inputStream) {
        this.zza = (InputStream) Preconditions.checkNotNull(inputStream);
    }

    private final int zzb(int i) {
        if (i != -1) {
            return i;
        }
        zzbe zzbeVar = this.zzb;
        if (zzbeVar == null) {
            return -1;
        }
        throw new ChannelIOException("Channel closed unexpectedly before stream was finished", zzbeVar.zza, zzbeVar.zzb);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.zza.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zza.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.zza.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.zza.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() {
        int read = this.zza.read();
        zzb(read);
        return read;
    }

    @Override // java.io.InputStream
    public final void reset() {
        this.zza.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.zza.skip(j);
    }

    public final void zza(zzbe zzbeVar) {
        this.zzb = (zzbe) Preconditions.checkNotNull(zzbeVar);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        int read = this.zza.read(bArr);
        zzb(read);
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.zza.read(bArr, i, i2);
        zzb(read);
        return read;
    }
}
