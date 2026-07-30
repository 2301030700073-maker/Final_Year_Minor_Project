package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
final class zzgau extends zzgaw {
    public zzgau(InterfaceFutureC3942wq interfaceFutureC3942wq, Class cls, zzgbo zzgboVar) {
        super(interfaceFutureC3942wq, cls, zzgboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgaw
    public final /* bridge */ /* synthetic */ Object zze(Object obj, Throwable th) {
        zzgbo zzgboVar = (zzgbo) obj;
        InterfaceFutureC3942wq zza = zzgboVar.zza(th);
        zzfun.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgboVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgaw
    public final /* synthetic */ void zzf(Object obj) {
        zzs((InterfaceFutureC3942wq) obj);
    }
}
