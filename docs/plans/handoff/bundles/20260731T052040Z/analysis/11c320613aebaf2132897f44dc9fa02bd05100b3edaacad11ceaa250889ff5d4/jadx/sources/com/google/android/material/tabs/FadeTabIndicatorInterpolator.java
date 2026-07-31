package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.transition.Transition;
import com.google.android.material.animation.AnimationUtils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FadeTabIndicatorInterpolator extends Transition.AnonymousClass1 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FadeTabIndicatorInterpolator(int i) {
        super(25);
        this.$r8$classId = i;
    }

    @Override // androidx.transition.Transition.AnonymousClass1
    public final void updateIndicatorForOffset(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float sin;
        float cos;
        switch (this.$r8$classId) {
            case 0:
                if (f >= 0.5f) {
                    view = view2;
                }
                RectF calculateIndicatorWidthForTab = Transition.AnonymousClass1.calculateIndicatorWidthForTab(tabLayout, view);
                float lerp = f < 0.5f ? AnimationUtils.lerp(1.0f, 0.0f, 0.0f, 0.5f, f) : AnimationUtils.lerp(0.0f, 1.0f, 0.5f, 1.0f, f);
                drawable.setBounds((int) calculateIndicatorWidthForTab.left, drawable.getBounds().top, (int) calculateIndicatorWidthForTab.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (lerp * 255.0f));
                break;
            default:
                RectF calculateIndicatorWidthForTab2 = Transition.AnonymousClass1.calculateIndicatorWidthForTab(tabLayout, view);
                RectF calculateIndicatorWidthForTab3 = Transition.AnonymousClass1.calculateIndicatorWidthForTab(tabLayout, view2);
                if (calculateIndicatorWidthForTab2.left < calculateIndicatorWidthForTab3.left) {
                    double d = (f * 3.141592653589793d) / 2.0d;
                    sin = (float) (1.0d - Math.cos(d));
                    cos = (float) Math.sin(d);
                } else {
                    double d2 = (f * 3.141592653589793d) / 2.0d;
                    sin = (float) Math.sin(d2);
                    cos = (float) (1.0d - Math.cos(d2));
                }
                drawable.setBounds(AnimationUtils.lerp(sin, (int) calculateIndicatorWidthForTab2.left, (int) calculateIndicatorWidthForTab3.left), drawable.getBounds().top, AnimationUtils.lerp(cos, (int) calculateIndicatorWidthForTab2.right, (int) calculateIndicatorWidthForTab3.right), drawable.getBounds().bottom);
                break;
        }
    }
}
