package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgee implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;
    private final zzifq zzc;
    private final zzifq zzd;

    private zzgee(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
        this.zzc = zzifqVar3;
        this.zzd = zzifqVar4;
    }

    public static zzgee zza(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4) {
        return new zzgee(zzifqVar, zzifqVar2, zzifqVar3, zzifqVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzifq zzifqVar = this.zzd;
        zzifq zzifqVar2 = this.zzc;
        zzifq zzifqVar3 = this.zzb;
        zzifb zzc = zzifg.zzc(this.zza);
        zzifb zzc2 = zzifg.zzc(zzifqVar3);
        zzifb zzc3 = zzifg.zzc(zzifqVar2);
        zzfxt zzfxtVar = (zzfxt) zzifqVar.zzb();
        return new zzged(zzc, zzc2, zzc3, zzfxtVar.zzi().zza(), zzfxtVar.zzi().zzd());
    }
}
