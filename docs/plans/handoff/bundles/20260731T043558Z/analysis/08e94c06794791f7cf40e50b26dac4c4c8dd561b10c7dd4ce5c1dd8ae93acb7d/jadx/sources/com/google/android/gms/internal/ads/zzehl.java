package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzehl implements zzehk {
    public final zzehk zza;
    private final zzglu zzb;

    public zzehl(zzehk zzehkVar, zzglu zzgluVar) {
        this.zza = zzehkVar;
        this.zzb = zzgluVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final boolean zza(zzfgf zzfgfVar, zzffu zzffuVar) {
        return this.zza.zza(zzfgfVar, zzffuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzehk
    public final ListenableFuture zzb(zzfgf zzfgfVar, zzffu zzffuVar) {
        return zzgui.zzk(this.zza.zzb(zzfgfVar, zzffuVar), this.zzb, zzcbv.zza);
    }
}
