package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzekn extends zzekk {
    private final zzcjn zza;
    private final zzcxw zzb;
    private final zzena zzc;
    private final zzdeo zzd;
    private final zzdju zze;
    private final zzdbp zzf;
    private final ViewGroup zzg;
    private final zzddu zzh;
    private final zzekv zzi;
    private final zzehp zzj;

    public zzekn(zzcjn zzcjnVar, zzcxw zzcxwVar, zzena zzenaVar, zzdeo zzdeoVar, zzdju zzdjuVar, zzdbp zzdbpVar, ViewGroup viewGroup, zzddu zzdduVar, zzekv zzekvVar, zzehp zzehpVar) {
        this.zza = zzcjnVar;
        this.zzb = zzcxwVar;
        this.zzc = zzenaVar;
        this.zzd = zzdeoVar;
        this.zze = zzdjuVar;
        this.zzf = zzdbpVar;
        this.zzg = viewGroup;
        this.zzh = zzdduVar;
        this.zzi = zzekvVar;
        this.zzj = zzehpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekk
    protected final ListenableFuture zzc(zzfgn zzfgnVar, Bundle bundle, zzffu zzffuVar, zzfgf zzfgfVar) {
        zzcxw zzcxwVar = this.zzb;
        zzcxwVar.zzb(zzfgnVar);
        zzcxwVar.zzc(bundle);
        zzcxwVar.zzd(new zzcxp(zzfgfVar, zzffuVar, this.zzi));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzee)).booleanValue()) {
            zzcxwVar.zzg(this.zzj);
        }
        zzcsk zzi = this.zza.zzi();
        zzi.zzl(zzcxwVar.zze());
        zzi.zzm(this.zzd);
        zzi.zzk(this.zzc);
        zzi.zzd(this.zze);
        zzi.zzg(new zzctg(this.zzf, this.zzh));
        zzi.zze(new zzcrd(this.zzg));
        zzcus zzc = zzi.zzh().zzc();
        return zzc.zzc(zzc.zzb());
    }
}
