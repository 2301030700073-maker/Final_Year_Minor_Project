package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
final class zzgdg extends zzgcp {
    final /* synthetic */ zzgdi zza;
    private final zzgbn zzb;

    public zzgdg(zzgdi zzgdiVar, zzgbn zzgbnVar) {
        this.zza = zzgdiVar;
        this.zzb = zzgbnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcp
    public final /* bridge */ /* synthetic */ Object zza() {
        zzgbn zzgbnVar = this.zzb;
        InterfaceFutureC3942wq zza = zzgbnVar.zza();
        zzfun.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgbnVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgcp
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgcp
    public final void zzd(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgcp
    public final /* synthetic */ void zze(Object obj) {
        this.zza.zzs((InterfaceFutureC3942wq) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgcp
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
