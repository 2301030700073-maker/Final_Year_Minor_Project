package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;

/* loaded from: classes.dex */
public final class zzfs extends zzdq {

    /* renamed from: do, reason: not valid java name */
    public final OnPaidEventListener f9671do;

    public zzfs(OnPaidEventListener onPaidEventListener) {
        this.f9671do = onPaidEventListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdr
    public final void zze(zzu zzuVar) {
        OnPaidEventListener onPaidEventListener = this.f9671do;
        if (onPaidEventListener != null) {
            onPaidEventListener.onPaidEvent(AdValue.zza(zzuVar.zzb, zzuVar.zzc, zzuVar.zzd));
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdr
    public final boolean zzf() {
        return this.f9671do == null;
    }
}
