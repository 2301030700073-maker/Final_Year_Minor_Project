package defpackage;

import java.lang.reflect.Array;

/* renamed from: ot, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3474ot extends AbstractC3457oc {

    /* renamed from: do, reason: not valid java name */
    public final double[] f14866do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final double[][] f14867do;

    /* renamed from: if, reason: not valid java name */
    public final double[][] f14868if;

    public C3474ot(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        int i = length - 1;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 + 1;
                double d = dArr[i4] - dArr[i3];
                double[] dArr5 = dArr3[i3];
                double d2 = (dArr2[i4][i2] - dArr2[i3][i2]) / d;
                dArr5[i2] = d2;
                if (i3 == 0) {
                    dArr4[i3][i2] = d2;
                } else {
                    dArr4[i3][i2] = (dArr3[i3 - 1][i2] + d2) * 0.5d;
                }
                i3 = i4;
            }
            dArr4[i][i2] = dArr3[length - 2][i2];
        }
        for (int i5 = 0; i5 < i; i5++) {
            for (int i6 = 0; i6 < length2; i6++) {
                double d3 = dArr3[i5][i6];
                if (d3 == 0.0d) {
                    dArr4[i5][i6] = 0.0d;
                    dArr4[i5 + 1][i6] = 0.0d;
                } else {
                    double d4 = dArr4[i5][i6] / d3;
                    int i7 = i5 + 1;
                    double d5 = dArr4[i7][i6] / d3;
                    double hypot = Math.hypot(d4, d5);
                    if (hypot > 9.0d) {
                        double d6 = 3.0d / hypot;
                        double[] dArr6 = dArr4[i5];
                        double[] dArr7 = dArr3[i5];
                        dArr6[i6] = d4 * d6 * dArr7[i6];
                        dArr4[i7][i6] = d6 * d5 * dArr7[i6];
                    }
                }
            }
        }
        this.f14866do = dArr;
        this.f14867do = dArr2;
        this.f14868if = dArr4;
    }

    /* renamed from: goto, reason: not valid java name */
    public static double m7742goto(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d2 * 6.0d;
        double d9 = 6.0d * d7 * d3;
        double d10 = 3.0d * d;
        return (d * d5) + (((((d10 * d5) * d7) + (((d10 * d6) * d7) + ((d9 + ((d8 * d4) + (((-6.0d) * d7) * d4))) - (d8 * d3)))) - (((2.0d * d) * d6) * d2)) - (((4.0d * d) * d5) * d2));
    }

    /* renamed from: this, reason: not valid java name */
    public static double m7743this(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        double d9 = 3.0d * d7;
        double d10 = d8 * 2.0d * d3;
        double d11 = ((d10 + ((d9 * d4) + (((-2.0d) * d8) * d4))) - (d9 * d3)) + d3;
        double d12 = d * d6;
        double d13 = (d12 * d8) + d11;
        double d14 = d * d5;
        return (d14 * d2) + ((((d8 * d14) + d13) - (d12 * d7)) - (((2.0d * d) * d5) * d7));
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: case */
    public final void mo7282case(double d, double[] dArr) {
        double[] dArr2 = this.f14866do;
        int length = dArr2.length;
        double[][] dArr3 = this.f14867do;
        int length2 = dArr3[0].length;
        double d2 = dArr2[0];
        if (d > d2) {
            d2 = dArr2[length - 1];
            if (d < d2) {
                d2 = d;
            }
        }
        int i = 0;
        while (i < length - 1) {
            int i2 = i + 1;
            double d3 = dArr2[i2];
            if (d2 <= d3) {
                double d4 = dArr2[i];
                double d5 = d3 - d4;
                double d6 = (d2 - d4) / d5;
                for (int i3 = 0; i3 < length2; i3++) {
                    double d7 = dArr3[i][i3];
                    double d8 = dArr3[i2][i3];
                    double[][] dArr4 = this.f14868if;
                    dArr[i3] = m7742goto(d5, d6, d7, d8, dArr4[i][i3], dArr4[i2][i3]) / d5;
                }
                return;
            }
            i = i2;
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: else */
    public final double[] mo7283else() {
        return this.f14866do;
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: for */
    public final void mo7284for(double d, double[] dArr) {
        double[] dArr2 = this.f14866do;
        int length = dArr2.length;
        double[][] dArr3 = this.f14867do;
        int i = 0;
        int length2 = dArr3[0].length;
        if (d <= dArr2[0]) {
            for (int i2 = 0; i2 < length2; i2++) {
                dArr[i2] = dArr3[0][i2];
            }
            return;
        }
        int i3 = length - 1;
        if (d >= dArr2[i3]) {
            while (i < length2) {
                dArr[i] = dArr3[i3][i];
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            if (d == dArr2[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = dArr3[i4][i5];
                }
            }
            int i6 = i4 + 1;
            double d2 = dArr2[i6];
            if (d < d2) {
                double d3 = dArr2[i4];
                double d4 = d2 - d3;
                double d5 = (d - d3) / d4;
                while (i < length2) {
                    double d6 = dArr3[i4][i];
                    double d7 = dArr3[i6][i];
                    double[][] dArr4 = this.f14868if;
                    dArr[i] = m7743this(d4, d5, d6, d7, dArr4[i4][i], dArr4[i6][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: if */
    public final double mo7285if(double d) {
        double[] dArr = this.f14866do;
        int length = dArr.length;
        double d2 = dArr[0];
        double[][] dArr2 = this.f14867do;
        if (d <= d2) {
            return dArr2[0][0];
        }
        int i = length - 1;
        if (d >= dArr[i]) {
            return dArr2[i][0];
        }
        int i2 = 0;
        while (i2 < i) {
            double d3 = dArr[i2];
            if (d == d3) {
                return dArr2[i2][0];
            }
            int i3 = i2 + 1;
            double d4 = dArr[i3];
            if (d < d4) {
                double d5 = d4 - d3;
                double d6 = (d - d3) / d5;
                double d7 = dArr2[i2][0];
                double d8 = dArr2[i3][0];
                double[][] dArr3 = this.f14868if;
                return m7743this(d5, d6, d7, d8, dArr3[i2][0], dArr3[i3][0]);
            }
            i2 = i3;
        }
        return 0.0d;
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: new */
    public final void mo7286new(double d, float[] fArr) {
        double[] dArr = this.f14866do;
        int length = dArr.length;
        double[][] dArr2 = this.f14867do;
        int i = 0;
        int length2 = dArr2[0].length;
        if (d <= dArr[0]) {
            for (int i2 = 0; i2 < length2; i2++) {
                fArr[i2] = (float) dArr2[0][i2];
            }
            return;
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            while (i < length2) {
                fArr[i] = (float) dArr2[i3][i];
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            if (d == dArr[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) dArr2[i4][i5];
                }
            }
            int i6 = i4 + 1;
            double d2 = dArr[i6];
            if (d < d2) {
                double d3 = dArr[i4];
                double d4 = d2 - d3;
                double d5 = (d - d3) / d4;
                while (i < length2) {
                    double d6 = dArr2[i4][i];
                    double d7 = dArr2[i6][i];
                    double[][] dArr3 = this.f14868if;
                    fArr[i] = (float) m7743this(d4, d5, d6, d7, dArr3[i4][i], dArr3[i6][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: try */
    public final double mo7287try(double d) {
        double[] dArr = this.f14866do;
        int length = dArr.length;
        double d2 = dArr[0];
        if (d >= d2) {
            d2 = dArr[length - 1];
            if (d < d2) {
                d2 = d;
            }
        }
        int i = 0;
        while (i < length - 1) {
            int i2 = i + 1;
            double d3 = dArr[i2];
            if (d2 <= d3) {
                double d4 = dArr[i];
                double d5 = d3 - d4;
                double[][] dArr2 = this.f14867do;
                double d6 = dArr2[i][0];
                double d7 = dArr2[i2][0];
                double[][] dArr3 = this.f14868if;
                return m7742goto(d5, (d2 - d4) / d5, d6, d7, dArr3[i][0], dArr3[i2][0]) / d5;
            }
            i = i2;
        }
        return 0.0d;
    }
}
