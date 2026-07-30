package com.android.launcher3.anim;

import android.content.Context;
import b.h.a.A;
import b.h.a.C;
import b.h.a.D;
import b.h.a.E;
import b.h.a.v;
import b.h.a.y;
import com.android.launcher3.anim.FlingSpringAnim;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.ResourceProvider;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class FlingSpringAnim {
    public final A mFlingAnim;
    public final boolean mSkipFlingAnim;
    public D mSpringAnim;
    public float mTargetPosition;

    public FlingSpringAnim(final Object obj, Context context, final C c2, float f, float f2, float f3, float f4, float f5, float f6, final float f7, final v vVar) {
        ResourceProvider provider = DynamicResource.provider(context);
        final float f8 = provider.getFloat(R.dimen.swipe_up_rect_xy_damping_ratio);
        final float f9 = provider.getFloat(R.dimen.swipe_up_rect_xy_stiffness);
        float f10 = provider.getFloat(R.dimen.swipe_up_rect_xy_fling_friction);
        A a2 = new A(obj, c2);
        if (f10 <= RecentsState.NO_OFFSET) {
            throw new IllegalArgumentException("Friction must be positive");
        }
        a2.s.f824a = f10 * (-4.2f);
        a2.f(f4);
        a2.f820a = f3;
        a2.h = f5;
        a2.g = f6;
        this.mFlingAnim = a2;
        this.mTargetPosition = f2;
        this.mSkipFlingAnim = (f <= f5 && f3 < RecentsState.NO_OFFSET) || (f >= f6 && f3 > RecentsState.NO_OFFSET);
        A a3 = this.mFlingAnim;
        v vVar2 = new v() { // from class: c.a.a.E0.e
            @Override // b.h.a.v
            public final void onAnimationEnd(y yVar, boolean z, float f11, float f12) {
                FlingSpringAnim flingSpringAnim = FlingSpringAnim.this;
                Object obj2 = obj;
                C c3 = c2;
                float f13 = f7;
                float f14 = f9;
                float f15 = f8;
                v vVar3 = vVar;
                Objects.requireNonNull(flingSpringAnim);
                D d2 = new D(obj2, c3);
                d2.f821b = f11;
                d2.f822c = true;
                d2.f820a = f12 * f13;
                E e = new E(flingSpringAnim.mTargetPosition);
                e.b(f14);
                e.a(f15);
                d2.s = e;
                flingSpringAnim.mSpringAnim = d2;
                if (!d2.k.contains(vVar3)) {
                    d2.k.add(vVar3);
                }
                flingSpringAnim.mSpringAnim.k(flingSpringAnim.mTargetPosition);
            }
        };
        if (a3.k.contains(vVar2)) {
            return;
        }
        a3.k.add(vVar2);
    }

    public void updatePosition(float f, float f2) {
        A a2 = this.mFlingAnim;
        a2.h = Math.min(f, f2);
        a2.g = Math.max(f, f2);
        this.mTargetPosition = f2;
        D d2 = this.mSpringAnim;
        if (d2 != null) {
            d2.k(f2);
        }
    }
}
