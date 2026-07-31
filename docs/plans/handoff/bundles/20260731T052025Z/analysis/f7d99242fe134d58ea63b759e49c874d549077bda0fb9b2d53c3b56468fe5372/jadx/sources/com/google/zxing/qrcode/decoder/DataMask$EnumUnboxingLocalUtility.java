package com.google.zxing.qrcode.decoder;

import androidx.datastore.preferences.PreferencesProto$Value;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class DataMask$EnumUnboxingLocalUtility {
    public static final int[] FOR_BITS = {2, 1, 4, 3};

    public static boolean _dispatch_isMasked(int i, int i2, int i3) {
        switch (i) {
            case 1:
                if (((i2 + i3) & 1) == 0) {
                }
                break;
            case 2:
                if ((i2 & 1) == 0) {
                }
                break;
            case 3:
                if (i3 % 3 == 0) {
                }
                break;
            case 4:
                if ((i2 + i3) % 3 == 0) {
                }
                break;
            case 5:
                if ((((i3 / 3) + (i2 / 2)) & 1) == 0) {
                }
                break;
            case 6:
                if ((i2 * i3) % 6 == 0) {
                }
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                if ((i2 * i3) % 6 < 3) {
                }
                break;
            default:
                if (((((i2 * i3) % 3) + i2 + i3) & 1) == 0) {
                }
                break;
        }
        return true;
    }
}
