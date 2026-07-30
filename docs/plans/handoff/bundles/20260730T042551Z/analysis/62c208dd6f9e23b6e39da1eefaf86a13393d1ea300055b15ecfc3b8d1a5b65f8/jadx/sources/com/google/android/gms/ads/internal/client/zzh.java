package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdLoadCallback;

/* loaded from: classes.dex */
public final class zzh extends zzbn {

    /* renamed from: do, reason: not valid java name */
    public final AdLoadCallback f9674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9675do;

    public zzh(AdLoadCallback adLoadCallback, Object obj) {
        this.f9674do = adLoadCallback;
        this.f9675do = obj;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbo
    public final void zzb(zze zzeVar) {
        AdLoadCallback adLoadCallback = this.f9674do;
        if (adLoadCallback != null) {
            adLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbo
    public final void zzc() {
        Object obj;
        AdLoadCallback adLoadCallback = this.f9674do;
        if (adLoadCallback == null || (obj = this.f9675do) == null) {
            return;
        }
        adLoadCallback.onAdLoaded(obj);
    }
}
