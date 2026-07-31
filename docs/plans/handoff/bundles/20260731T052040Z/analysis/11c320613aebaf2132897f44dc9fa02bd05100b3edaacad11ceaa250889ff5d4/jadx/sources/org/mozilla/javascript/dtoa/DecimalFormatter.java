package org.mozilla.javascript.dtoa;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import org.mozilla.javascript.dtoa.Decimal;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DecimalFormatter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final double MAX_FIXED = 1.0E21d;

    private static void fillZeroes(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append('0');
        }
    }

    public static String toExponential(double d, int i) {
        if (i < 0) {
            return DoubleFormatter.toDecimal(d).toString(Decimal.Mode.TO_EXPONENTIAL);
        }
        boolean z = Math.signum(d) < 0.0d;
        if (z) {
            d = Math.abs(d);
        }
        BigDecimal bigDecimal = new BigDecimal(d, new MathContext(i + 1, RoundingMode.HALF_UP));
        return toExponentialString(bigDecimal, (bigDecimal.scale() >= 0 ? bigDecimal.precision() - bigDecimal.scale() : bigDecimal.precision() + (-bigDecimal.scale())) - 1, i, z);
    }

    private static String toExponentialString(BigDecimal bigDecimal, int i, int i2, boolean z) {
        String bigInteger = bigDecimal.unscaledValue().toString();
        int length = bigInteger.length();
        StringBuilder sb = new StringBuilder(length + i2 + 7);
        if (z) {
            sb.append('-');
        }
        sb.append(bigInteger.charAt(0));
        if (length > 1 || i2 >= 1) {
            sb.append('.');
            sb.append(bigInteger.substring(1));
            fillZeroes(sb, i2 - (length - 1));
        }
        sb.append('e');
        if (i >= 0) {
            sb.append('+');
        }
        sb.append(i);
        return sb.toString();
    }

    public static String toFixed(double d, int i) {
        boolean z = Math.signum(d) < 0.0d;
        double abs = z ? Math.abs(d) : d;
        if (abs >= MAX_FIXED) {
            return DoubleFormatter.toString(d);
        }
        BigDecimal bigDecimal = new BigDecimal(abs, MathContext.UNLIMITED);
        if (bigDecimal.scale() > i) {
            bigDecimal = bigDecimal.setScale(i, RoundingMode.HALF_UP);
        }
        return toFixedString(bigDecimal, i, z);
    }

    private static String toFixedString(BigDecimal bigDecimal, int i, boolean z) {
        int scale = bigDecimal.scale();
        String bigInteger = bigDecimal.unscaledValue().toString();
        int length = bigInteger.length();
        if (scale == 0 && i == 0) {
            return z ? "-".concat(bigInteger) : bigInteger;
        }
        StringBuilder sb = new StringBuilder((length * 2) + 3);
        if (z) {
            sb.append('-');
        }
        if (scale >= length) {
            sb.append("0.");
            fillZeroes(sb, scale - length);
            sb.append(bigInteger);
        } else {
            int i2 = length - scale;
            sb.append(bigInteger.substring(0, i2));
            sb.append('.');
            sb.append(bigInteger.substring(i2));
        }
        fillZeroes(sb, i - scale);
        return sb.toString();
    }

    public static String toPrecision(double d, int i) {
        int i2;
        int i3 = 0;
        boolean z = Math.signum(d) < 0.0d;
        if (z) {
            d = -d;
        }
        BigDecimal bigDecimal = new BigDecimal(d, new MathContext(i, RoundingMode.HALF_UP));
        int scale = bigDecimal.scale();
        int precision = bigDecimal.precision();
        if (scale >= 0) {
            i3 = scale >= precision ? i : i - (precision - scale);
            i2 = precision - scale;
        } else {
            i2 = precision + (-scale);
        }
        int i4 = i2 - 1;
        return (i4 < -6 || i4 >= i) ? toExponentialString(bigDecimal, i4, i - 1, z) : toFixedString(bigDecimal, i3, z);
    }
}
