package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
final class zzgbc extends zzgbe {
    public zzgbc(InterfaceFutureC3942wq interfaceFutureC3942wq, zzgbo zzgboVar) {
        super(interfaceFutureC3942wq, zzgboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgbe
    public final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) {
        zzgbo zzgboVar = (zzgbo) obj;
        InterfaceFutureC3942wq zza = zzgboVar.zza(obj2);
        zzfun.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgboVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgbe
    public final /* synthetic */ void zzf(Object obj) {
        zzs((InterfaceFutureC3942wq) obj);
    }
}
