package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgtf extends zzgth {
    zzgtf(ListenableFuture listenableFuture, zzgtq zzgtqVar) {
        super(listenableFuture, zzgtqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgth
    final /* synthetic */ void zze(Object obj) {
        zzk((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgth
    final /* bridge */ /* synthetic */ Object zzf(Object obj, Object obj2) throws Exception {
        zzgtq zzgtqVar = (zzgtq) obj;
        ListenableFuture zza = zzgtqVar.zza(obj2);
        zzgmd.zzl(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgtqVar);
        return zza;
    }
}
