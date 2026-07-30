package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.do, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class Cdo {
    public String A00;
    public String A01;
    public final String A02;
    public final boolean A03;

    public Cdo() {
        this(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public Cdo(String str, boolean z, String str2, String str3) {
        this.A02 = str;
        this.A03 = z;
        this.A00 = str2;
        this.A01 = str3;
    }
}
