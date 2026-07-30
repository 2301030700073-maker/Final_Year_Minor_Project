package com.google.android.gms.ads.preload;

/* loaded from: classes.dex */
public interface PreloadCallback {
    void onAdsAvailable(PreloadConfiguration preloadConfiguration);

    void onAdsExhausted(PreloadConfiguration preloadConfiguration);
}
