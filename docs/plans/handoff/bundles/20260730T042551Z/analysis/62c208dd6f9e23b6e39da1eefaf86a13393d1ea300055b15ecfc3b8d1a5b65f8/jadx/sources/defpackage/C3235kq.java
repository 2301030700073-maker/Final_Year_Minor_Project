package defpackage;

/* renamed from: kq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3235kq extends AbstractC3457oc {

    /* renamed from: do, reason: not valid java name */
    public final double[] f14051do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final double[][] f14052do;

    public C3235kq(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f14051do = dArr;
        this.f14052do = dArr2;
        if (length2 > 2) {
            double d = 0.0d;
            double d2 = 0.0d;
            int i = 0;
            while (i < dArr.length) {
                double d3 = dArr2[i][0];
                if (i > 0) {
                    Math.hypot(d3 - d, d3 - d2);
                }
                i++;
                d = d3;
                d2 = d;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0017, code lost:
    
        if (r12 >= r5) goto L4;
     */
    @Override // defpackage.AbstractC3457oc
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo7282case(double r12, double[] r14) {
        /*
            r11 = this;
            double[] r0 = r11.f14051do
            int r1 = r0.length
            double[][] r2 = r11.f14052do
            r3 = 0
            r4 = r2[r3]
            int r4 = r4.length
            r5 = r0[r3]
            int r7 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r7 > 0) goto L11
        Lf:
            r12 = r5
            goto L1a
        L11:
            int r5 = r1 + (-1)
            r5 = r0[r5]
            int r7 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r7 < 0) goto L1a
            goto Lf
        L1a:
            r5 = 0
        L1b:
            int r6 = r1 + (-1)
            if (r5 >= r6) goto L3d
            int r6 = r5 + 1
            r7 = r0[r6]
            int r9 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
            if (r9 > 0) goto L3b
            r12 = r0[r5]
            double r7 = r7 - r12
        L2a:
            if (r3 >= r4) goto L3d
            r12 = r2[r5]
            r0 = r12[r3]
            r12 = r2[r6]
            r9 = r12[r3]
            double r9 = r9 - r0
            double r9 = r9 / r7
            r14[r3] = r9
            int r3 = r3 + 1
            goto L2a
        L3b:
            r5 = r6
            goto L1b
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3235kq.mo7282case(double, double[]):void");
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: else, reason: not valid java name */
    public final double[] mo7283else() {
        return this.f14051do;
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: for, reason: not valid java name */
    public final void mo7284for(double d, double[] dArr) {
        double[] dArr2 = this.f14051do;
        int length = dArr2.length;
        double[][] dArr3 = this.f14052do;
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
                double d4 = (d - d3) / (d2 - d3);
                while (i < length2) {
                    dArr[i] = (dArr3[i6][i] * d4) + ((1.0d - d4) * dArr3[i4][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: if, reason: not valid java name */
    public final double mo7285if(double d) {
        double[] dArr = this.f14051do;
        int length = dArr.length;
        double d2 = dArr[0];
        double[][] dArr2 = this.f14052do;
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
                double d5 = (d - d3) / (d4 - d3);
                return (dArr2[i3][0] * d5) + ((1.0d - d5) * dArr2[i2][0]);
            }
            i2 = i3;
        }
        return 0.0d;
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: new, reason: not valid java name */
    public final void mo7286new(double d, float[] fArr) {
        double[] dArr = this.f14051do;
        int length = dArr.length;
        double[][] dArr2 = this.f14052do;
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
                double d4 = (d - d3) / (d2 - d3);
                while (i < length2) {
                    fArr[i] = (float) ((dArr2[i6][i] * d4) + ((1.0d - d4) * dArr2[i4][i]));
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0012, code lost:
    
        if (r9 >= r3) goto L4;
     */
    @Override // defpackage.AbstractC3457oc
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double mo7287try(double r9) {
        /*
            r8 = this;
            double[] r0 = r8.f14051do
            int r1 = r0.length
            r2 = 0
            r3 = r0[r2]
            int r5 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r5 >= 0) goto Lc
        La:
            r9 = r3
            goto L15
        Lc:
            int r3 = r1 + (-1)
            r3 = r0[r3]
            int r5 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r5 < 0) goto L15
            goto La
        L15:
            r3 = 0
        L16:
            int r4 = r1 + (-1)
            if (r3 >= r4) goto L34
            int r4 = r3 + 1
            r5 = r0[r4]
            int r7 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r7 > 0) goto L32
            r9 = r0[r3]
            double r5 = r5 - r9
            double[][] r9 = r8.f14052do
            r10 = r9[r3]
            r0 = r10[r2]
            r9 = r9[r4]
            r2 = r9[r2]
            double r2 = r2 - r0
            double r2 = r2 / r5
            return r2
        L32:
            r3 = r4
            goto L16
        L34:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3235kq.mo7287try(double):double");
    }
}
