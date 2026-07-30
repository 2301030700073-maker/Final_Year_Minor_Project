package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzao;

/* loaded from: classes3.dex */
final class zzv implements Runnable {
    final /* synthetic */ zzao zza;
    final /* synthetic */ zzaa zzb;

    public zzv(zzaa zzaaVar, zzao zzaoVar) {
        this.zzb = zzaaVar;
        this.zza = zzaoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onCapabilityChanged(this.zza);
    }
}
