package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdwg implements zzifh {
    private final zzifq zza;

    private zzdwg(zzdvx zzdvxVar, zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
    }

    public static zzdwg zza(zzdvx zzdvxVar, zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzdwg(zzdvxVar, zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set zzi = zzdvx.zzi((zzdwh) this.zza.zzb(), zzfjn.zzc());
        zzifp.zzb(zzi);
        return zzi;
    }
}
