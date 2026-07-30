package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;

/* loaded from: classes.dex */
public enum zzecn {
    HTML_DISPLAY("htmlDisplay"),
    NATIVE_DISPLAY("nativeDisplay"),
    VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);

    private final String zze;

    zzecn(String str) {
        this.zze = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zze;
    }
}
