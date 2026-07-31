package com.appsflyer.internal;

import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.appcompat.app.AppCompatDelegate;

/* loaded from: classes2.dex */
public final class AFf1qSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFAdRevenueData = 0;
    private static int areAllFieldsValid = 0;
    private static int component1 = 1;
    private static int getCurrencyIso4217Code;
    private static byte[] getMediationNetwork;
    private static short[] getMonetizationNetwork;
    private static int getRevenue;

    public final AFi1rSDK getRevenue(AFi1wSDK aFi1wSDK, String str, String str2, String str3) {
        int i = 2 % 2;
        int i2 = areAllFieldsValid + 67;
        int i3 = i2 % 128;
        component1 = i3;
        int i4 = i2 % 2;
        if (aFi1wSDK != null && str2 != null) {
            int i5 = i3 + 61;
            areAllFieldsValid = i5 % 128;
            if (i5 % 2 != 0) {
                Object obj = null;
                obj.hashCode();
                throw null;
            }
            if (str3 != null) {
                return getCurrencyIso4217Code(aFi1wSDK, str, str2, str3);
            }
        }
        AFi1rSDK aFi1rSDK = new AFi1rSDK(false, AFi1uSDK.INTERNAL_ERROR);
        int i6 = component1 + 59;
        areAllFieldsValid = i6 % 128;
        int i7 = i6 % 2;
        return aFi1rSDK;
    }

    private static AFi1rSDK getCurrencyIso4217Code(AFi1wSDK aFi1wSDK, String str, String str2, String str3) {
        if (str == null) {
            return new AFi1rSDK(aFi1wSDK.getMediationNetwork == AFh1cSDK.DEFAULT, AFi1uSDK.NA);
        }
        String str4 = "";
        Object[] objArr = new Object[1];
        a((ViewConfiguration.getKeyRepeatDelay() >> 16) + 1522762699, (byte) (-(ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), (short) ((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 107), (-82) - ((Process.getThreadPriority(0) + 20) >> 6), TextUtils.indexOf((CharSequence) "", '0', 0, 0) - 1963671201, objArr);
        String intern = ((String) objArr[0]).intern();
        if (aFi1wSDK.getMediationNetwork == AFh1cSDK.CUSTOM) {
            str4 = new StringBuilder(str2).reverse().toString();
        } else {
            str3 = intern;
        }
        boolean equals = getMediationNetwork(new StringBuilder(str3).reverse().toString(), aFi1wSDK.getRevenue, "android", "v1", str4).equals(str);
        return new AFi1rSDK(equals, equals ? AFi1uSDK.SUCCESS : AFi1uSDK.FAILURE);
    }

    private static String getMediationNetwork(String str, String str2, String str3, String str4, String str5) {
        int i = 2 % 2;
        int i2 = areAllFieldsValid + 17;
        component1 = i2 % 128;
        int i3 = i2 % 2;
        String revenue = AFj1bSDK.getRevenue(TextUtils.join("\u2063", new String[]{str2, str3, str4, str5, ""}), str);
        if (revenue.length() >= 12) {
            return revenue.substring(0, 12);
        }
        int i4 = areAllFieldsValid + AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY;
        component1 = i4 % 128;
        int i5 = i4 % 2;
        return revenue;
    }

    private static void a(int i, byte b, short s, int i2, int i3, Object[] objArr) {
        int i4;
        int length;
        byte[] bArr;
        int i5;
        int i6 = 2 % 2;
        AFk1kSDK aFk1kSDK = new AFk1kSDK();
        StringBuilder sb = new StringBuilder();
        int i7 = i2 + ((int) (AFAdRevenueData ^ 6918351348135370604L));
        boolean z = i7 == -1;
        if (z) {
            byte[] bArr2 = getMediationNetwork;
            if (bArr2 != null) {
                int length2 = bArr2.length;
                byte[] bArr3 = new byte[length2];
                for (int i8 = 0; i8 < length2; i8++) {
                    int i9 = $11 + 69;
                    $10 = i9 % 128;
                    int i10 = i9 % 2;
                    bArr3[i8] = (byte) (bArr2[i8] ^ 6918351348135370604L);
                }
                bArr2 = bArr3;
            }
            if (bArr2 != null) {
                i7 = (byte) (((byte) (getMediationNetwork[((int) (getCurrencyIso4217Code ^ 6918351348135370604L)) + i] ^ 6918351348135370604L)) + ((int) (AFAdRevenueData ^ 6918351348135370604L)));
                int i11 = $11 + 91;
                $10 = i11 % 128;
                int i12 = i11 % 2;
            } else {
                i7 = (short) (((short) (getMonetizationNetwork[((int) (getCurrencyIso4217Code ^ 6918351348135370604L)) + i] ^ 6918351348135370604L)) + ((int) (AFAdRevenueData ^ 6918351348135370604L)));
            }
        }
        if (i7 > 0) {
            int i13 = ((i + i7) - 2) + ((int) (getCurrencyIso4217Code ^ 6918351348135370604L));
            if (z) {
                i4 = 1;
            } else {
                int i14 = $11 + 107;
                $10 = i14 % 128;
                int i15 = i14 % 2;
                i4 = 0;
            }
            aFk1kSDK.getCurrencyIso4217Code = i13 + i4;
            aFk1kSDK.getRevenue = (char) (i3 + ((int) (getRevenue ^ 6918351348135370604L)));
            sb.append(aFk1kSDK.getRevenue);
            aFk1kSDK.getMediationNetwork = aFk1kSDK.getRevenue;
            byte[] bArr4 = getMediationNetwork;
            if (bArr4 != null) {
                int i16 = $10 + 97;
                $11 = i16 % 128;
                if (i16 % 2 == 0) {
                    length = bArr4.length;
                    bArr = new byte[length];
                    i5 = 1;
                } else {
                    length = bArr4.length;
                    bArr = new byte[length];
                    i5 = 0;
                }
                while (i5 < length) {
                    bArr[i5] = (byte) (bArr4[i5] ^ 6918351348135370604L);
                    i5++;
                }
                bArr4 = bArr;
            }
            boolean z2 = bArr4 != null;
            aFk1kSDK.AFAdRevenueData = 1;
            while (aFk1kSDK.AFAdRevenueData < i7) {
                if (!(!z2)) {
                    byte[] bArr5 = getMediationNetwork;
                    aFk1kSDK.getCurrencyIso4217Code = aFk1kSDK.getCurrencyIso4217Code - 1;
                    aFk1kSDK.getRevenue = (char) (aFk1kSDK.getMediationNetwork + (((byte) (((byte) (bArr5[r10] ^ 6918351348135370604L)) + s)) ^ b));
                } else {
                    short[] sArr = getMonetizationNetwork;
                    aFk1kSDK.getCurrencyIso4217Code = aFk1kSDK.getCurrencyIso4217Code - 1;
                    aFk1kSDK.getRevenue = (char) (aFk1kSDK.getMediationNetwork + (((short) (((short) (sArr[r10] ^ 6918351348135370604L)) + s)) ^ b));
                }
                sb.append(aFk1kSDK.getRevenue);
                aFk1kSDK.getMediationNetwork = aFk1kSDK.getRevenue;
                aFk1kSDK.AFAdRevenueData++;
                int i17 = $11 + 31;
                $10 = i17 % 128;
                int i18 = i17 % 2;
            }
        }
        objArr[0] = sb.toString();
    }

    static void getRevenue() {
        getCurrencyIso4217Code = -842505383;
        AFAdRevenueData = 1760829245;
        getRevenue = 503259577;
        getMediationNetwork = new byte[]{-125, -23, -7, -7, -7, -3, -49, -26, -30, -7, -11, -8, -8, -4, -7, -5, -3, -1, -2, -10, -14, -28, -56, -23, -7, -2, -52, -27, -2, -7, -7, -8, -29, -12, -2, -5, -50, -24, -4, -12, -12, -4, -11, -31, -5, -1, -6, -4, -8, -6, -8, -2, -9, -2, -6, -30, -5, -7, -1, -3, -8, -12, -4, -8};
    }

    static {
        getRevenue();
        ViewConfiguration.getMaximumDrawingCacheSize();
        TypedValue.complexToFloat(0);
        ExpandableListView.getPackedPositionForChild(0, 0);
        AndroidCharacter.getMirror('0');
        AndroidCharacter.getMirror('0');
        int i = areAllFieldsValid + 71;
        component1 = i % 128;
        if (i % 2 != 0) {
            return;
        }
        Object obj = null;
        obj.hashCode();
        throw null;
    }
}
