package defpackage;

import defpackage.AbstractC3519pf;

/* loaded from: classes.dex */
public final class QE {

    /* renamed from: case, reason: not valid java name */
    public double f2879case;

    /* renamed from: do, reason: not valid java name */
    public double f2880do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3519pf.Celse f2881do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2882do;

    /* renamed from: else, reason: not valid java name */
    public double f2883else;

    /* renamed from: for, reason: not valid java name */
    public double f2884for;

    /* renamed from: goto, reason: not valid java name */
    public double f2885goto;

    /* renamed from: if, reason: not valid java name */
    public double f2886if;

    /* renamed from: new, reason: not valid java name */
    public double f2887new;

    /* renamed from: try, reason: not valid java name */
    public double f2888try;

    public QE() {
        this.f2880do = Math.sqrt(1500.0d);
        this.f2886if = 0.5d;
        this.f2882do = false;
        this.f2885goto = Double.MAX_VALUE;
        this.f2881do = new AbstractC3519pf.Celse();
    }

    /* renamed from: do, reason: not valid java name */
    public final AbstractC3519pf.Celse m1837do(double d, double d2, long j) {
        double cos;
        double d3;
        if (!this.f2882do) {
            if (this.f2885goto == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d4 = this.f2886if;
            if (d4 > 1.0d) {
                double d5 = this.f2880do;
                this.f2888try = (Math.sqrt((d4 * d4) - 1.0d) * d5) + ((-d4) * d5);
                double d6 = this.f2886if;
                double d7 = this.f2880do;
                this.f2879case = ((-d6) * d7) - (Math.sqrt((d6 * d6) - 1.0d) * d7);
            } else if (d4 >= 0.0d && d4 < 1.0d) {
                this.f2883else = Math.sqrt(1.0d - (d4 * d4)) * this.f2880do;
            }
            this.f2882do = true;
        }
        double d8 = j / 1000.0d;
        double d9 = d - this.f2885goto;
        double d10 = this.f2886if;
        if (d10 > 1.0d) {
            double d11 = this.f2879case;
            double d12 = this.f2888try;
            double d13 = d9 - (((d11 * d9) - d2) / (d11 - d12));
            double d14 = ((d9 * d11) - d2) / (d11 - d12);
            d3 = (Math.pow(2.718281828459045d, this.f2888try * d8) * d14) + (Math.pow(2.718281828459045d, d11 * d8) * d13);
            double d15 = this.f2879case;
            double pow = Math.pow(2.718281828459045d, d15 * d8) * d13 * d15;
            double d16 = this.f2888try;
            cos = (Math.pow(2.718281828459045d, d16 * d8) * d14 * d16) + pow;
        } else if (d10 == 1.0d) {
            double d17 = this.f2880do;
            double d18 = (d17 * d9) + d2;
            double d19 = (d18 * d8) + d9;
            double pow2 = Math.pow(2.718281828459045d, (-d17) * d8) * d19;
            double pow3 = Math.pow(2.718281828459045d, (-this.f2880do) * d8) * d19;
            double d20 = this.f2880do;
            cos = (Math.pow(2.718281828459045d, (-d20) * d8) * d18) + (pow3 * (-d20));
            d3 = pow2;
        } else {
            double d21 = 1.0d / this.f2883else;
            double d22 = this.f2880do;
            double d23 = ((d10 * d22 * d9) + d2) * d21;
            double sin = ((Math.sin(this.f2883else * d8) * d23) + (Math.cos(this.f2883else * d8) * d9)) * Math.pow(2.718281828459045d, (-d10) * d22 * d8);
            double d24 = this.f2880do;
            double d25 = this.f2886if;
            double d26 = (-d24) * sin * d25;
            double pow4 = Math.pow(2.718281828459045d, (-d25) * d24 * d8);
            double d27 = this.f2883else;
            double sin2 = Math.sin(d27 * d8) * (-d27) * d9;
            double d28 = this.f2883else;
            cos = (((Math.cos(d28 * d8) * d23 * d28) + sin2) * pow4) + d26;
            d3 = sin;
        }
        float f = (float) (d3 + this.f2885goto);
        AbstractC3519pf.Celse celse = this.f2881do;
        celse.f14972do = f;
        celse.f14973if = (float) cos;
        return celse;
    }

    public QE(float f) {
        this.f2880do = Math.sqrt(1500.0d);
        this.f2886if = 0.5d;
        this.f2882do = false;
        this.f2881do = new AbstractC3519pf.Celse();
        this.f2885goto = f;
    }
}
