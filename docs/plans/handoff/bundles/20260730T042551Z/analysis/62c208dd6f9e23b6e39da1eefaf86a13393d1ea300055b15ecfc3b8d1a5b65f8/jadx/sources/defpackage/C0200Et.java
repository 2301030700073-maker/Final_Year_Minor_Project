package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;

/* renamed from: Et, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0200Et {

    /* renamed from: do, reason: not valid java name */
    public int f916do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f917do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f918do;

    /* renamed from: if, reason: not valid java name */
    public int f919if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f920if;

    public C0200Et(long j) {
        this.f917do = 0L;
        this.f920if = 300L;
        this.f918do = null;
        this.f916do = 0;
        this.f919if = 1;
        this.f917do = j;
        this.f920if = 150L;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m508do(Animator animator) {
        animator.setStartDelay(this.f917do);
        animator.setDuration(this.f920if);
        animator.setInterpolator(m509if());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f916do);
            valueAnimator.setRepeatMode(this.f919if);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0200Et)) {
            return false;
        }
        C0200Et c0200Et = (C0200Et) obj;
        if (this.f917do == c0200Et.f917do && this.f920if == c0200Et.f920if && this.f916do == c0200Et.f916do && this.f919if == c0200Et.f919if) {
            return m509if().getClass().equals(c0200Et.m509if().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f917do;
        long j2 = this.f920if;
        return ((((m509if().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31) + this.f916do) * 31) + this.f919if;
    }

    /* renamed from: if, reason: not valid java name */
    public final TimeInterpolator m509if() {
        TimeInterpolator timeInterpolator = this.f918do;
        return timeInterpolator != null ? timeInterpolator : C2785g1.f13026do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(C0200Et.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f917do);
        sb.append(" duration: ");
        sb.append(this.f920if);
        sb.append(" interpolator: ");
        sb.append(m509if().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f916do);
        sb.append(" repeatMode: ");
        return V1.m2506this(sb, this.f919if, "}\n");
    }

    public C0200Et(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f917do = 0L;
        this.f920if = 300L;
        this.f918do = null;
        this.f916do = 0;
        this.f919if = 1;
        this.f917do = j;
        this.f920if = j2;
        this.f918do = timeInterpolator;
    }
}
