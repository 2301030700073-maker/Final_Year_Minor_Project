package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzekl extends zzekk {
    private final zzcjn zza;
    private final zzcxw zzb;
    private final zzdeo zzc;
    private final zzekv zzd;
    private final zzehp zze;

    zzekl(zzcjn zzcjnVar, zzcxw zzcxwVar, zzdeo zzdeoVar, zzekv zzekvVar, zzehp zzehpVar) {
        this.zza = zzcjnVar;
        this.zzb = zzcxwVar;
        this.zzc = zzdeoVar;
        this.zzd = zzekvVar;
        this.zze = zzehpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekk
    protected final ListenableFuture zzc(zzfgn zzfgnVar, Bundle bundle, zzffu zzffuVar, zzfgf zzfgfVar) {
        zzcxw zzcxwVar = this.zzb;
        zzcxwVar.zzb(zzfgnVar);
        zzcxwVar.zzc(bundle);
        zzcxwVar.zzd(new zzcxp(zzfgfVar, zzffuVar, this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzee)).booleanValue()) {
            zzcxwVar.zzg(this.zze);
        }
        zzcqt zzk = this.zza.zzk();
        zzk.zzd(zzcxwVar.zze());
        zzk.zze(this.zzc);
        zzcus zza = zzk.zzh().zza();
        return zza.zzc(zza.zzb());
    }
}
