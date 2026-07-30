package defpackage;

import android.animation.ValueAnimator;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes3.dex */
public final class BG implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TabLayout f221do;

    public BG(TabLayout tabLayout) {
        this.f221do = tabLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f221do.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
