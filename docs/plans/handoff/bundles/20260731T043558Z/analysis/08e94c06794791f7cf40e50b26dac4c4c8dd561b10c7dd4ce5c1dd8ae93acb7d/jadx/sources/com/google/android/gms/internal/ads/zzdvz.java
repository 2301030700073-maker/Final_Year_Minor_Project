package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdvz implements zzifh {
    private final zzifq zza;

    private zzdvz(zzdvx zzdvxVar, zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
    }

    public static zzdvz zza(zzdvx zzdvxVar, zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzdvz(zzdvxVar, zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set zzb = zzdvx.zzb((zzdwh) this.zza.zzb(), zzfjn.zzc());
        zzifp.zzb(zzb);
        return zzb;
    }
}
