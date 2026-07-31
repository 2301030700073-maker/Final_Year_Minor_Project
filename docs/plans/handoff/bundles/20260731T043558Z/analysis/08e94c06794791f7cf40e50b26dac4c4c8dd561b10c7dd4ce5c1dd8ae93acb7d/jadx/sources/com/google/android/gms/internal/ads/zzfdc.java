package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfdc implements zzfdm {
    private zzcxv zza;

    @Override // com.google.android.gms.internal.ads.zzfdm
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcxv zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfdm
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzfdn zzfdnVar, zzfdl zzfdlVar, Object obj) {
        return zzb(zzfdnVar, zzfdlVar, null);
    }

    public final synchronized ListenableFuture zzb(zzfdn zzfdnVar, zzfdl zzfdlVar, zzcxv zzcxvVar) {
        zzcus zza;
        if (zzcxvVar != null) {
            this.zza = zzcxvVar;
        } else {
            this.zza = (zzcxv) zzfdlVar.zza(zzfdnVar.zzb).zzh();
        }
        zza = this.zza.zza();
        return zza.zzc(zza.zzb());
    }
}
