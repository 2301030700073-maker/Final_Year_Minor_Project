package okhttp3.internal.idn;

import com.jcraft.jzlib.Adler32;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Punycode {
    public static final ByteString PREFIX;

    static {
        ByteString byteString = ByteString.EMPTY;
        PREFIX = Adler32.encodeUtf8("xn--");
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("unexpected digit: ", i);
        return 0;
    }
}
