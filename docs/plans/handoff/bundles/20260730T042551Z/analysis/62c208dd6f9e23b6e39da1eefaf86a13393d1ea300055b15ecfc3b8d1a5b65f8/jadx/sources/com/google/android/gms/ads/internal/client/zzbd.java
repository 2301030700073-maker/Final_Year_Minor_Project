package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* loaded from: classes.dex */
public class zzbd extends AdListener {

    /* renamed from: do, reason: not valid java name */
    public AdListener f9590do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9591do = new Object();

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        synchronized (this.f9591do) {
            AdListener adListener = this.f9590do;
            if (adListener != null) {
                adListener.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        synchronized (this.f9591do) {
            AdListener adListener = this.f9590do;
            if (adListener != null) {
                adListener.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        synchronized (this.f9591do) {
            AdListener adListener = this.f9590do;
            if (adListener != null) {
                adListener.onAdFailedToLoad(loadAdError);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdImpression() {
        synchronized (this.f9591do) {
            AdListener adListener = this.f9590do;
            if (adListener != null) {
                adListener.onAdImpression();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        synchronized (this.f9591do) {
            AdListener adListener = this.f9590do;
            if (adListener != null) {
                adListener.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        synchronized (this.f9591do) {
            AdListener adListener = this.f9590do;
            if (adListener != null) {
                adListener.onAdOpened();
            }
        }
    }

    public final void zza(AdListener adListener) {
        synchronized (this.f9591do) {
            this.f9590do = adListener;
        }
    }
}
