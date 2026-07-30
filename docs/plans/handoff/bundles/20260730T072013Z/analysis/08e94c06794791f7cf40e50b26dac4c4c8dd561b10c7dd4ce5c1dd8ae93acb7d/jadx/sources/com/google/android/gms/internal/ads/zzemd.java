package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzemd implements zzehq {
    private final Context zza;
    private final Executor zzb;
    private final zzdrn zzc;

    public zzemd(Context context, Executor executor, zzdrn zzdrnVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdrnVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zze(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) {
        try {
            ((zzfhl) zzehnVar.zzb).zzl(zzfgfVar.zza.zza.zzd, zzffuVar.zzv.toString());
        } catch (Exception e) {
            String str = zzehnVar.zza;
            String.valueOf(str);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to load ad from adapter ".concat(String.valueOf(str)), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final void zza(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu {
        zzfhl zzfhlVar = (zzfhl) zzehnVar.zzb;
        if (zzfhlVar.zzn()) {
            zze(zzfgfVar, zzffuVar, zzehnVar);
            return;
        }
        zzema zzemaVar = new zzema(this, zzfgfVar, zzffuVar, zzehnVar);
        zzczy zzczyVar = zzehnVar.zzc;
        ((zzeja) zzczyVar).zzd(zzemaVar);
        Context context = this.zza;
        zzfgn zzfgnVar = zzfgfVar.zza.zza;
        String jSONObject = zzffuVar.zzv.toString();
        zzfhlVar.zzk(context, zzfgnVar.zzd, null, (zzbyg) zzczyVar, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final /* bridge */ /* synthetic */ Object zzb(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu, zzekz {
        zzdrj zzf = this.zzc.zzf(new zzcue(zzfgfVar, zzffuVar, zzehnVar.zza), new zzdrk(new zzemb(this, zzehnVar, zzffuVar)));
        zzf.zza().zzq(new zzcou((zzfhl) zzehnVar.zzb), this.zzb);
        zzczv zzb = zzf.zzb();
        zzcym zzc = zzf.zzc();
        ((zzeja) zzehnVar.zzc).zzc(new zzemc(this, zzf.zzi(), zzc, zzb, zzf.zzk()));
        return zzf.zzh();
    }

    final /* synthetic */ Executor zzc() {
        return this.zzb;
    }
}
