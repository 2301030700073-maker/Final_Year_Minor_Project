package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import com.google.android.material.progressindicator.DrawingDelegate;
import j$.util.Objects;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class LinearProgressIndicator extends BaseProgressIndicator {
    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        LinearDrawingDelegate linearDrawingDelegate = new LinearDrawingDelegate(linearProgressIndicatorSpec);
        linearDrawingDelegate.trackLength = 300.0f;
        linearDrawingDelegate.endPoints = new Pair(new DrawingDelegate.PathPoint(), new DrawingDelegate.PathPoint());
        Context context2 = getContext();
        BaseMenuWrapper linearIndeterminateContiguousAnimatorDelegate = linearProgressIndicatorSpec.indeterminateAnimationType == 0 ? new LinearIndeterminateContiguousAnimatorDelegate(linearProgressIndicatorSpec) : new LinearIndeterminateDisjointAnimatorDelegate(context2, linearProgressIndicatorSpec);
        IndeterminateDrawable indeterminateDrawable = new IndeterminateDrawable(context2, linearProgressIndicatorSpec);
        indeterminateDrawable.drawingDelegate = linearDrawingDelegate;
        indeterminateDrawable.animatorDelegate = linearIndeterminateContiguousAnimatorDelegate;
        linearIndeterminateContiguousAnimatorDelegate.mContext = indeterminateDrawable;
        setIndeterminateDrawable(indeterminateDrawable);
        setProgressDrawable(new DeterminateDrawable(getContext(), linearProgressIndicatorSpec, linearDrawingDelegate));
        this.initialized = true;
    }

    public int getIndeterminateAnimationType() {
        return this.spec.indeterminateAnimationType;
    }

    public int getIndicatorDirection() {
        return this.spec.indicatorDirection;
    }

    public int getTrackInnerCornerRadius() {
        return this.spec.trackInnerCornerRadius;
    }

    public Integer getTrackStopIndicatorPadding() {
        return this.spec.trackStopIndicatorPadding;
    }

    public int getTrackStopIndicatorSize() {
        return this.spec.trackStopIndicatorSize;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        boolean z2 = true;
        if (linearProgressIndicatorSpec.indicatorDirection != 1 && ((getLayoutDirection() != 1 || linearProgressIndicatorSpec.indicatorDirection != 2) && (getLayoutDirection() != 0 || linearProgressIndicatorSpec.indicatorDirection != 3))) {
            z2 = false;
        }
        linearProgressIndicatorSpec.drawHorizontallyInverse = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingRight = i - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i2 - (getPaddingBottom() + getPaddingTop());
        IndeterminateDrawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        DeterminateDrawable progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public void setIndeterminateAnimationType(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.indeterminateAnimationType == i) {
            return;
        }
        if (visibleToUser() && isIndeterminate()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
            return;
        }
        linearProgressIndicatorSpec.indeterminateAnimationType = i;
        linearProgressIndicatorSpec.validateSpec();
        if (i == 0) {
            IndeterminateDrawable indeterminateDrawable = getIndeterminateDrawable();
            LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate = new LinearIndeterminateContiguousAnimatorDelegate(linearProgressIndicatorSpec);
            indeterminateDrawable.animatorDelegate = linearIndeterminateContiguousAnimatorDelegate;
            linearIndeterminateContiguousAnimatorDelegate.mContext = indeterminateDrawable;
        } else {
            IndeterminateDrawable indeterminateDrawable2 = getIndeterminateDrawable();
            LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = new LinearIndeterminateDisjointAnimatorDelegate(getContext(), linearProgressIndicatorSpec);
            indeterminateDrawable2.animatorDelegate = linearIndeterminateDisjointAnimatorDelegate;
            linearIndeterminateDisjointAnimatorDelegate.mContext = indeterminateDrawable2;
        }
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().animatorDelegate.registerAnimatorsCompleteCallback(this.switchIndeterminateModeCallback);
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        this.spec.validateSpec();
    }

    public void setIndicatorDirection(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        linearProgressIndicatorSpec.indicatorDirection = i;
        boolean z = true;
        if (i != 1 && ((getLayoutDirection() != 1 || linearProgressIndicatorSpec.indicatorDirection != 2) && (getLayoutDirection() != 0 || i != 3))) {
            z = false;
        }
        linearProgressIndicatorSpec.drawHorizontallyInverse = z;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setProgressCompat(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec != null && linearProgressIndicatorSpec.indeterminateAnimationType == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        this.spec.validateSpec();
        invalidate();
    }

    public void setTrackInnerCornerRadius(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.trackInnerCornerRadius != i) {
            linearProgressIndicatorSpec.trackInnerCornerRadius = Math.round(Math.min(i, linearProgressIndicatorSpec.trackThickness / 2.0f));
            linearProgressIndicatorSpec.useRelativeTrackInnerCornerRadius = false;
            linearProgressIndicatorSpec.hasInnerCornerRadius = true;
            linearProgressIndicatorSpec.validateSpec();
            invalidate();
        }
    }

    public void setTrackInnerCornerRadiusFraction(float f) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.trackInnerCornerRadiusFraction != f) {
            linearProgressIndicatorSpec.trackInnerCornerRadiusFraction = Math.min(f, 0.5f);
            linearProgressIndicatorSpec.useRelativeTrackInnerCornerRadius = true;
            linearProgressIndicatorSpec.hasInnerCornerRadius = true;
            linearProgressIndicatorSpec.validateSpec();
            invalidate();
        }
    }

    public void setTrackStopIndicatorPadding(Integer num) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (Objects.equals(linearProgressIndicatorSpec.trackStopIndicatorPadding, num)) {
            return;
        }
        linearProgressIndicatorSpec.trackStopIndicatorPadding = num;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.trackStopIndicatorSize != i) {
            linearProgressIndicatorSpec.trackStopIndicatorSize = i;
            linearProgressIndicatorSpec.validateSpec();
            invalidate();
        }
    }
}
