package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class zzbv extends OutputStream {
    private final OutputStream zza;
    private volatile zzbe zzb;

    public zzbv(OutputStream outputStream) {
        this.zza = (OutputStream) Preconditions.checkNotNull(outputStream);
    }

    private final IOException zzb(IOException iOException) {
        zzbe zzbeVar = this.zzb;
        return zzbeVar != null ? new ChannelIOException("Channel closed unexpectedly before stream was finished", zzbeVar.zza, zzbeVar.zzb) : iOException;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.zza.close();
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        try {
            this.zza.flush();
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        try {
            this.zza.write(i);
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    public final void zza(zzbe zzbeVar) {
        this.zzb = zzbeVar;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        try {
            this.zza.write(bArr);
        } catch (IOException e) {
            throw zzb(e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        try {
            this.zza.write(bArr, i, i2);
        } catch (IOException e) {
            throw zzb(e);
        }
    }
}
