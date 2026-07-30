package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.idresolver;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public class Id {

    /* renamed from: do, reason: not valid java name */
    public static final Id f8816do = new Id(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8817do;

    public Id(String str) {
        this.f8817do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized void m5070do() {
        synchronized (Id.class) {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = ((Id) obj).f8817do;
        String str2 = this.f8817do;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f8817do;
        return 31 + (str == null ? 0 : str.hashCode());
    }
}
