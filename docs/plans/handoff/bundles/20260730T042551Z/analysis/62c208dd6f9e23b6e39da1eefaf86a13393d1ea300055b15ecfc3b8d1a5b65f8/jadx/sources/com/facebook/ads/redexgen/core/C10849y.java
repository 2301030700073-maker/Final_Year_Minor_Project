package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.9y, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10849y {
    public static String[] A04 = {"VndfGBIDInq1AmGKWEXIYtH", "X1ufgR44W1Z84U", "n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "za8Aa", "xjBfTCMiG1bFh7NB9hwMlLVXQHNbTqdl", "vkDSrNK7CnANJUjGZxXcCXY", "njWPP"};
    public EnumC10819v A01 = EnumC10819v.A03;
    public EnumC10829w A02 = EnumC10829w.A06;
    public EnumC10839x A03 = EnumC10839x.A02;
    public EnumC10809u A00 = EnumC10809u.A02;

    public final void A00() {
        this.A00 = EnumC10809u.A03;
    }

    public final void A01() {
        this.A02 = EnumC10829w.A04;
    }

    public final void A02() {
        this.A02 = EnumC10829w.A05;
    }

    public final void A03() {
        this.A03 = EnumC10839x.A03;
    }

    public final boolean A04() {
        if (this.A02 != EnumC10829w.A06) {
            EnumC10829w enumC10829w = this.A02;
            String[] strArr = A04;
            if (strArr[6].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[6] = "r152EQyYeE04Ovy9QYMfnLx";
            strArr2[0] = "I6yTYbMajK96Zgvn6mn7gLC";
            if (enumC10829w != EnumC10829w.A02 && this.A02 != EnumC10829w.A05) {
                return false;
            }
        }
        return true;
    }

    public final boolean A05() {
        return this.A02 == EnumC10829w.A06 || this.A02 == EnumC10829w.A02;
    }

    public final boolean A06() {
        return this.A03 == EnumC10839x.A03;
    }

    public final boolean A07() {
        return this.A00 == EnumC10809u.A03;
    }
}
