package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdul implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;

    private zzdul(zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
    }

    public static zzdul zzc(zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzdul(zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzduk zzb() {
        return new zzduk((zzbdt) this.zza.zzb(), ((zzifl) this.zzb).zzb());
    }
}
