package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzkl {
    default void zza(zzpc zzpcVar) {
        throw new IllegalStateException("onPrepared not implemented");
    }

    default void zzb(zzkk zzkkVar, zzwv zzwvVar, zzyk[] zzykVarArr) {
        throw new IllegalStateException("onTracksSelected not implemented");
    }

    default void zzc(zzpc zzpcVar) {
        throw new IllegalStateException("onStopped not implemented");
    }

    default void zzd(zzpc zzpcVar) {
        throw new IllegalStateException("onReleased not implemented");
    }

    zzyv zze(zzpc zzpcVar);

    default long zzf(zzpc zzpcVar) {
        throw new IllegalStateException("getBackBufferDurationUs not implemented");
    }

    default boolean zzg(zzpc zzpcVar) {
        throw new IllegalStateException("retainBackBufferFromKeyframe not implemented");
    }

    default boolean zzh(zzkk zzkkVar) {
        long j = zzkkVar.zzd;
        throw null;
    }

    default boolean zzi(zzkk zzkkVar) {
        zzbf zzbfVar = zzkkVar.zzb;
        throw null;
    }

    default boolean zzj(zzpc zzpcVar, zzbf zzbfVar, zzuu zzuuVar, long j) {
        zzdt.zzc("LoadControl", "shouldContinuePreloading needs to be implemented when playlist preloading is enabled");
        return false;
    }
}
