package b.h.a;

import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public final class E {

    /* renamed from: a, reason: collision with root package name */
    public double f805a;

    /* renamed from: b, reason: collision with root package name */
    public double f806b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f807c;

    /* renamed from: d, reason: collision with root package name */
    public double f808d;
    public double e;
    public double f;
    public double g;
    public double h;
    public double i;
    public final u j;

    public E() {
        this.f805a = Math.sqrt(1500.0d);
        this.f806b = 0.5d;
        this.f807c = false;
        this.i = Double.MAX_VALUE;
        this.j = new u();
    }

    public E a(float f) {
        if (f < RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f806b = f;
        this.f807c = false;
        return this;
    }

    public E b(float f) {
        if (f <= RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f805a = Math.sqrt(f);
        this.f807c = false;
        return this;
    }

    public u c(double d2, double d3, long j) {
        double cos;
        double d4;
        if (!this.f807c) {
            if (this.i == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d5 = this.f806b;
            if (d5 > 1.0d) {
                double d6 = this.f805a;
                this.f = (Math.sqrt((d5 * d5) - 1.0d) * d6) + ((-d5) * d6);
                double d7 = this.f806b;
                double d8 = this.f805a;
                this.g = ((-d7) * d8) - (Math.sqrt((d7 * d7) - 1.0d) * d8);
            } else if (d5 >= 0.0d && d5 < 1.0d) {
                this.h = Math.sqrt(1.0d - (d5 * d5)) * this.f805a;
            }
            this.f807c = true;
        }
        double d9 = j / 1000.0d;
        double d10 = d2 - this.i;
        double d11 = this.f806b;
        if (d11 > 1.0d) {
            double d12 = this.g;
            double d13 = this.f;
            double d14 = d10 - (((d12 * d10) - d3) / (d12 - d13));
            double d15 = ((d10 * d12) - d3) / (d12 - d13);
            d4 = (Math.pow(2.718281828459045d, this.f * d9) * d15) + (Math.pow(2.718281828459045d, d12 * d9) * d14);
            double d16 = this.g;
            double pow = Math.pow(2.718281828459045d, d16 * d9) * d14 * d16;
            double d17 = this.f;
            cos = (Math.pow(2.718281828459045d, d17 * d9) * d15 * d17) + pow;
        } else if (d11 == 1.0d) {
            double d18 = this.f805a;
            double d19 = (d18 * d10) + d3;
            double d20 = (d19 * d9) + d10;
            double pow2 = Math.pow(2.718281828459045d, (-d18) * d9) * d20;
            double pow3 = Math.pow(2.718281828459045d, (-this.f805a) * d9) * d20;
            double d21 = this.f805a;
            cos = (Math.pow(2.718281828459045d, (-d21) * d9) * d19) + (pow3 * (-d21));
            d4 = pow2;
        } else {
            double d22 = 1.0d / this.h;
            double d23 = this.f805a;
            double d24 = ((d11 * d23 * d10) + d3) * d22;
            double sin = ((Math.sin(this.h * d9) * d24) + (Math.cos(this.h * d9) * d10)) * Math.pow(2.718281828459045d, (-d11) * d23 * d9);
            double d25 = this.f805a;
            double d26 = this.f806b;
            double d27 = (-d25) * sin * d26;
            double pow4 = Math.pow(2.718281828459045d, (-d26) * d25 * d9);
            double d28 = this.h;
            double sin2 = Math.sin(d28 * d9) * (-d28) * d10;
            double d29 = this.h;
            cos = (((Math.cos(d29 * d9) * d24 * d29) + sin2) * pow4) + d27;
            d4 = sin;
        }
        u uVar = this.j;
        uVar.f818a = (float) (d4 + this.i);
        uVar.f819b = (float) cos;
        return uVar;
    }

    public E(float f) {
        this.f805a = Math.sqrt(1500.0d);
        this.f806b = 0.5d;
        this.f807c = false;
        this.i = Double.MAX_VALUE;
        this.j = new u();
        this.i = f;
    }
}
