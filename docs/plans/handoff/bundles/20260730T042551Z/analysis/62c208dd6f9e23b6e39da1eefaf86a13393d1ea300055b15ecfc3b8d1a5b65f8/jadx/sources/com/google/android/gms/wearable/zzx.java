package com.google.android.gms.wearable;

/* loaded from: classes3.dex */
final class zzx implements Runnable {
    final /* synthetic */ com.google.android.gms.wearable.internal.zzi zza;
    final /* synthetic */ zzaa zzb;

    public zzx(zzaa zzaaVar, com.google.android.gms.wearable.internal.zzi zziVar) {
        this.zzb = zzaaVar;
        this.zza = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onEntityUpdate(this.zza);
    }
}
