package defpackage;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: s2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3660s2 extends AbstractC3457oc {

    /* renamed from: do, reason: not valid java name */
    public final double[] f15352do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo[] f15353do;

    /* renamed from: s2$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: if, reason: not valid java name */
        public static final double[] f15354if = new double[91];

        /* renamed from: break, reason: not valid java name */
        public final double f15355break;

        /* renamed from: case, reason: not valid java name */
        public final double f15356case;

        /* renamed from: catch, reason: not valid java name */
        public final double f15357catch;

        /* renamed from: class, reason: not valid java name */
        public final double f15358class;

        /* renamed from: const, reason: not valid java name */
        public final double f15359const;

        /* renamed from: do, reason: not valid java name */
        public double f15360do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f15361do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final double[] f15362do;

        /* renamed from: else, reason: not valid java name */
        public final double f15363else;

        /* renamed from: final, reason: not valid java name */
        public double f15364final;

        /* renamed from: for, reason: not valid java name */
        public final double f15365for;

        /* renamed from: goto, reason: not valid java name */
        public final double f15366goto;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final double f15367if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final boolean f15368if;

        /* renamed from: new, reason: not valid java name */
        public final double f15369new;

        /* renamed from: super, reason: not valid java name */
        public double f15370super;

        /* renamed from: this, reason: not valid java name */
        public final double f15371this;

        /* renamed from: try, reason: not valid java name */
        public final double f15372try;

        public Cdo(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            double[] dArr;
            double d7 = d3;
            this.f15368if = false;
            boolean z = i == 1;
            this.f15361do = z;
            this.f15367if = d;
            this.f15365for = d2;
            double d8 = 1.0d / (d2 - d);
            this.f15366goto = d8;
            if (3 == i) {
                this.f15368if = true;
            }
            double d9 = d5 - d7;
            double d10 = d6 - d4;
            if (this.f15368if || Math.abs(d9) < 0.001d || Math.abs(d10) < 0.001d) {
                this.f15368if = true;
                this.f15369new = d7;
                this.f15372try = d5;
                this.f15356case = d4;
                this.f15363else = d6;
                double hypot = Math.hypot(d10, d9);
                this.f15360do = hypot;
                this.f15359const = hypot * d8;
                this.f15357catch = d9 / (d2 - d);
                this.f15358class = d10 / (d2 - d);
                return;
            }
            this.f15362do = new double[FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS];
            this.f15371this = (z ? -1 : 1) * d9;
            this.f15355break = d10 * (z ? 1 : -1);
            this.f15357catch = z ? d5 : d7;
            this.f15358class = z ? d4 : d6;
            double d11 = d4 - d6;
            int i2 = 0;
            double d12 = 0.0d;
            double d13 = 0.0d;
            double d14 = 0.0d;
            while (true) {
                dArr = f15354if;
                if (i2 >= 91) {
                    break;
                }
                double d15 = d9;
                double radians = Math.toRadians((i2 * 90.0d) / 90);
                double sin = Math.sin(radians) * d15;
                double cos = Math.cos(radians) * d11;
                if (i2 > 0) {
                    d12 += Math.hypot(sin - d13, cos - d14);
                    dArr[i2] = d12;
                }
                i2++;
                d14 = cos;
                d13 = sin;
                d9 = d15;
            }
            this.f15360do = d12;
            for (int i3 = 0; i3 < 91; i3++) {
                dArr[i3] = dArr[i3] / d12;
            }
            int i4 = 0;
            while (true) {
                double[] dArr2 = this.f15362do;
                if (i4 >= dArr2.length) {
                    this.f15359const = this.f15360do * this.f15366goto;
                    return;
                }
                double length = i4 / (dArr2.length - 1);
                int binarySearch = Arrays.binarySearch(dArr, length);
                if (binarySearch >= 0) {
                    dArr2[i4] = binarySearch / 90;
                } else if (binarySearch == -1) {
                    dArr2[i4] = 0.0d;
                } else {
                    int i5 = -binarySearch;
                    int i6 = i5 - 2;
                    double d16 = dArr[i6];
                    dArr2[i4] = (((length - d16) / (dArr[i5 - 1] - d16)) + i6) / 90;
                }
                i4++;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final double m8051do() {
            double d = this.f15371this * this.f15370super;
            double d2 = (-this.f15355break) * this.f15364final;
            double hypot = this.f15359const / Math.hypot(d, d2);
            return this.f15361do ? (-d2) * hypot : d2 * hypot;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m8052if(double d) {
            double d2 = (this.f15361do ? this.f15365for - d : d - this.f15367if) * this.f15366goto;
            double d3 = 0.0d;
            if (d2 > 0.0d) {
                d3 = 1.0d;
                if (d2 < 1.0d) {
                    double[] dArr = this.f15362do;
                    double length = d2 * (dArr.length - 1);
                    int i = (int) length;
                    double d4 = dArr[i];
                    d3 = ((dArr[i + 1] - d4) * (length - i)) + d4;
                }
            }
            double d5 = d3 * 1.5707963267948966d;
            this.f15364final = Math.sin(d5);
            this.f15370super = Math.cos(d5);
        }
    }

    public C3660s2(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f15352do = dArr;
        this.f15353do = new Cdo[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            Cdo[] cdoArr = this.f15353do;
            if (i >= cdoArr.length) {
                return;
            }
            int i4 = iArr[i];
            if (i4 == 0) {
                i3 = 3;
            } else if (i4 == 1) {
                i2 = 1;
                i3 = 1;
            } else if (i4 == 2) {
                i2 = 2;
                i3 = 2;
            } else if (i4 == 3) {
                i2 = i2 == 1 ? 2 : 1;
                i3 = i2;
            }
            double d = dArr[i];
            int i5 = i + 1;
            double d2 = dArr[i5];
            double[] dArr3 = dArr2[i];
            double d3 = dArr3[0];
            double d4 = dArr3[1];
            double[] dArr4 = dArr2[i5];
            cdoArr[i] = new Cdo(i3, d, d2, d3, d4, dArr4[0], dArr4[1]);
            i = i5;
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: case */
    public final void mo7282case(double d, double[] dArr) {
        Cdo[] cdoArr = this.f15353do;
        double d2 = cdoArr[0].f15367if;
        if (d < d2) {
            d = d2;
        } else if (d > cdoArr[cdoArr.length - 1].f15365for) {
            d = cdoArr[cdoArr.length - 1].f15365for;
        }
        for (int i = 0; i < cdoArr.length; i++) {
            Cdo cdo = cdoArr[i];
            if (d <= cdo.f15365for) {
                if (cdo.f15368if) {
                    dArr[0] = cdo.f15357catch;
                    dArr[1] = cdo.f15358class;
                    return;
                }
                cdo.m8052if(d);
                Cdo cdo2 = cdoArr[i];
                double d3 = cdo2.f15371this * cdo2.f15370super;
                double hypot = cdo2.f15359const / Math.hypot(d3, (-cdo2.f15355break) * cdo2.f15364final);
                if (cdo2.f15361do) {
                    d3 = -d3;
                }
                dArr[0] = d3 * hypot;
                dArr[1] = cdoArr[i].m8051do();
                return;
            }
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: else */
    public final double[] mo7283else() {
        return this.f15352do;
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: for */
    public final void mo7284for(double d, double[] dArr) {
        Cdo[] cdoArr = this.f15353do;
        double d2 = cdoArr[0].f15367if;
        if (d >= d2) {
            d2 = d;
        }
        if (d2 > cdoArr[cdoArr.length - 1].f15365for) {
            d2 = cdoArr[cdoArr.length - 1].f15365for;
        }
        for (int i = 0; i < cdoArr.length; i++) {
            Cdo cdo = cdoArr[i];
            if (d2 <= cdo.f15365for) {
                if (!cdo.f15368if) {
                    cdo.m8052if(d2);
                    Cdo cdo2 = cdoArr[i];
                    dArr[0] = (cdo2.f15371this * cdo2.f15364final) + cdo2.f15357catch;
                    dArr[1] = (cdo2.f15355break * cdo2.f15370super) + cdo2.f15358class;
                    return;
                }
                double d3 = cdo.f15367if;
                double d4 = cdo.f15366goto;
                double d5 = cdo.f15372try;
                double d6 = cdo.f15369new;
                dArr[0] = ((d5 - d6) * (d2 - d3) * d4) + d6;
                double d7 = cdo.f15363else;
                double d8 = cdo.f15356case;
                dArr[1] = ((d7 - d8) * (d2 - d3) * d4) + d8;
                return;
            }
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: if */
    public final double mo7285if(double d) {
        Cdo[] cdoArr = this.f15353do;
        double d2 = cdoArr[0].f15367if;
        if (d < d2) {
            d = d2;
        } else if (d > cdoArr[cdoArr.length - 1].f15365for) {
            d = cdoArr[cdoArr.length - 1].f15365for;
        }
        for (int i = 0; i < cdoArr.length; i++) {
            Cdo cdo = cdoArr[i];
            if (d <= cdo.f15365for) {
                if (!cdo.f15368if) {
                    cdo.m8052if(d);
                    Cdo cdo2 = cdoArr[i];
                    return (cdo2.f15371this * cdo2.f15364final) + cdo2.f15357catch;
                }
                double d3 = (d - cdo.f15367if) * cdo.f15366goto;
                double d4 = cdo.f15372try;
                double d5 = cdo.f15369new;
                return ((d4 - d5) * d3) + d5;
            }
        }
        return Double.NaN;
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: new */
    public final void mo7286new(double d, float[] fArr) {
        Cdo[] cdoArr = this.f15353do;
        double d2 = cdoArr[0].f15367if;
        if (d >= d2) {
            d2 = d > cdoArr[cdoArr.length - 1].f15365for ? cdoArr[cdoArr.length - 1].f15365for : d;
        }
        for (int i = 0; i < cdoArr.length; i++) {
            Cdo cdo = cdoArr[i];
            if (d2 <= cdo.f15365for) {
                if (!cdo.f15368if) {
                    cdo.m8052if(d2);
                    Cdo cdo2 = cdoArr[i];
                    fArr[0] = (float) ((cdo2.f15371this * cdo2.f15364final) + cdo2.f15357catch);
                    fArr[1] = (float) ((cdo2.f15355break * cdo2.f15370super) + cdo2.f15358class);
                    return;
                }
                double d3 = cdo.f15367if;
                double d4 = cdo.f15366goto;
                double d5 = cdo.f15372try;
                double d6 = cdo.f15369new;
                fArr[0] = (float) (((d5 - d6) * (d2 - d3) * d4) + d6);
                double d7 = cdo.f15363else;
                double d8 = cdo.f15356case;
                fArr[1] = (float) (((d7 - d8) * (d2 - d3) * d4) + d8);
                return;
            }
        }
    }

    @Override // defpackage.AbstractC3457oc
    /* renamed from: try */
    public final double mo7287try(double d) {
        Cdo[] cdoArr = this.f15353do;
        double d2 = cdoArr[0].f15367if;
        if (d < d2) {
            d = d2;
        }
        if (d > cdoArr[cdoArr.length - 1].f15365for) {
            d = cdoArr[cdoArr.length - 1].f15365for;
        }
        for (int i = 0; i < cdoArr.length; i++) {
            Cdo cdo = cdoArr[i];
            if (d <= cdo.f15365for) {
                if (cdo.f15368if) {
                    return cdo.f15357catch;
                }
                cdo.m8052if(d);
                Cdo cdo2 = cdoArr[i];
                double d3 = cdo2.f15371this * cdo2.f15370super;
                double hypot = cdo2.f15359const / Math.hypot(d3, (-cdo2.f15355break) * cdo2.f15364final);
                if (cdo2.f15361do) {
                    d3 = -d3;
                }
                return d3 * hypot;
            }
        }
        return Double.NaN;
    }
}
