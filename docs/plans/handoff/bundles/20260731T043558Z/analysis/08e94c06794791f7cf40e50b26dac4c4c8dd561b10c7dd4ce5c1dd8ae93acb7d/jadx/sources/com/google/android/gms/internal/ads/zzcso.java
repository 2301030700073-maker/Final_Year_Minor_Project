package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcso implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;

    private zzcso(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3) {
        this.zza = zzifqVar2;
        this.zzb = zzifqVar3;
    }

    public static zzcso zza(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3) {
        return new zzcso(zzifqVar, zzifqVar2, zzifqVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* synthetic */ Object zzb() {
        boolean booleanValue = Boolean.valueOf(zzcsm.zza()).booleanValue();
        zzehk zzb = ((zzeko) this.zza).zzb();
        zzehk zzb2 = ((zzemn) this.zzb).zzb();
        if (true != booleanValue) {
            zzb = zzb2;
        }
        return zzb;
    }
}
