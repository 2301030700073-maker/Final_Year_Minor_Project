package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzdgn;
import com.google.android.gms.internal.ads.zzdhh;
import com.google.android.gms.internal.ads.zzfjn;
import com.google.android.gms.internal.ads.zzgus;
import com.google.android.gms.internal.ads.zzifh;
import com.google.android.gms.internal.ads.zzifq;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbe implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;
    private final zzifq zzc;

    private zzbe(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
        this.zzc = zzifqVar4;
    }

    public static zzbe zza(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3, zzifq zzifqVar4) {
        return new zzbe(zzifqVar, zzifqVar2, zzifqVar3, zzifqVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdhh zzdhhVar = (zzw) this.zza.zzb();
        zzdhh zzdhhVar2 = (zzbl) this.zzb.zzb();
        zzgus zzc = zzfjn.zzc();
        if (((Integer) this.zzc.zzb()).intValue() == 2) {
            zzdhhVar = zzdhhVar2;
        }
        return new zzdgn(zzdhhVar, zzc);
    }
}
