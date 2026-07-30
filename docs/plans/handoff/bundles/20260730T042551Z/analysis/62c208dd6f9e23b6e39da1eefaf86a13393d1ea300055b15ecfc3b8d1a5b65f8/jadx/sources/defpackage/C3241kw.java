package defpackage;

import java.util.Arrays;

/* renamed from: kw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3241kw {

    /* renamed from: do, reason: not valid java name */
    public int f14062do;

    /* renamed from: if, reason: not valid java name */
    public double[] f14065if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float[] f14064do = new float[0];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public double[] f14063do = new double[0];

    /* renamed from: do, reason: not valid java name */
    public final void m7296do(double d, float f) {
        int length = this.f14064do.length + 1;
        int binarySearch = Arrays.binarySearch(this.f14063do, d);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.f14063do = Arrays.copyOf(this.f14063do, length);
        this.f14064do = Arrays.copyOf(this.f14064do, length);
        this.f14065if = new double[length];
        double[] dArr = this.f14063do;
        System.arraycopy(dArr, binarySearch, dArr, binarySearch + 1, (length - binarySearch) - 1);
        this.f14063do[binarySearch] = d;
        this.f14064do[binarySearch] = f;
    }

    /* renamed from: for, reason: not valid java name */
    public final double m7297for(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.f14063do, d);
        if (binarySearch > 0) {
            return 1.0d;
        }
        if (binarySearch == 0) {
            return 0.0d;
        }
        int i = (-binarySearch) - 1;
        float[] fArr = this.f14064do;
        float f = fArr[i];
        int i2 = i - 1;
        float f2 = fArr[i2];
        double d2 = f - f2;
        double[] dArr = this.f14063do;
        double d3 = dArr[i];
        double d4 = dArr[i2];
        double d5 = d2 / (d3 - d4);
        return ((((d * d) - (d4 * d4)) * d5) / 2.0d) + ((d - d4) * (f2 - (d5 * d4))) + this.f14065if[i2];
    }

    /* renamed from: if, reason: not valid java name */
    public final double m7298if(double d) {
        if (d <= 0.0d) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int binarySearch = Arrays.binarySearch(this.f14063do, d);
        if (binarySearch > 0 || binarySearch == 0) {
            return 0.0d;
        }
        int i = (-binarySearch) - 1;
        float[] fArr = this.f14064do;
        float f = fArr[i];
        int i2 = i - 1;
        float f2 = fArr[i2];
        double d2 = f - f2;
        double[] dArr = this.f14063do;
        double d3 = dArr[i];
        double d4 = dArr[i2];
        double d5 = d2 / (d3 - d4);
        return (f2 - (d5 * d4)) + (d * d5);
    }

    /* renamed from: new, reason: not valid java name */
    public final double m7299new(double d) {
        double abs;
        switch (this.f14062do) {
            case 1:
                return Math.signum(0.5d - (m7297for(d) % 1.0d));
            case 2:
                abs = Math.abs((((m7297for(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((m7297for(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((m7297for(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(m7297for(d) * 6.283185307179586d);
            case 6:
                double abs2 = 1.0d - Math.abs(((m7297for(d) * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            default:
                return Math.sin(m7297for(d) * 6.283185307179586d);
        }
        return 1.0d - abs;
    }

    public final String toString() {
        return "pos =" + Arrays.toString(this.f14063do) + " period=" + Arrays.toString(this.f14064do);
    }
}
