package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.AutoMigration_14_15;
import com.google.android.material.animation.AnimationUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FadeTabIndicatorInterpolator extends AutoMigration_14_15 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FadeTabIndicatorInterpolator(int i) {
        super(24);
        this.$r8$classId = i;
    }

    @Override // androidx.work.impl.AutoMigration_14_15
    public final void updateIndicatorForOffset(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float sin;
        float cos;
        switch (this.$r8$classId) {
            case 0:
                if (f >= 0.5f) {
                    view = view2;
                }
                RectF calculateIndicatorWidthForTab = AutoMigration_14_15.calculateIndicatorWidthForTab(tabLayout, view);
                float lerp = f < 0.5f ? AnimationUtils.lerp(1.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 0.5f, f) : AnimationUtils.lerp(RecyclerView.DECELERATION_RATE, 1.0f, 0.5f, 1.0f, f);
                drawable.setBounds((int) calculateIndicatorWidthForTab.left, drawable.getBounds().top, (int) calculateIndicatorWidthForTab.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (lerp * 255.0f));
                break;
            default:
                RectF calculateIndicatorWidthForTab2 = AutoMigration_14_15.calculateIndicatorWidthForTab(tabLayout, view);
                RectF calculateIndicatorWidthForTab3 = AutoMigration_14_15.calculateIndicatorWidthForTab(tabLayout, view2);
                if (calculateIndicatorWidthForTab2.left < calculateIndicatorWidthForTab3.left) {
                    double d = (f * 3.141592653589793d) / 2.0d;
                    sin = (float) (1.0d - Math.cos(d));
                    cos = (float) Math.sin(d);
                } else {
                    double d2 = (f * 3.141592653589793d) / 2.0d;
                    sin = (float) Math.sin(d2);
                    cos = (float) (1.0d - Math.cos(d2));
                }
                drawable.setBounds(AnimationUtils.lerp((int) calculateIndicatorWidthForTab2.left, sin, (int) calculateIndicatorWidthForTab3.left), drawable.getBounds().top, AnimationUtils.lerp((int) calculateIndicatorWidthForTab2.right, cos, (int) calculateIndicatorWidthForTab3.right), drawable.getBounds().bottom);
                break;
        }
    }
}
