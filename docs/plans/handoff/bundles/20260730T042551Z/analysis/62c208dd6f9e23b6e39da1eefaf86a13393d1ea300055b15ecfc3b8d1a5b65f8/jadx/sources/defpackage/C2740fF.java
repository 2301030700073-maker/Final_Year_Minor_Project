package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;

/* renamed from: fF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2740fF {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cif> f12866do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name */
    public ValueAnimator f12864do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f12865do = new Cdo();

    /* renamed from: fF$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            C2740fF c2740fF = C2740fF.this;
            if (c2740fF.f12864do == animator) {
                c2740fF.f12864do = null;
            }
        }
    }

    /* renamed from: fF$if, reason: invalid class name */
    public static class Cif {
        public Cif(int[] iArr, ValueAnimator valueAnimator) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6645do(int[] iArr, ValueAnimator valueAnimator) {
        Cif cif = new Cif(iArr, valueAnimator);
        valueAnimator.addListener(this.f12865do);
        this.f12866do.add(cif);
    }
}
