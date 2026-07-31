package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzehz implements zzehq {
    private final Context zza;
    private final zzcqu zzb;
    private final Executor zzc;

    zzehz(Context context, zzcqu zzcquVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcquVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final void zza(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu {
        zzfhl zzfhlVar = (zzfhl) zzehnVar.zzb;
        zzfgn zzfgnVar = zzfgfVar.zza.zza;
        String jSONObject = zzffuVar.zzv.toString();
        zzfhlVar.zzy(this.zza, zzfgnVar.zzd, jSONObject, (zzbrp) zzehnVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final /* bridge */ /* synthetic */ Object zzb(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu, zzekz {
        zzcqr zzf = this.zzb.zzf(new zzcue(zzfgfVar, zzffuVar, zzehnVar.zza), new zzdia(new zzehy(this, zzehnVar, zzffuVar), null), new zzcqs(zzffuVar.zzaa));
        zzf.zza().zzq(new zzcou((zzfhl) zzehnVar.zzb), this.zzc);
        ((zzeiz) zzehnVar.zzc).zzc(zzf.zzf());
        return zzf.zzh();
    }
}
