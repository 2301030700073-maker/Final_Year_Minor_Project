package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzejy implements zzehq {
    private final Context zza;
    private final zzdjz zzb;
    private final Executor zzc;

    public zzejy(Context context, zzdjz zzdjzVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdjzVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfgf zzfgfVar, int i) {
        return zzfgfVar.zza.zza.zzh.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final void zza(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu {
        zzfhl zzfhlVar = (zzfhl) zzehnVar.zzb;
        zzfgn zzfgnVar = zzfgfVar.zza.zza;
        String jSONObject = zzffuVar.zzv.toString();
        String zzm = com.google.android.gms.ads.internal.util.zzbp.zzm(zzffuVar.zzs);
        zzfhlVar.zzo(this.zza, zzfgnVar.zzd, jSONObject, zzm, (zzbrp) zzehnVar.zzc, zzfgnVar.zzj, zzfgnVar.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final /* bridge */ /* synthetic */ Object zzb(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu, zzekz {
        zzdlq zzag;
        zzfhl zzfhlVar = (zzfhl) zzehnVar.zzb;
        zzbru zzD = zzfhlVar.zzD();
        zzbrv zzE = zzfhlVar.zzE();
        zzbry zzu = zzfhlVar.zzu();
        if (zzu != null && zzc(zzfgfVar, 6)) {
            zzag = zzdlq.zzaf(zzu);
        } else if (zzD != null && zzc(zzfgfVar, 6)) {
            zzag = zzdlq.zzai(zzD);
        } else if (zzD != null && zzc(zzfgfVar, 2)) {
            zzag = zzdlq.zzah(zzD);
        } else if (zzE != null && zzc(zzfgfVar, 6)) {
            zzag = zzdlq.zzaj(zzE);
        } else {
            if (zzE == null || !zzc(zzfgfVar, 1)) {
                throw new zzekz(1, "No native ad mappers");
            }
            zzag = zzdlq.zzag(zzE);
        }
        if (zzag != null) {
            zzfgn zzfgnVar = zzfgfVar.zza.zza;
            if (zzfgnVar.zzh.contains(Integer.toString(zzag.zzx()))) {
                zzdls zze = this.zzb.zze(new zzcue(zzfgfVar, zzffuVar, zzehnVar.zza), new zzdmb(zzag), new zzdnu(zzE, zzD, zzu));
                ((zzeiz) zzehnVar.zzc).zzc(zze.zzf());
                zze.zza().zzq(new zzcou(zzfhlVar), this.zzc);
                return zze.zzh();
            }
        }
        throw new zzekz(1, "No corresponding native ad listener");
    }
}
