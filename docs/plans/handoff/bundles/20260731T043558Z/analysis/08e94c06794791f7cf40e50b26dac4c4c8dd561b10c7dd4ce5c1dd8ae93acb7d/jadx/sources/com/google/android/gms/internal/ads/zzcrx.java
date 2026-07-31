package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcrx implements zzifh {
    private final zzcrn zza;
    private final zzifq zzb;

    private zzcrx(zzcrn zzcrnVar, zzifq zzifqVar) {
        this.zza = zzcrnVar;
        this.zzb = zzifqVar;
    }

    public static zzcrx zza(zzcrn zzcrnVar, zzifq zzifqVar) {
        return new zzcrx(zzcrnVar, zzifqVar);
    }

    public static Set zzc(zzcrn zzcrnVar, zzctd zzctdVar) {
        Set singleton = Collections.singleton(new zzdgn(zzctdVar, zzcbv.zzg));
        zzifp.zzb(singleton);
        return singleton;
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return zzc(this.zza, (zzctd) this.zzb.zzb());
    }
}
