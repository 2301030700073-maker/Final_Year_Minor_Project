package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;

/* loaded from: classes.dex */
public enum zzfku {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    HTML_DISPLAY("htmlDisplay"),
    NATIVE_DISPLAY("nativeDisplay"),
    VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
    AUDIO("audio");

    private final String zzg;

    zzfku(String str) {
        this.zzg = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzg;
    }
}
