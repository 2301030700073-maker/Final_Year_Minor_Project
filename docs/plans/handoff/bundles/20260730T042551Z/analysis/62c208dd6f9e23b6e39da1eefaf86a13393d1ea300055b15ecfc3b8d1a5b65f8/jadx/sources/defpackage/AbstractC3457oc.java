package defpackage;

/* renamed from: oc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3457oc {

    /* renamed from: oc$do, reason: invalid class name */
    public static class Cdo extends AbstractC3457oc {

        /* renamed from: do, reason: not valid java name */
        public final double f14812do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final double[] f14813do;

        public Cdo(double d, double[] dArr) {
            this.f14812do = d;
            this.f14813do = dArr;
        }

        @Override // defpackage.AbstractC3457oc
        /* renamed from: case */
        public final void mo7282case(double d, double[] dArr) {
            for (int i = 0; i < this.f14813do.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // defpackage.AbstractC3457oc
        /* renamed from: else */
        public final double[] mo7283else() {
            return new double[]{this.f14812do};
        }

        @Override // defpackage.AbstractC3457oc
        /* renamed from: for */
        public final void mo7284for(double d, double[] dArr) {
            double[] dArr2 = this.f14813do;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // defpackage.AbstractC3457oc
        /* renamed from: if */
        public final double mo7285if(double d) {
            return this.f14813do[0];
        }

        @Override // defpackage.AbstractC3457oc
        /* renamed from: new */
        public final void mo7286new(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.f14813do;
                if (i >= dArr.length) {
                    return;
                }
                fArr[i] = (float) dArr[i];
                i++;
            }
        }

        @Override // defpackage.AbstractC3457oc
        /* renamed from: try */
        public final double mo7287try(double d) {
            return 0.0d;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static AbstractC3457oc m7714do(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        return i != 0 ? i != 2 ? new C3235kq(dArr, dArr2) : new Cdo(dArr[0], dArr2[0]) : new C3474ot(dArr, dArr2);
    }

    /* renamed from: case */
    public abstract void mo7282case(double d, double[] dArr);

    /* renamed from: else */
    public abstract double[] mo7283else();

    /* renamed from: for */
    public abstract void mo7284for(double d, double[] dArr);

    /* renamed from: if */
    public abstract double mo7285if(double d);

    /* renamed from: new */
    public abstract void mo7286new(double d, float[] fArr);

    /* renamed from: try */
    public abstract double mo7287try(double d);
}
