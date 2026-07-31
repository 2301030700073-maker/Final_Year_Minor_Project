package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.transition.ViewUtils;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.progressindicator.DrawingDelegate;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinearIndeterminateContiguousAnimatorDelegate extends BaseMenuWrapper {
    public static final ViewUtils.AnonymousClass1 ANIMATION_FRACTION = new ViewUtils.AnonymousClass1(Float.class, "animationFraction", 14);
    public float animationFraction;
    public ObjectAnimator animator;
    public final LinearProgressIndicatorSpec baseSpec;
    public boolean dirtyColors;
    public final FastOutSlowInInterpolator interpolator;
    public int newIndicatorColorIndex;

    public LinearIndeterminateContiguousAnimatorDelegate(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.newIndicatorColorIndex = 1;
        this.baseSpec = linearProgressIndicatorSpec;
        this.interpolator = new FastOutSlowInInterpolator(0);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void cancelAnimatorImmediately() {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void invalidateSpecValues() {
        maybeInitializeAnimators();
        this.animator.setDuration((long) (this.baseSpec.indeterminateAnimatorDurationScale * 333.0f));
        resetPropertiesForNewStart();
    }

    public final void maybeInitializeAnimators() {
        if (this.animator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, ANIMATION_FRACTION, RecyclerView.DECELERATION_RATE, 1.0f);
            this.animator = ofFloat;
            ofFloat.setDuration((long) (this.baseSpec.indeterminateAnimatorDurationScale * 333.0f));
            this.animator.setInterpolator(null);
            this.animator.setRepeatCount(-1);
            this.animator.addListener(new Transition.AnonymousClass3(8, this));
        }
    }

    public final void resetPropertiesForNewStart() {
        this.dirtyColors = true;
        this.newIndicatorColorIndex = 1;
        Iterator it = ((ArrayList) this.mMenuItems).iterator();
        while (it.hasNext()) {
            DrawingDelegate.ActiveIndicator activeIndicator = (DrawingDelegate.ActiveIndicator) it.next();
            LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.baseSpec;
            activeIndicator.color = linearProgressIndicatorSpec.indicatorColors[0];
            activeIndicator.gapSize = linearProgressIndicatorSpec.indicatorTrackGapSize / 2;
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void startAnimator() {
        maybeInitializeAnimators();
        resetPropertiesForNewStart();
        this.animator.start();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void requestCancelAnimatorAfterCurrentCycle() {
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void unregisterAnimatorsCompleteCallback() {
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void registerAnimatorsCompleteCallback(MaterialCheckBox.AnonymousClass1 anonymousClass1) {
    }
}
