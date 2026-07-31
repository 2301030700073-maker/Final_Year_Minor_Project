package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzcg {
    public static final ByteBuffer zza = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    default long zza(long j) {
        return j;
    }

    zzcd zzb(zzcd zzcdVar) throws zzcf;

    boolean zzc();

    void zzd(ByteBuffer byteBuffer);

    void zze();

    ByteBuffer zzf();

    boolean zzg();

    @Deprecated
    default void zzh() {
        throw new IllegalStateException("AudioProcessor must implement at least one #flush() overload.");
    }

    default void zzi(zzce zzceVar) {
        zzh();
    }

    void zzj();
}
