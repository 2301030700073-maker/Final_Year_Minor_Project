package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.transformation.ExpandableTransformationBehavior;

/* renamed from: Tg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0516Tg extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ExpandableTransformationBehavior f3721do;

    public C0516Tg(ExpandableTransformationBehavior expandableTransformationBehavior) {
        this.f3721do = expandableTransformationBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f3721do.f11777do = null;
    }
}
