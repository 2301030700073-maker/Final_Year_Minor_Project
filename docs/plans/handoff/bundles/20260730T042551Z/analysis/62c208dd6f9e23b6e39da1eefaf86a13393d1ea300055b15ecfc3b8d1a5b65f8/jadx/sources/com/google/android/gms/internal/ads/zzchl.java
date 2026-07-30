package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzchl implements zzher {
    private final zzhfj zza;

    public zzchl(zzhfj zzhfjVar, zzhfj zzhfjVar2) {
        this.zza = zzhfjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbL)).booleanValue() ? Collections.singleton(new zzddk((zzduc) this.zza.zzb(), zzffh.zzc())) : Collections.emptySet();
        zzhez.zzb(singleton);
        return singleton;
    }
}
