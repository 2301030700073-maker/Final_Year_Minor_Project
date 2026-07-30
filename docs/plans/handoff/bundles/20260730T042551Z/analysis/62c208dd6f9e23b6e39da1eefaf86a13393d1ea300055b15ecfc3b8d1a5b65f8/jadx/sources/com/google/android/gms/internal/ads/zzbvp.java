package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzbvp implements Callable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbvr zzb;

    public zzbvp(zzbvr zzbvrVar, Context context) {
        this.zza = context;
        this.zzb = zzbvrVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        WeakHashMap weakHashMap;
        zzbvo zza;
        WeakHashMap weakHashMap2;
        weakHashMap = this.zzb.zza;
        zzbvq zzbvqVar = (zzbvq) weakHashMap.get(this.zza);
        if (zzbvqVar != null) {
            if (zzbvqVar.zza + ((Long) zzbea.zzd.zze()).longValue() >= com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis()) {
                zza = new zzbvn(this.zza, zzbvqVar.zzb).zza();
                zzbvr zzbvrVar = this.zzb;
                Context context = this.zza;
                weakHashMap2 = zzbvrVar.zza;
                weakHashMap2.put(context, new zzbvq(zzbvrVar, zza));
                return zza;
            }
        }
        zza = new zzbvn(this.zza).zza();
        zzbvr zzbvrVar2 = this.zzb;
        Context context2 = this.zza;
        weakHashMap2 = zzbvrVar2.zza;
        weakHashMap2.put(context2, new zzbvq(zzbvrVar2, zza));
        return zza;
    }
}
