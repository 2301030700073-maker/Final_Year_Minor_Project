package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'A05' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: com.facebook.ads.redexgen.X.2q, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class EnumC08992q {
    public static byte[] A01;
    public static final /* synthetic */ EnumC08992q[] A02;
    public static final EnumC08992q A03;
    public static final EnumC08992q A04;
    public static final EnumC08992q A05;
    public final String A00;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 83);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-91, -88, -85, -92, -66, -81, -79, -92, -94, -96, -94, -89, -92, 5, 7, 4, 13, 14, 20, 5, 7, -6, -8, -10, -8, -3, -6, 15, -3, -6, 14, 1, -3, 15, 23, 8, 10, -3, -5, -7, -5, 0, -3};
    }

    static {
        A02();
        String A012 = A01(27, 16, FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS);
        A05 = new EnumC08992q(A012, 0, A012);
        String A013 = A01(13, 14, 98);
        A04 = new EnumC08992q(A013, 1, A013);
        String A014 = A01(0, 13, 12);
        A03 = new EnumC08992q(A014, 2, A014);
        A02 = A03();
    }

    public EnumC08992q(String str, int i, String str2) {
        this.A00 = str2;
    }

    public static EnumC08992q A00(String str) {
        for (EnumC08992q enumC08992q : values()) {
            if (enumC08992q.A00.equalsIgnoreCase(str)) {
                return enumC08992q;
            }
        }
        return A03;
    }

    public static /* synthetic */ EnumC08992q[] A03() {
        return new EnumC08992q[]{A05, A04, A03};
    }

    public static EnumC08992q valueOf(String str) {
        return (EnumC08992q) Enum.valueOf(EnumC08992q.class, str);
    }

    public static EnumC08992q[] values() {
        return (EnumC08992q[]) A02.clone();
    }
}
