package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfng {
    private final Context zza;
    private final Executor zzb;
    private final zzgut zzc;
    private final com.google.android.gms.ads.internal.util.client.zzu zzd;
    private final zzfmy zze;
    private final zzflp zzf;
    private final zzcjk zzg;

    zzfng(Context context, Executor executor, zzgut zzgutVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzfmy zzfmyVar, zzflp zzflpVar, zzcjk zzcjkVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzgutVar;
        this.zzd = zzuVar;
        this.zze = zzfmyVar;
        this.zzf = zzflpVar;
        this.zzg = zzcjkVar;
    }

    public final void zza(List list, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), zzvVar, null, null);
        }
    }

    public final void zzb(final String str, com.google.android.gms.ads.internal.util.client.zzv zzvVar, zzflm zzflmVar, zzdbd zzdbdVar) {
        ListenableFuture zzc;
        zzflc zzflcVar = null;
        if (zzflp.zza() && ((Boolean) zzbgn.zzd.zze()).booleanValue()) {
            zzflcVar = zzflc.zzn(this.zza, 14);
            zzflcVar.zza();
        }
        if (zzvVar != null) {
            zzc = new zzfmx(zzvVar.zza(), this.zzd, this.zzc, this.zze, this.zzg).zza(str);
        } else {
            zzc = this.zzc.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzfnf
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return zzfng.this.zzc(str);
                }
            });
        }
        zzgui.zzr(zzc, new zzfne(this, zzflcVar, zzflmVar, zzdbdVar), this.zzb);
    }

    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzt zzc(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjN)).booleanValue() || (!com.google.android.gms.ads.internal.zzt.zzc().zzi(str) && !com.google.android.gms.ads.internal.zzt.zzc().zzj(str))) {
            return this.zzd.zzc(str, null);
        }
        String zzb = this.zzg.zzb();
        HashMap hashMap = new HashMap();
        if (zzb != null) {
            hashMap.put((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjO), zzb);
        }
        return this.zzd.zzc(str, hashMap);
    }

    final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzu zzd() {
        return this.zzd;
    }

    final /* synthetic */ zzflp zze() {
        return this.zzf;
    }
}
