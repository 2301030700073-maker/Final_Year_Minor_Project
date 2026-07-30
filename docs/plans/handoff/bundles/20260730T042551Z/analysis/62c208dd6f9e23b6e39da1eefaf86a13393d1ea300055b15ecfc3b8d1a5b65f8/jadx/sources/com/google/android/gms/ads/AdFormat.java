package com.google.android.gms.ads;

/* loaded from: classes.dex */
public enum AdFormat {
    BANNER(0),
    INTERSTITIAL(1),
    REWARDED(2),
    REWARDED_INTERSTITIAL(3),
    NATIVE(4),
    APP_OPEN_AD(6);


    /* renamed from: for, reason: not valid java name */
    public final int f9495for;

    AdFormat(int i) {
        this.f9495for = i;
    }

    public static AdFormat getAdFormat(int i) {
        for (AdFormat adFormat : values()) {
            if (adFormat.getValue() == i) {
                return adFormat;
            }
        }
        return null;
    }

    public int getValue() {
        return this.f9495for;
    }
}
