package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbxo implements Callable {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbxq zzb;

    zzbxo(zzbxq zzbxqVar, Context context) {
        this.zza = context;
        Objects.requireNonNull(zzbxqVar);
        this.zzb = zzbxqVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzbxn zza;
        zzbxq zzbxqVar = this.zzb;
        WeakHashMap zzb = zzbxqVar.zzb();
        Context context = this.zza;
        zzbxp zzbxpVar = (zzbxp) zzb.get(context);
        if (zzbxpVar != null) {
            if (zzbxpVar.zza + ((Long) zzbgj.zzd.zze()).longValue() >= com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()) {
                zza = new zzbxm(context, zzbxpVar.zzb).zza();
                zzbxqVar.zzb().put(context, new zzbxp(zzbxqVar, zza));
                return zza;
            }
        }
        zza = new zzbxm(context).zza();
        zzbxqVar.zzb().put(context, new zzbxp(zzbxqVar, zza));
        return zza;
    }
}
