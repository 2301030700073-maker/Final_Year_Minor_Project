package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdio implements zzifh {
    private final zzdia zza;
    private final zzifq zzb;

    private zzdio(zzdia zzdiaVar, zzifq zzifqVar) {
        this.zza = zzdiaVar;
        this.zzb = zzifqVar;
    }

    public static zzdio zza(zzdia zzdiaVar, zzifq zzifqVar) {
        return new zzdio(zzdiaVar, zzifqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set zze = this.zza.zze((zzcxf) this.zzb.zzb());
        zzifp.zzb(zze);
        return zze;
    }
}
