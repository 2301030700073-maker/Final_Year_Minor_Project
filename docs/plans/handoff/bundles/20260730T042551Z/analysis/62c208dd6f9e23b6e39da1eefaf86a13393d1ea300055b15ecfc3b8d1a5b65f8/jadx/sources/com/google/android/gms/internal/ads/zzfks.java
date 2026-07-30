package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;

/* loaded from: classes.dex */
public enum zzfks {
    HTML("html"),
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    JAVASCRIPT("javascript");

    private final String zze;

    zzfks(String str) {
        this.zze = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zze;
    }
}
