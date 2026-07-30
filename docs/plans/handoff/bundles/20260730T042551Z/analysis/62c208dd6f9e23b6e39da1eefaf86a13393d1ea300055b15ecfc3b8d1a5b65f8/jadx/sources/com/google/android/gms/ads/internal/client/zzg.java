package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdListener;

/* loaded from: classes.dex */
public final class zzg extends zzbk {

    /* renamed from: do, reason: not valid java name */
    public final AdListener f9673do;

    public zzg(AdListener adListener) {
        this.f9673do = adListener;
    }

    public final AdListener zzb() {
        return this.f9673do;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzc() {
        AdListener adListener = this.f9673do;
        if (adListener != null) {
            adListener.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzd() {
        AdListener adListener = this.f9673do;
        if (adListener != null) {
            adListener.onAdClosed();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzf(zze zzeVar) {
        AdListener adListener = this.f9673do;
        if (adListener != null) {
            adListener.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzg() {
        AdListener adListener = this.f9673do;
        if (adListener != null) {
            adListener.onAdImpression();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzh() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzi() {
        AdListener adListener = this.f9673do;
        if (adListener != null) {
            adListener.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzj() {
        AdListener adListener = this.f9673do;
        if (adListener != null) {
            adListener.onAdOpened();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbl
    public final void zzk() {
        AdListener adListener = this.f9673do;
        if (adListener != null) {
            adListener.onAdSwipeGestureClicked();
        }
    }
}
