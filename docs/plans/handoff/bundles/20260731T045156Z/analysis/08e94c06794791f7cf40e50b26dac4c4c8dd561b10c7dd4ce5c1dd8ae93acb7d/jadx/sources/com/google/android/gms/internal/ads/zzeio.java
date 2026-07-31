package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeio implements zzehq {
    private final Context zza;
    private final zzcsl zzb;
    private final Executor zzc;

    public zzeio(Context context, zzcsl zzcslVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcslVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzehq
    public final void zza(zzfgf zzfgfVar, zzffu zzffuVar, zzehn zzehnVar) throws zzfgu {
        com.google.android.gms.ads.internal.client.zzr zzrVar;
        zzfgn zzfgnVar = zzfgfVar.zza.zza;
        com.google.android.gms.ads.internal.client.zzr zzrVar2 = zzfgnVar.zzf;
        if (zzrVar2.zzn) {
            zzrVar = new com.google.android.gms.ads.internal.client.zzr(this.zza, com.google.android.gms.ads.zzc.zzb(zzrVar2.zze, zzrVar2.zzb));
        } else {
            zzrVar = (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziI)).booleanValue() && zzffuVar.zzag) ? new com.google.android.gms.ads.internal.client.zzr(this.zza, com.google.android.gms.ads.zzc.zzc(zzrVar2.zze, zzrVar2.zzb)) : zzfgt.zza(this.zza, zzffuVar.zzu);
        }
        com.google.android.gms.ads.internal.client.zzr zzrVar3 = zzrVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziI)).booleanValue() && zzffuVar.zzag) {
            ((zzfhl) zzehnVar.zzb).zzb(this.zza, zzrVar3, zzfgnVar.zzd, zzffuVar.zzv.toString(), com.google.android.gms.ads.internal.util.zzbp.zzm(zzffuVar.zzs), (zzbrp) zzehnVar.zzc);
        } else {
            ((zzfhl) zzehnVar.zzb).zzg(this.zza, zzrVar3, zzfgnVar.zzd, zzffuVar.zzv.toString(), com.google.android.gms.ads.internal.util.zzbp.zzm(zzffuVar.zzs), (zzbrp) zzehnVar.zzc);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzehq
    public final /* bridge */ /* synthetic */ Object zzb(zzfgf zzfgfVar, final zzffu zzffuVar, zzehn zzehnVar) throws zzfgu, zzekz {
        final View zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zziI)).booleanValue() && zzffuVar.zzag) {
            zzbrs zzc = ((zzfhl) zzehnVar.zzb).zzc();
            if (zzc == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                throw new zzfgu(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
            }
            try {
                zza = (View) ObjectWrapper.unwrap(zzc.zze());
                boolean zzf = zzc.zzf();
                if (zza == null) {
                    throw new zzfgu(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                }
                if (zzf) {
                    try {
                        zza = (View) zzgui.zzj(zzgui.zza(null), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzeim
                            @Override // com.google.android.gms.internal.ads.zzgtq
                            public final /* synthetic */ ListenableFuture zza(Object obj) {
                                return zzeio.this.zzc(zza, zzffuVar, obj);
                            }
                        }, zzcbv.zzf).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzfgu(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzfgu(e2);
            }
        } else {
            zza = ((zzfhl) zzehnVar.zzb).zza();
        }
        zzcsl zzcslVar = this.zzb;
        zzcue zzcueVar = new zzcue(zzfgfVar, zzffuVar, zzehnVar.zza);
        final zzfhl zzfhlVar = (zzfhl) zzehnVar.zzb;
        Objects.requireNonNull(zzfhlVar);
        zzcrh zzf2 = zzcslVar.zzf(zzcueVar, new zzcrn(zza, null, new zzctm() { // from class: com.google.android.gms.internal.ads.zzein
            @Override // com.google.android.gms.internal.ads.zzctm
            public final /* synthetic */ com.google.android.gms.ads.internal.client.zzed zza() {
                return zzfhl.this.zzt();
            }
        }, (zzffv) zzffuVar.zzu.get(0)));
        zzf2.zzk().zza(zza);
        zzf2.zza().zzq(new zzcou(zzfhlVar), this.zzc);
        ((zzeiz) zzehnVar.zzc).zzc(zzf2.zzf());
        return zzf2.zzi();
    }

    final /* synthetic */ ListenableFuture zzc(View view, zzffu zzffuVar, Object obj) {
        return zzgui.zza(zzcta.zza(this.zza, view, zzffuVar));
    }
}
