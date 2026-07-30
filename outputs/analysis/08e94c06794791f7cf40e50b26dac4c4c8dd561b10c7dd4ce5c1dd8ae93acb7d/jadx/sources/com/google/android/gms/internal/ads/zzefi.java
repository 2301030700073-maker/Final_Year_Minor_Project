package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzefi implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;

    private zzefi(zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
    }

    public static zzefi zzc(zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzefi(zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzefh zzb() {
        return new zzefh((zzeev) this.zza.zzb(), ((zzefa) this.zzb).zzb());
    }
}
