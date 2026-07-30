package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgvf extends zzgup {
    final /* synthetic */ zzgvh zza;
    private final zzgtp zzb;

    zzgvf(zzgvh zzgvhVar, zzgtp zzgtpVar) {
        Objects.requireNonNull(zzgvhVar);
        this.zza = zzgvhVar;
        this.zzb = zzgtpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgup
    final /* bridge */ /* synthetic */ Object zza() throws Exception {
        zzgtp zzgtpVar = this.zzb;
        ListenableFuture zza = zzgtpVar.zza();
        zzgmd.zzl(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgtpVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgup
    final String zzc() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgup
    final boolean zzd() {
        return this.zza.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzgup
    final /* synthetic */ void zzf(Object obj) {
        this.zza.zzk((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgup
    final void zzg(Throwable th) {
        this.zza.zzb(th);
    }
}
