package kotlinx.datetime.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MathKt {
    public static final int[] POWERS_OF_TEN = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};

    public static final boolean isAsciiDigit(char c) {
        return '0' <= c && c < ':';
    }

    public static final String removeLeadingZerosFromLongYearForm(String str, int i) {
        int indexOf$default;
        CharSequence charSequence;
        if (str.length() < i + 12 || !StringsKt.contains$default("+-", str.charAt(0)) || (indexOf$default = StringsKt.indexOf$default(str, '-', 1, 4)) < 12) {
            return str;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (str.charAt(i3) != '0') {
                break;
            }
            i2 = i3;
        }
        if (indexOf$default - i2 >= 12) {
            return str;
        }
        int i4 = indexOf$default - 10;
        if (i4 < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(CameraDevices$CC.m(i4, "End index (", ") is less than start index (1)."));
            return null;
        }
        if (i4 == 1) {
            charSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(str.length() - (indexOf$default - 11));
            sb.append((CharSequence) str, 0, 1);
            sb.append((CharSequence) str, i4, str.length());
            charSequence = sb;
        }
        return charSequence.toString();
    }

    public static final long safeMultiply(long j, long j2) {
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            if ((j2 != Long.MIN_VALUE) | (j >= 0)) {
                long j3 = j * j2;
                if (j == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }
}
