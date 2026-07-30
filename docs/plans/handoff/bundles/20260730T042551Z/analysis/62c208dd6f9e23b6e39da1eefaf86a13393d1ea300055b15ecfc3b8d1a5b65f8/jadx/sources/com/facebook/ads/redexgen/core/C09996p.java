package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.content.Context;

/* renamed from: com.facebook.ads.redexgen.X.6p, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09996p {
    public static String[] A00 = {"9O", "28H1kjICyCSP", "QKFmg3qmSW84YfLR5DXewrEtWZ47Hzy", "P", "Em", "YyES7HR0UsWs", "rGxFrAuyTsOha0QpVFZkpdTTHXBTZM0k", "CeAnScf1I32vhT13KQ6XZJy"};

    public static InterfaceC08621f A00(Context context, AnonymousClass87 anonymousClass87) {
        return A01(context, anonymousClass87, null);
    }

    public static InterfaceC08621f A01(Context context, AnonymousClass87 anonymousClass87, String str) {
        C2321k0 sdkContext = A09(context);
        InterfaceC08661j A82 = anonymousClass87.A82(sdkContext);
        if (A82 != null) {
            return str != null ? A82.ABj(str) : A82.ABi();
        }
        return new C2522nL();
    }

    public static C2322k1 A02(Activity activity) {
        return new C2322k1(activity, (AnonymousClass87) A0A(), A00(activity, A0A()));
    }

    public static C2322k1 A03(Context context) {
        return new C2322k1(context, A0A(), new C2522nL());
    }

    public static C2322k1 A04(Context context) {
        if (C10729m.A0v(context)) {
            return new C2322k1(context, A0A(), A00(context, A0A()));
        }
        C2322k1 A03 = A03(context);
        if (A00[2].length() == 11) {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[3] = "B";
        strArr[7] = "J1bgC2YpAkuTguvKBul5HQJ";
        return A03;
    }

    public static C2322k1 A05(Context context, String str) {
        InterfaceC08621f A01 = A01(context, A0A(), str);
        A01.AIZ(1000);
        return new C2322k1(context, A0A(), A01);
    }

    public static C2322k1 A06(Context context, String str) {
        return new C2322k1(context, A0A(), A01(context, A0A(), str));
    }

    public static C2322k1 A07(Context context, String str) {
        return new C2322k1(context, A0A(), A01(context, A0A(), str));
    }

    public static M5 A08(Context context) {
        return new M5(context, A0A(), A0A().A82(A09(context)));
    }

    public static C2321k0 A09(Context context) {
        return new C2321k0(context, A0A());
    }

    public static synchronized C2294jZ A0A() {
        C2294jZ A02;
        synchronized (C09996p.class) {
            A02 = C2294jZ.A02();
        }
        return A02;
    }
}
