package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzcsd {
    private final zzdxl zza;
    private final zzfcj zzb;
    private final zzfgn zzc;
    private final zzcky zzd;
    private final zzegx zze;
    private final zzdba zzf;
    private zzfca zzg;
    private final zzdyt zzh;
    private final zzcuw zzi;
    private final Executor zzj;
    private final zzdye zzk;
    private final zzedb zzl;

    public zzcsd(zzdxl zzdxlVar, zzfcj zzfcjVar, zzfgn zzfgnVar, zzcky zzckyVar, zzegx zzegxVar, zzdba zzdbaVar, zzfca zzfcaVar, zzdyt zzdytVar, zzcuw zzcuwVar, Executor executor, zzdye zzdyeVar, zzedb zzedbVar) {
        this.zza = zzdxlVar;
        this.zzb = zzfcjVar;
        this.zzc = zzfgnVar;
        this.zzd = zzckyVar;
        this.zze = zzegxVar;
        this.zzf = zzdbaVar;
        this.zzg = zzfcaVar;
        this.zzh = zzdytVar;
        this.zzi = zzcuwVar;
        this.zzj = executor;
        this.zzk = zzdyeVar;
        this.zzl = zzedbVar;
    }

    public final com.google.android.gms.ads.internal.client.zze zza(Throwable th) {
        return zzfdk.zzb(th, this.zzl);
    }

    public final zzdba zzc() {
        return this.zzf;
    }

    public final /* synthetic */ zzfca zzd(zzfca zzfcaVar) {
        this.zzd.zza(zzfcaVar);
        return zzfcaVar;
    }

    public final InterfaceFutureC3942wq zze(final zzfed zzfedVar) {
        zzfft zza = this.zzc.zzb(zzfgh.GET_CACHE_KEY, this.zzi.zzc()).zzf(new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcrz
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzcsd.this.zzf(zzfedVar, (zzbvk) obj);
            }
        }).zza();
        zzgch.zzr(zza, new zzcsb(this), this.zzj);
        return zza;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzf(zzfed zzfedVar, zzbvk zzbvkVar) {
        zzbvkVar.zzi = zzfedVar;
        return this.zzh.zza(zzbvkVar);
    }

    public final InterfaceFutureC3942wq zzg(zzbvk zzbvkVar) {
        zzfft zza = this.zzc.zzb(zzfgh.NOTIFY_CACHE_HIT, this.zzh.zzf(zzbvkVar)).zza();
        zzgch.zzr(zza, new zzcsc(this), this.zzj);
        return zza;
    }

    public final InterfaceFutureC3942wq zzh(InterfaceFutureC3942wq interfaceFutureC3942wq) {
        zzfgd zzf = this.zzc.zzb(zzfgh.RENDERER, interfaceFutureC3942wq).zze(new zzffr() { // from class: com.google.android.gms.internal.ads.zzcry
            @Override // com.google.android.gms.internal.ads.zzffr
            public final Object zza(Object obj) {
                zzfca zzfcaVar = (zzfca) obj;
                zzcsd.this.zzd(zzfcaVar);
                return zzfcaVar;
            }
        }).zzf(this.zze);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfx)).booleanValue()) {
            zzf = zzf.zzi(((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfy)).intValue(), TimeUnit.SECONDS);
        }
        return zzf.zza();
    }

    public final InterfaceFutureC3942wq zzi() {
        com.google.android.gms.ads.internal.client.zzm zzmVar = this.zzb.zzd;
        if (zzmVar.zzx == null && zzmVar.zzs == null) {
            return zzj(this.zzi.zzc());
        }
        zzfgn zzfgnVar = this.zzc;
        zzdxl zzdxlVar = this.zza;
        return zzffx.zzc(zzdxlVar.zza(), zzfgh.PRELOADED_LOADER, zzfgnVar).zza();
    }

    public final InterfaceFutureC3942wq zzj(InterfaceFutureC3942wq interfaceFutureC3942wq) {
        zzfca zzfcaVar = this.zzg;
        if (zzfcaVar != null) {
            zzfgn zzfgnVar = this.zzc;
            return zzffx.zzc(zzgch.zzh(zzfcaVar), zzfgh.SERVER_TRANSACTION, zzfgnVar).zza();
        }
        com.google.android.gms.ads.internal.zzv.zzc().zzj();
        zzfgd zzb = this.zzc.zzb(zzfgh.SERVER_TRANSACTION, interfaceFutureC3942wq);
        final zzdye zzdyeVar = this.zzk;
        Objects.requireNonNull(zzdyeVar);
        return zzb.zzf(new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcsa
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdye.this.zzb((zzbvk) obj);
            }
        }).zza();
    }

    public final void zzk(zzfca zzfcaVar) {
        this.zzg = zzfcaVar;
    }
}
