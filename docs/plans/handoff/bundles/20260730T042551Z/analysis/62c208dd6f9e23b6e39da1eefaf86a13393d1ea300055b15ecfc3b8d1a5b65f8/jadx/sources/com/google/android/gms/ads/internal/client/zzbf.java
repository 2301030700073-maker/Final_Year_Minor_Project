package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.FullScreenContentCallback;

/* loaded from: classes.dex */
public final class zzbf extends zzcs {

    /* renamed from: do, reason: not valid java name */
    public final FullScreenContentCallback f9596do;

    public zzbf(FullScreenContentCallback fullScreenContentCallback) {
        this.f9596do = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzb() {
        FullScreenContentCallback fullScreenContentCallback = this.f9596do;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzc() {
        FullScreenContentCallback fullScreenContentCallback = this.f9596do;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzd(zze zzeVar) {
        FullScreenContentCallback fullScreenContentCallback = this.f9596do;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzeVar.zza());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zze() {
        FullScreenContentCallback fullScreenContentCallback = this.f9596do;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzct
    public final void zzf() {
        FullScreenContentCallback fullScreenContentCallback = this.f9596do;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }
}
