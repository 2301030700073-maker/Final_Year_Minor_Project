package okhttp3.internal.idn;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Punycode {
    public static final ByteString PREFIX;

    static {
        ByteString byteString = ByteString.EMPTY;
        PREFIX = ByteString.Companion.encodeUtf8("xn--");
    }

    public static int adapt(int i, int i2, boolean z) {
        int i3 = z ? i / 700 : i / 2;
        int i4 = (i3 / i2) + i3;
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return ((i4 * 36) / (i4 + 38)) + i5;
    }

    public static int getPunycodeDigit(int i) {
        if (i < 26) {
            return i + 97;
        }
        if (i < 36) {
            return i + 22;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(i, "unexpected digit: ");
        return 0;
    }
}
