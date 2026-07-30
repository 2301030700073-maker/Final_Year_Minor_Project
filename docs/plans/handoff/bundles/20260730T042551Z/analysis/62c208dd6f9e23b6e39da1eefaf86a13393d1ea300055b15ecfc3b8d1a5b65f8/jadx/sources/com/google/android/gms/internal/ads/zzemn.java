package com.google.android.gms.internal.ads;

import android.os.Bundle;
import defpackage.InterfaceFutureC3942wq;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzemn implements zzetr {
    private final zzgcs zza;
    private final zzdpm zzb;
    private final zzdua zzc;
    private final zzemp zzd;

    public zzemn(zzgcs zzgcsVar, zzdpm zzdpmVar, zzdua zzduaVar, zzemp zzempVar) {
        this.zza = zzgcsVar;
        this.zzb = zzdpmVar;
        this.zzc = zzduaVar;
        this.zzd = zzempVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        zzbcc zzbccVar = zzbcl.zzlx;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue() && this.zzd.zza() != null) {
            zzemo zza = this.zzd.zza();
            zza.getClass();
            return zzgch.zzh(zza);
        }
        if (zzfve.zzd((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbz)) || (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue() && (this.zzd.zzd() || !this.zzc.zzt()))) {
            return zzgch.zzh(new zzemo(new Bundle()));
        }
        this.zzd.zzc(true);
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzemm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzemn.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzemo zzc() {
        List<String> asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbz)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                zzfdh zzc = this.zzb.zzc(str, new JSONObject());
                zzc.zzC();
                boolean zzt = this.zzc.zzt();
                Bundle bundle2 = new Bundle();
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlx)).booleanValue() || zzt) {
                    try {
                        zzbrs zzf = zzc.zzf();
                        if (zzf != null) {
                            bundle2.putString("sdk_version", zzf.toString());
                        }
                    } catch (zzfcq unused) {
                    }
                }
                try {
                    zzbrs zze = zzc.zze();
                    if (zze != null) {
                        bundle2.putString("adapter_version", zze.toString());
                    }
                } catch (zzfcq unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfcq unused3) {
            }
        }
        zzemo zzemoVar = new zzemo(bundle);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlx)).booleanValue()) {
            this.zzd.zzb(zzemoVar);
        }
        return zzemoVar;
    }
}
