package defpackage;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.util.WeakHashMap;

/* renamed from: x8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3961x8 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ CollapsingToolbarLayout f16521do;

    public C3961x8(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f16521do = collapsingToolbarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        ViewGroup viewGroup;
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        CollapsingToolbarLayout collapsingToolbarLayout = this.f16521do;
        if (intValue != collapsingToolbarLayout.f10434goto) {
            if (collapsingToolbarLayout.f10424do != null && (viewGroup = collapsingToolbarLayout.f10426do) != null) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                viewGroup.postInvalidateOnAnimation();
            }
            collapsingToolbarLayout.f10434goto = intValue;
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            collapsingToolbarLayout.postInvalidateOnAnimation();
        }
    }
}
