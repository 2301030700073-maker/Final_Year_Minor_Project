package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class zzccn implements zzhed {
    private final ByteBuffer zza;

    public zzccn(ByteBuffer byteBuffer) {
        this.zza = byteBuffer.duplicate();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzhed
    public final int zza(ByteBuffer byteBuffer) {
        if (this.zza.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), this.zza.remaining());
        byte[] bArr = new byte[min];
        this.zza.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzhed
    public final long zzb() {
        return this.zza.position();
    }

    @Override // com.google.android.gms.internal.ads.zzhed
    public final long zzc() {
        return this.zza.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzhed
    public final ByteBuffer zzd(long j, long j2) {
        ByteBuffer byteBuffer = this.zza;
        int i = (int) j;
        int position = byteBuffer.position();
        byteBuffer.position(i);
        ByteBuffer slice = this.zza.slice();
        slice.limit((int) j2);
        this.zza.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.zzhed
    public final void zze(long j) {
        this.zza.position((int) j);
    }
}
