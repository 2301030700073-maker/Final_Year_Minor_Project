package com.google.android.gms.internal.ads;

import com.braze.models.Banner;
import java.util.Collections;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdka implements zzifh {
    private final zzifq zza;

    private zzdka(zzifq zzifqVar) {
        this.zza = zzifqVar;
    }

    public static zzdka zza(zzifq zzifqVar) {
        return new zzdka(zzifqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((zzdjx) this.zza).zza().zzd() != null ? Collections.singleton(Banner.BANNER_KEY) : Collections.emptySet();
        zzifp.zzb(singleton);
        return singleton;
    }
}
