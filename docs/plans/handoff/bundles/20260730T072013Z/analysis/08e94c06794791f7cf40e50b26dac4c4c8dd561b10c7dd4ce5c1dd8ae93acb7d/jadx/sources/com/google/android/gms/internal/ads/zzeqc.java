package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeqc implements zzeya {
    private final zzgus zza;
    private final zzfgn zzb;
    private final int zzc;

    zzeqc(zzgus zzgusVar, zzfgn zzfgnVar, zzfhd zzfhdVar, int i) {
        this.zza = zzgusVar;
        this.zzb = zzfgnVar;
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzeqb
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzeqc.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 5;
    }

    final /* synthetic */ zzeqd zzc() {
        List asList;
        String str = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhB)).booleanValue()) {
            zzfgn zzfgnVar = this.zzb;
            if (this.zzc != 2) {
                String zzc = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfgnVar.zzd);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhD)).booleanValue()) {
                    asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhE)).split(","));
                } else {
                    asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhC)).split(","));
                }
                if (asList.contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(zzc))) {
                    str = zzfhd.zza();
                }
            }
        }
        return new zzeqd(str);
    }
}
