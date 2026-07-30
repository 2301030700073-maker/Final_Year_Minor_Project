package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import defpackage.InterfaceFutureC3942wq;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzdwg {
    private final zzgcs zza;
    private final zzgcs zzb;
    private final zzdxo zzc;
    private final zzhel zzd;

    public zzdwg(zzgcs zzgcsVar, zzgcs zzgcsVar2, zzdxo zzdxoVar, zzhel zzhelVar) {
        this.zza = zzgcsVar;
        this.zzb = zzgcsVar2;
        this.zzc = zzdxoVar;
        this.zzd = zzhelVar;
    }

    public final /* synthetic */ zzdyi zza(zzbvk zzbvkVar) {
        return (zzdyi) this.zzc.zza(zzbvkVar).get(((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfy)).intValue(), TimeUnit.SECONDS);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzb(final zzbvk zzbvkVar, int i, zzdyh zzdyhVar) {
        Bundle bundle;
        if (zzbvkVar != null && (bundle = zzbvkVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return zzgch.zzn(((zzdzl) this.zzd.zzb()).zzc(zzbvkVar, i), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdwc
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzgch.zzh(new zzdyi((InputStream) obj, zzbvk.this));
            }
        }, this.zzb);
    }

    public final InterfaceFutureC3942wq zzc(final zzbvk zzbvkVar) {
        String str = zzbvkVar.zzd;
        com.google.android.gms.ads.internal.zzv.zzq();
        InterfaceFutureC3942wq zzg = com.google.android.gms.ads.internal.util.zzs.zzD(str) ? zzgch.zzg(new zzdyh(1)) : zzgch.zzf(this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdwd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdwg.this.zza(zzbvkVar);
            }
        }), ExecutionException.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdwe
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                Throwable th = (ExecutionException) obj;
                if (th.getCause() != null) {
                    th = th.getCause();
                }
                return zzgch.zzg(th);
            }
        }, this.zzb);
        final int callingUid = Binder.getCallingUid();
        return zzgch.zzf(zzg, zzdyh.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzdwf
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzdwg.this.zzb(zzbvkVar, callingUid, (zzdyh) obj);
            }
        }, this.zzb);
    }
}
