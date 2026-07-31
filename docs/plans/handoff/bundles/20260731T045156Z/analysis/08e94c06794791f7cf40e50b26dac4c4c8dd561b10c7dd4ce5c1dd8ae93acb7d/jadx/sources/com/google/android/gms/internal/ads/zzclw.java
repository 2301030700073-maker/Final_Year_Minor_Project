package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzclw implements zzedb {
    final zzifq zza;
    final zzifq zzb;
    private final zzckz zzc;
    private final zzclw zzd = this;

    zzclw(zzckz zzckzVar, Context context) {
        this.zzc = zzckzVar;
        zzeej zzc = zzeej.zzc(zzckzVar.zzaw);
        this.zza = zzc;
        this.zzb = zzeeb.zza(zzckzVar.zzf, zzfjn.zza(), zzckt.zza, zzckzVar.zzav, zzc, zzckzVar.zzax, zzckq.zza, zzckzVar.zzC);
    }

    @Override // com.google.android.gms.internal.ads.zzedb
    public final zzedf zza() {
        zzckz zzckzVar = this.zzc;
        zzifq zzifqVar = zzckzVar.zzl;
        zzcjp zzI = zzckzVar.zzI();
        return zzedg.zza(zzcjv.zzd(zzckzVar.zzI()), zzfjt.zzc(), zzfjn.zzc(), zzifg.zzc(this.zzb), zzckk.zzd(zzI), this, (zzdvi) zzifqVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzedb
    public final zzedh zzb() {
        return new zzclx(this.zzc, this.zzd, null);
    }
}
