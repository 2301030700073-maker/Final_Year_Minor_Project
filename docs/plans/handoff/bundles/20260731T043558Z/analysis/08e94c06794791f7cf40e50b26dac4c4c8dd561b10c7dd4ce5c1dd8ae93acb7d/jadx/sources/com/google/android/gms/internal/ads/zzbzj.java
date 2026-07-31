package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbzj implements zzguf {
    final /* synthetic */ ListenableFuture zza;

    zzbzj(zzbzo zzbzoVar, ListenableFuture listenableFuture) {
        this.zza = listenableFuture;
        Objects.requireNonNull(zzbzoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        List list;
        list = zzbzo.zzc;
        list.remove(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List list;
        list = zzbzo.zzc;
        list.remove(this.zza);
    }
}
