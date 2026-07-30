package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzezh implements zzher {
    private final zzhfj zza;
    private final zzhfj zzb;
    private final zzhfj zzc;

    public zzezh(zzhfj zzhfjVar, zzhfj zzhfjVar2, zzhfj zzhfjVar3) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
        this.zzc = zzhfjVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzezf zzb() {
        Context context = (Context) this.zza.zzb();
        zzfds zzfdsVar = (zzfds) this.zzb.zzb();
        zzfek zzfekVar = (zzfek) this.zzc.zzb();
        zzbzg zzg = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgg)).booleanValue() ? com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg() : com.google.android.gms.ads.internal.zzv.zzp().zzi().zzh();
        boolean z = false;
        if (zzg != null && zzg.zzh()) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgw)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgf)).booleanValue() || z) {
                zzfej zza = zzfekVar.zza(zzfea.AppOpen, context, zzfdsVar, new zzeyj(new zzeyg()));
                zzeyv zzeyvVar = new zzeyv(new zzeyu());
                zzfdw zzfdwVar = zza.zza;
                zzgcs zzgcsVar = zzbzw.zza;
                return new zzeyl(zzeyvVar, new zzeyr(zzfdwVar, zzgcsVar), zza.zzb, zza.zza.zza().zzf, zzgcsVar);
            }
        }
        return new zzeyu();
    }
}
