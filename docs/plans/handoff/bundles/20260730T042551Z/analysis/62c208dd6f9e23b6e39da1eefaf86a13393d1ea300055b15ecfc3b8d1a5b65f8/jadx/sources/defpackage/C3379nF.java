package defpackage;

/* renamed from: nF, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3379nF extends AbstractInterpolatorC4063yt {

    /* renamed from: break, reason: not valid java name */
    public float f14476break;

    /* renamed from: case, reason: not valid java name */
    public float f14477case;

    /* renamed from: catch, reason: not valid java name */
    public float f14478catch;

    /* renamed from: do, reason: not valid java name */
    public float f14479do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f14480do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14481do = false;

    /* renamed from: else, reason: not valid java name */
    public float f14482else;

    /* renamed from: for, reason: not valid java name */
    public float f14483for;

    /* renamed from: goto, reason: not valid java name */
    public float f14484goto;

    /* renamed from: if, reason: not valid java name */
    public float f14485if;

    /* renamed from: new, reason: not valid java name */
    public float f14486new;

    /* renamed from: this, reason: not valid java name */
    public float f14487this;

    /* renamed from: try, reason: not valid java name */
    public float f14488try;

    @Override // defpackage.AbstractInterpolatorC4063yt
    /* renamed from: do */
    public final float mo3598do() {
        return this.f14481do ? -m7559for(this.f14478catch) : m7559for(this.f14478catch);
    }

    /* renamed from: for, reason: not valid java name */
    public final float m7559for(float f) {
        float f2;
        float f3;
        float f4 = this.f14486new;
        if (f <= f4) {
            f2 = this.f14479do;
            f3 = this.f14485if;
        } else {
            int i = this.f14480do;
            if (i == 1) {
                return 0.0f;
            }
            f -= f4;
            f4 = this.f14488try;
            if (f >= f4) {
                if (i == 2) {
                    return this.f14484goto;
                }
                float f5 = f - f4;
                float f6 = this.f14477case;
                if (f5 >= f6) {
                    return this.f14487this;
                }
                float f7 = this.f14483for;
                return f7 - ((f5 * f7) / f6);
            }
            f2 = this.f14485if;
            f3 = this.f14483for;
        }
        return (((f3 - f2) * f) / f4) + f2;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2;
        float f3 = this.f14486new;
        if (f <= f3) {
            float f4 = this.f14479do;
            f2 = ((((this.f14485if - f4) * f) * f) / (f3 * 2.0f)) + (f4 * f);
        } else {
            int i = this.f14480do;
            if (i == 1) {
                f2 = this.f14482else;
            } else {
                float f5 = f - f3;
                float f6 = this.f14488try;
                if (f5 < f6) {
                    float f7 = this.f14482else;
                    float f8 = this.f14485if;
                    f2 = ((((this.f14483for - f8) * f5) * f5) / (f6 * 2.0f)) + (f8 * f5) + f7;
                } else if (i == 2) {
                    f2 = this.f14484goto;
                } else {
                    float f9 = f5 - f6;
                    float f10 = this.f14477case;
                    if (f9 < f10) {
                        float f11 = this.f14484goto;
                        float f12 = this.f14483for * f9;
                        f2 = (f11 + f12) - ((f12 * f9) / (f10 * 2.0f));
                    } else {
                        f2 = this.f14487this;
                    }
                }
            }
        }
        this.f14478catch = f;
        return this.f14481do ? this.f14476break - f2 : this.f14476break + f2;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7560if(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f14476break = f;
        boolean z = f > f2;
        this.f14481do = z;
        if (z) {
            m7561new(-f3, f - f2, f5, f6, f4);
        } else {
            m7561new(f3, f2 - f, f5, f6, f4);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m7561new(float f, float f2, float f3, float f4, float f5) {
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.f14479do = f;
        float f6 = f / f3;
        float f7 = (f6 * f) / 2.0f;
        if (f < 0.0f) {
            float sqrt = (float) Math.sqrt((f2 - ((((-f) / f3) * f) / 2.0f)) * f3);
            if (sqrt < f4) {
                this.f14480do = 2;
                this.f14479do = f;
                this.f14485if = sqrt;
                this.f14483for = 0.0f;
                float f8 = (sqrt - f) / f3;
                this.f14486new = f8;
                this.f14488try = sqrt / f3;
                this.f14482else = ((f + sqrt) * f8) / 2.0f;
                this.f14484goto = f2;
                this.f14487this = f2;
                return;
            }
            this.f14480do = 3;
            this.f14479do = f;
            this.f14485if = f4;
            this.f14483for = f4;
            float f9 = (f4 - f) / f3;
            this.f14486new = f9;
            float f10 = f4 / f3;
            this.f14477case = f10;
            float f11 = ((f + f4) * f9) / 2.0f;
            float f12 = (f10 * f4) / 2.0f;
            this.f14488try = ((f2 - f11) - f12) / f4;
            this.f14482else = f11;
            this.f14484goto = f2 - f12;
            this.f14487this = f2;
            return;
        }
        if (f7 >= f2) {
            this.f14480do = 1;
            this.f14479do = f;
            this.f14485if = 0.0f;
            this.f14482else = f2;
            this.f14486new = (2.0f * f2) / f;
            return;
        }
        float f13 = f2 - f7;
        float f14 = f13 / f;
        if (f14 + f6 < f5) {
            this.f14480do = 2;
            this.f14479do = f;
            this.f14485if = f;
            this.f14483for = 0.0f;
            this.f14482else = f13;
            this.f14484goto = f2;
            this.f14486new = f14;
            this.f14488try = f6;
            return;
        }
        float sqrt2 = (float) Math.sqrt(((f * f) / 2.0f) + (f3 * f2));
        float f15 = (sqrt2 - f) / f3;
        this.f14486new = f15;
        float f16 = sqrt2 / f3;
        this.f14488try = f16;
        if (sqrt2 < f4) {
            this.f14480do = 2;
            this.f14479do = f;
            this.f14485if = sqrt2;
            this.f14483for = 0.0f;
            this.f14486new = f15;
            this.f14488try = f16;
            this.f14482else = ((f + sqrt2) * f15) / 2.0f;
            this.f14484goto = f2;
            return;
        }
        this.f14480do = 3;
        this.f14479do = f;
        this.f14485if = f4;
        this.f14483for = f4;
        float f17 = (f4 - f) / f3;
        this.f14486new = f17;
        float f18 = f4 / f3;
        this.f14477case = f18;
        float f19 = ((f + f4) * f17) / 2.0f;
        float f20 = (f18 * f4) / 2.0f;
        this.f14488try = ((f2 - f19) - f20) / f4;
        this.f14482else = f19;
        this.f14484goto = f2 - f20;
        this.f14487this = f2;
    }
}
