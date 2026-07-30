package b.e.d;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f692a = new ThreadLocal();

    public static int a(double d2, double d3, double d4) {
        double[] dArr = (double[]) f692a.get();
        if (dArr == null) {
            dArr = new double[3];
            f692a.set(dArr);
        }
        double d5 = (d2 + 16.0d) / 116.0d;
        double d6 = (d3 / 500.0d) + d5;
        double d7 = d5 - (d4 / 200.0d);
        double pow = Math.pow(d6, 3.0d);
        if (pow <= 0.008856d) {
            pow = ((d6 * 116.0d) - 16.0d) / 903.3d;
        }
        double pow2 = d2 > 7.9996247999999985d ? Math.pow(d5, 3.0d) : d2 / 903.3d;
        double pow3 = Math.pow(d7, 3.0d);
        if (pow3 <= 0.008856d) {
            pow3 = ((d7 * 116.0d) - 16.0d) / 903.3d;
        }
        dArr[0] = pow * 95.047d;
        dArr[1] = pow2 * 100.0d;
        dArr[2] = pow3 * 108.883d;
        double d8 = dArr[0];
        double d9 = dArr[1];
        double d10 = dArr[2];
        double d11 = (((-0.4986d) * d10) + (((-1.5372d) * d9) + (3.2406d * d8))) / 100.0d;
        double d12 = ((0.0415d * d10) + ((1.8758d * d9) + ((-0.9689d) * d8))) / 100.0d;
        double d13 = ((d10 * 1.057d) + ((d9 * (-0.204d)) + (d8 * 0.0557d))) / 100.0d;
        return Color.rgb(h((int) Math.round((d11 > 0.0031308d ? (Math.pow(d11, 0.4166666666666667d) * 1.055d) - 0.055d : d11 * 12.92d) * 255.0d), 0, 255), h((int) Math.round((d12 > 0.0031308d ? (Math.pow(d12, 0.4166666666666667d) * 1.055d) - 0.055d : d12 * 12.92d) * 255.0d), 0, 255), h((int) Math.round((d13 > 0.0031308d ? (Math.pow(d13, 0.4166666666666667d) * 1.055d) - 0.055d : d13 * 12.92d) * 255.0d), 0, 255));
    }

    public static void b(int i, int i2, int i3, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d2 = i / 255.0d;
        double pow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = i2 / 255.0d;
        double pow2 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        double d4 = i3 / 255.0d;
        double pow3 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * pow3) + (0.3576d * pow2) + (0.4124d * pow)) * 100.0d;
        dArr[1] = ((0.0722d * pow3) + (0.7152d * pow2) + (0.2126d * pow)) * 100.0d;
        dArr[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * 100.0d;
    }

    public static double c(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            StringBuilder f = c.a.c.a.a.f("background can not be translucent: #");
            f.append(Integer.toHexString(i2));
            throw new IllegalArgumentException(f.toString());
        }
        if (Color.alpha(i) < 255) {
            i = f(i, i2);
        }
        double d2 = d(i) + 0.05d;
        double d3 = d(i2) + 0.05d;
        return Math.max(d2, d3) / Math.min(d2, d3);
    }

    public static float circularInterpolate(float f, float f2, float f3) {
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > f) {
                f += 360.0f;
            } else {
                f2 += 360.0f;
            }
        }
        return (((f2 - f) * f3) + f) % 360.0f;
    }

    public static double d(int i) {
        double[] dArr = (double[]) f692a.get();
        if (dArr == null) {
            dArr = new double[3];
            f692a.set(dArr);
        }
        b(Color.red(i), Color.green(i), Color.blue(i), dArr);
        return dArr[1] / 100.0d;
    }

    public static void e(int i, double[] dArr) {
        b(Color.red(i), Color.green(i), Color.blue(i), dArr);
        double d2 = dArr[0];
        double d3 = dArr[1];
        double d4 = dArr[2];
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outLab must have a length of 3.");
        }
        double i2 = i(d2 / 95.047d);
        double i3 = i(d3 / 100.0d);
        double i4 = i(d4 / 108.883d);
        dArr[0] = Math.max(0.0d, (116.0d * i3) - 16.0d);
        dArr[1] = (i2 - i3) * 500.0d;
        dArr[2] = (i3 - i4) * 200.0d;
    }

    public static int f(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha2) * (255 - alpha)) / 255);
        return Color.argb(i3, g(Color.red(i), alpha2, Color.red(i2), alpha, i3), g(Color.green(i), alpha2, Color.green(i2), alpha, i3), g(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    public static int g(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((255 - i2) * (i3 * i4)) + ((i * 255) * i2)) / (i5 * 255);
    }

    public static int h(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static double i(double d2) {
        return d2 > 0.008856d ? Math.pow(d2, 0.3333333333333333d) : ((d2 * 903.3d) + 16.0d) / 116.0d;
    }

    public static int j(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }
}
