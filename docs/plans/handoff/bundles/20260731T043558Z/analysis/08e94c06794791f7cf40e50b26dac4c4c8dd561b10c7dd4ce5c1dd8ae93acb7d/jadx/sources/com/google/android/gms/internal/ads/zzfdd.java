package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfdd implements zzfdm {
    private final zzfdm zza;
    private zzcxv zzb;

    public zzfdd(zzfdm zzfdmVar) {
        this.zza = zzfdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfdm
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcxv zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfdm
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzfdn zzfdnVar, zzfdl zzfdlVar, Object obj) {
        return zzb(zzfdnVar, zzfdlVar, null);
    }

    public final synchronized ListenableFuture zzb(zzfdn zzfdnVar, zzfdl zzfdlVar, zzcxv zzcxvVar) {
        zzbxj zzbxjVar;
        this.zzb = zzcxvVar;
        if (zzcxvVar == null || (zzbxjVar = zzfdnVar.zza) == null) {
            zzcxv zzcxvVar2 = zzcxvVar;
            return ((zzfdc) this.zza).zzb(zzfdnVar, zzfdlVar, zzcxvVar);
        }
        zzcus zza = zzcxvVar.zza();
        return zza.zzc(zza.zza(zzgui.zza(zzbxjVar)));
    }
}
