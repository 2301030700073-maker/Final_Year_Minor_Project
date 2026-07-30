package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdErrorType;

/* renamed from: com.facebook.ads.redexgen.X.Ag, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1091Ag {
    public final AdErrorType A00;
    public final String A01;

    public C1091Ag(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public C1091Ag(AdErrorType adErrorType, String str) {
        str = TextUtils.isEmpty(str) ? adErrorType.getDefaultErrorMessage() : str;
        this.A00 = adErrorType;
        this.A01 = str;
    }

    public static C1091Ag A00(AdErrorType adErrorType) {
        return new C1091Ag(adErrorType, (String) null);
    }

    public static C1091Ag A01(AdErrorType adErrorType, String str) {
        return new C1091Ag(adErrorType, str);
    }

    public static C1091Ag A02(C1092Ah c1092Ah) {
        return new C1091Ag(c1092Ah.A00(), c1092Ah.A01());
    }

    public final AdErrorType A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A01;
    }
}
