package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbbq;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdqv implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzdqv(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3, zzhfj zzhfjVar4) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set emptySet;
        final String zza = ((zzewd) this.zza).zza();
        Context zza2 = ((zzche) this.zzb).zza();
        zzgcs zzc = zzffh.zzc();
        Map zzb = ((zzhev) this.zzc).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeW)).booleanValue()) {
            zzbbj zzbbjVar = new zzbbj(new zzbbp(zza2));
            zzbbjVar.zzb(new zzbbi() { // from class: com.google.android.gms.internal.ads.zzdqw
                @Override // com.google.android.gms.internal.ads.zzbbi
                public final void zza(zzbbq.zzt.zza zzaVar) {
                    zzaVar.zzO(zza);
                }
            });
            emptySet = Collections.singleton(new zzddk(new zzdqy(zzbbjVar, zzb), zzc));
        } else {
            emptySet = Collections.emptySet();
        }
        zzhez.zzb(emptySet);
        return emptySet;
    }
}
