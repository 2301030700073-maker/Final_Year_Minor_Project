package com.google.android.material.progressindicator;

import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import com.google.android.material.R$styleable;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseProgressIndicator extends ProgressBar {
    public AnimatorDurationScaleProvider animatorDurationScaleProvider;
    public final AnonymousClass1 delayedHide;
    public final AnonymousClass1 delayedShow;
    public final BaseProgressIndicator$$ExternalSyntheticLambda0 hideAfterMaxProgressListener;
    public final MaterialCheckBox.AnonymousClass1 hideAnimationCallback;
    public boolean initialized;
    public boolean isIndeterminateModeChangeRequested;
    public final boolean isParentDoneInitializing;
    public long lastShowStartTime;
    public final int minHideDelay;
    public final LinearProgressIndicatorSpec spec;
    public int storedProgress;
    public final MaterialCheckBox.AnonymousClass1 switchIndeterminateModeCallback;
    public int visibilityAfterHide;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.progressindicator.BaseProgressIndicator$1, reason: invalid class name */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ BaseProgressIndicator this$0;

        public /* synthetic */ AnonymousClass1(BaseProgressIndicator baseProgressIndicator, int i) {
            this.$r8$classId = i;
            this.this$0 = baseProgressIndicator;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            BaseProgressIndicator baseProgressIndicator = this.this$0;
            switch (i) {
                case 0:
                    if (baseProgressIndicator.minHideDelay > 0) {
                        baseProgressIndicator.lastShowStartTime = SystemClock.uptimeMillis();
                    }
                    baseProgressIndicator.setVisibility(0);
                    break;
                default:
                    ((DrawableWithAnimatedVisibilityChange) baseProgressIndicator.getCurrentDrawable()).setVisible(false, false, true);
                    if ((baseProgressIndicator.getProgressDrawable() == null || !baseProgressIndicator.getProgressDrawable().isVisible()) && (baseProgressIndicator.getIndeterminateDrawable() == null || !baseProgressIndicator.getIndeterminateDrawable().isVisible())) {
                        baseProgressIndicator.setVisibility(4);
                    }
                    baseProgressIndicator.lastShowStartTime = -1L;
                    break;
            }
        }
    }

    public BaseProgressIndicator(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_ProgressIndicator), attributeSet, R.attr.linearProgressIndicatorStyle);
        this.lastShowStartTime = -1L;
        this.isIndeterminateModeChangeRequested = false;
        this.visibilityAfterHide = 4;
        this.hideAfterMaxProgressListener = new BaseProgressIndicator$$ExternalSyntheticLambda0(this);
        this.delayedShow = new AnonymousClass1(this, 0);
        this.delayedHide = new AnonymousClass1(this, 1);
        this.switchIndeterminateModeCallback = new MaterialCheckBox.AnonymousClass1(this, 1);
        this.hideAnimationCallback = new MaterialCheckBox.AnonymousClass1(this, 2);
        Context context2 = getContext();
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = new LinearProgressIndicatorSpec();
        linearProgressIndicatorSpec.indicatorColors = new int[0];
        int dimensionPixelSize = context2.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        ViewUtils.checkCompatibleTheme(context2, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int[] iArr = R$styleable.BaseProgressIndicator;
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        linearProgressIndicatorSpec.trackThickness = OperationKt.getDimensionPixelSize(context2, obtainStyledAttributes, 10, dimensionPixelSize);
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null) {
            int i = peekValue.type;
            if (i == 5) {
                linearProgressIndicatorSpec.trackCornerRadius = Math.min(TypedValue.complexToDimensionPixelSize(peekValue.data, obtainStyledAttributes.getResources().getDisplayMetrics()), linearProgressIndicatorSpec.trackThickness / 2);
                linearProgressIndicatorSpec.useRelativeTrackCornerRadius = false;
            } else if (i == 6) {
                linearProgressIndicatorSpec.trackCornerRadiusFraction = Math.min(peekValue.getFraction(1.0f, 1.0f), 0.5f);
                linearProgressIndicatorSpec.useRelativeTrackCornerRadius = true;
            }
        }
        linearProgressIndicatorSpec.showAnimationBehavior = obtainStyledAttributes.getInt(6, 0);
        linearProgressIndicatorSpec.hideAnimationBehavior = obtainStyledAttributes.getInt(1, 0);
        linearProgressIndicatorSpec.indicatorTrackGapSize = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        int abs = Math.abs(obtainStyledAttributes.getDimensionPixelSize(15, 0));
        linearProgressIndicatorSpec.wavelengthDeterminate = Math.abs(obtainStyledAttributes.getDimensionPixelSize(16, abs));
        linearProgressIndicatorSpec.wavelengthIndeterminate = Math.abs(obtainStyledAttributes.getDimensionPixelSize(17, abs));
        linearProgressIndicatorSpec.waveAmplitude = Math.abs(obtainStyledAttributes.getDimensionPixelSize(11, 0));
        linearProgressIndicatorSpec.waveSpeed = obtainStyledAttributes.getDimensionPixelSize(14, 0);
        linearProgressIndicatorSpec.indeterminateAnimatorDurationScale = obtainStyledAttributes.getFloat(2, 1.0f);
        linearProgressIndicatorSpec.waveAmplitudeRampProgressMin = obtainStyledAttributes.getFloat(13, 0.1f);
        linearProgressIndicatorSpec.waveAmplitudeRampProgressMax = obtainStyledAttributes.getFloat(12, 0.9f);
        if (!obtainStyledAttributes.hasValue(3)) {
            Integer colorOrNull = UStringsKt.getColorOrNull(context2, R.attr.colorPrimary);
            linearProgressIndicatorSpec.indicatorColors = new int[]{colorOrNull != null ? colorOrNull.intValue() : -1};
        } else if (obtainStyledAttributes.peekValue(3).type != 1) {
            linearProgressIndicatorSpec.indicatorColors = new int[]{obtainStyledAttributes.getColor(3, -1)};
        } else {
            int[] intArray = context2.getResources().getIntArray(obtainStyledAttributes.getResourceId(3, -1));
            linearProgressIndicatorSpec.indicatorColors = intArray;
            if (intArray.length == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("indicatorColors cannot be empty when indicatorColor is not used.");
                throw null;
            }
        }
        if (obtainStyledAttributes.hasValue(8)) {
            linearProgressIndicatorSpec.trackColor = obtainStyledAttributes.getColor(8, -1);
        } else {
            linearProgressIndicatorSpec.trackColor = linearProgressIndicatorSpec.indicatorColors[0];
            TypedArray obtainStyledAttributes2 = context2.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
            float f = obtainStyledAttributes2.getFloat(0, 0.2f);
            obtainStyledAttributes2.recycle();
            linearProgressIndicatorSpec.trackColor = UStringsKt.compositeARGBWithAlpha(linearProgressIndicatorSpec.trackColor, (int) (f * 255.0f));
        }
        obtainStyledAttributes.recycle();
        ViewUtils.checkCompatibleTheme(context2, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int[] iArr2 = R$styleable.LinearProgressIndicator;
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr2, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr2, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        linearProgressIndicatorSpec.indeterminateAnimationType = obtainStyledAttributes3.getInt(0, 1);
        linearProgressIndicatorSpec.indicatorDirection = obtainStyledAttributes3.getInt(1, 0);
        linearProgressIndicatorSpec.trackStopIndicatorSize = obtainStyledAttributes3.getDimensionPixelSize(4, 0);
        if (obtainStyledAttributes3.hasValue(3)) {
            linearProgressIndicatorSpec.trackStopIndicatorPadding = Integer.valueOf(obtainStyledAttributes3.getDimensionPixelSize(3, 0));
        }
        TypedValue peekValue2 = obtainStyledAttributes3.peekValue(2);
        if (peekValue2 != null) {
            int i2 = peekValue2.type;
            if (i2 == 5) {
                linearProgressIndicatorSpec.trackInnerCornerRadius = Math.min(TypedValue.complexToDimensionPixelSize(peekValue2.data, obtainStyledAttributes3.getResources().getDisplayMetrics()), linearProgressIndicatorSpec.trackThickness / 2);
                linearProgressIndicatorSpec.useRelativeTrackInnerCornerRadius = false;
                linearProgressIndicatorSpec.hasInnerCornerRadius = true;
            } else if (i2 == 6) {
                linearProgressIndicatorSpec.trackInnerCornerRadiusFraction = Math.min(peekValue2.getFraction(1.0f, 1.0f), 0.5f);
                linearProgressIndicatorSpec.useRelativeTrackInnerCornerRadius = true;
                linearProgressIndicatorSpec.hasInnerCornerRadius = true;
            }
        }
        obtainStyledAttributes3.recycle();
        linearProgressIndicatorSpec.validateSpec();
        linearProgressIndicatorSpec.drawHorizontallyInverse = linearProgressIndicatorSpec.indicatorDirection == 1;
        this.spec = linearProgressIndicatorSpec;
        ViewUtils.checkCompatibleTheme(context2, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        TypedArray obtainStyledAttributes4 = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        obtainStyledAttributes4.getInt(7, -1);
        this.minHideDelay = Math.min(obtainStyledAttributes4.getInt(5, -1), 1000);
        obtainStyledAttributes4.recycle();
        this.animatorDurationScaleProvider = new AnimatorDurationScaleProvider();
        this.isParentDoneInitializing = true;
    }

    private DrawingDelegate getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().drawingDelegate;
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().drawingDelegate;
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.spec.hideAnimationBehavior;
    }

    @Override // android.widget.ProgressBar
    public IndeterminateDrawable getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    public int[] getIndicatorColor() {
        return this.spec.indicatorColors;
    }

    public int getIndicatorTrackGapSize() {
        return this.spec.indicatorTrackGapSize;
    }

    @Override // android.widget.ProgressBar
    public DeterminateDrawable getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }

    public int getShowAnimationBehavior() {
        return this.spec.showAnimationBehavior;
    }

    public int getTrackColor() {
        return this.spec.trackColor;
    }

    public int getTrackCornerRadius() {
        return this.spec.trackCornerRadius;
    }

    public float getTrackCornerRadiusFraction() {
        return this.spec.trackCornerRadiusFraction;
    }

    public int getTrackThickness() {
        return this.spec.trackThickness;
    }

    public int getWaveAmplitude() {
        return this.spec.waveAmplitude;
    }

    public int getWaveSpeed() {
        return this.spec.waveSpeed;
    }

    public int getWavelengthDeterminate() {
        return this.spec.wavelengthDeterminate;
    }

    public int getWavelengthIndeterminate() {
        return this.spec.wavelengthIndeterminate;
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().animatorDelegate.registerAnimatorsCompleteCallback(this.switchIndeterminateModeCallback);
        }
        DeterminateDrawable progressDrawable = getProgressDrawable();
        MaterialCheckBox.AnonymousClass1 anonymousClass1 = this.hideAnimationCallback;
        if (progressDrawable != null) {
            DeterminateDrawable progressDrawable2 = getProgressDrawable();
            ArrayList arrayList = progressDrawable2.animationCallbacks;
            if (arrayList == null) {
                arrayList = new ArrayList();
                progressDrawable2.animationCallbacks = arrayList;
            }
            if (!arrayList.contains(anonymousClass1)) {
                progressDrawable2.animationCallbacks.add(anonymousClass1);
            }
        }
        if (getIndeterminateDrawable() != null) {
            IndeterminateDrawable indeterminateDrawable = getIndeterminateDrawable();
            ArrayList arrayList2 = indeterminateDrawable.animationCallbacks;
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                indeterminateDrawable.animationCallbacks = arrayList2;
            }
            if (!arrayList2.contains(anonymousClass1)) {
                indeterminateDrawable.animationCallbacks.add(anonymousClass1);
            }
        }
        if (visibleToUser()) {
            if (this.minHideDelay > 0) {
                this.lastShowStartTime = SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.delayedHide);
        removeCallbacks(this.delayedShow);
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).setVisible(false, false, false);
        IndeterminateDrawable indeterminateDrawable = getIndeterminateDrawable();
        MaterialCheckBox.AnonymousClass1 anonymousClass1 = this.hideAnimationCallback;
        if (indeterminateDrawable != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(anonymousClass1);
            getIndeterminateDrawable().animatorDelegate.unregisterAnimatorsCompleteCallback();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(anonymousClass1);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            int save = canvas.save();
            if (getPaddingLeft() == 0) {
                if (getPaddingTop() != 0) {
                }
                if (getPaddingRight() == 0 || getPaddingBottom() != 0) {
                    canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
                }
                getCurrentDrawable().draw(canvas);
                canvas.restoreToCount(save);
            }
            canvas.translate(getPaddingLeft(), getPaddingTop());
            if (getPaddingRight() == 0) {
            }
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(save);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getCurrentDrawingDelegate().invalidateCachedPaths();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        try {
            DrawingDelegate currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            setMeasuredDimension(View.getDefaultSize(getSuggestedMinimumWidth(), i), currentDrawingDelegate.getPreferredHeight() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i2) : currentDrawingDelegate.getPreferredHeight() + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        boolean z = i == 0;
        if (this.isParentDoneInitializing) {
            ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).setVisible(visibleToUser(), false, z);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.isParentDoneInitializing) {
            ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).setVisible(visibleToUser(), false, false);
        }
    }

    public void setAnimatorDurationScaleProvider(AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.animatorDurationScaleProvider = animatorDurationScaleProvider;
        if (getProgressDrawable() != null) {
            getProgressDrawable().animatorDurationScaleProvider = animatorDurationScaleProvider;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().animatorDurationScaleProvider = animatorDurationScaleProvider;
        }
    }

    public void setHideAfterMaxProgress(boolean z) {
        if (getProgressDrawable() == null) {
            return;
        }
        BaseProgressIndicator$$ExternalSyntheticLambda0 baseProgressIndicator$$ExternalSyntheticLambda0 = this.hideAfterMaxProgressListener;
        if (z) {
            ArrayList arrayList = getProgressDrawable().springAnimation.mEndListeners;
            if (arrayList.contains(baseProgressIndicator$$ExternalSyntheticLambda0)) {
                return;
            }
            arrayList.add(baseProgressIndicator$$ExternalSyntheticLambda0);
            return;
        }
        ArrayList arrayList2 = getProgressDrawable().springAnimation.mEndListeners;
        int indexOf = arrayList2.indexOf(baseProgressIndicator$$ExternalSyntheticLambda0);
        if (indexOf >= 0) {
            arrayList2.set(indexOf, null);
        }
    }

    public void setHideAnimationBehavior(int i) {
        this.spec.hideAnimationBehavior = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        try {
            if (z == isIndeterminate()) {
                return;
            }
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange != null) {
                drawableWithAnimatedVisibilityChange.setVisible(false, false, false);
            }
            super.setIndeterminate(z);
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange2 = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange2 != null) {
                drawableWithAnimatedVisibilityChange2.setVisible(visibleToUser(), false, false);
            }
            if ((drawableWithAnimatedVisibilityChange2 instanceof IndeterminateDrawable) && visibleToUser()) {
                ((IndeterminateDrawable) drawableWithAnimatedVisibilityChange2).animatorDelegate.startAnimator();
            }
            this.isIndeterminateModeChangeRequested = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setIndeterminateAnimatorDurationScale(float f) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.indeterminateAnimatorDurationScale != f) {
            linearProgressIndicatorSpec.indeterminateAnimatorDurationScale = f;
            getIndeterminateDrawable().animatorDelegate.invalidateSpecValues();
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable instanceof IndeterminateDrawable) {
            ((DrawableWithAnimatedVisibilityChange) drawable).setVisible(false, false, false);
            super.setIndeterminateDrawable(drawable);
        } else if (this.initialized) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot set framework drawable as indeterminate drawable.");
        } else {
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            Integer colorOrNull = UStringsKt.getColorOrNull(getContext(), R.attr.colorPrimary);
            iArr = new int[]{colorOrNull != null ? colorOrNull.intValue() : -1};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.spec.indicatorColors = iArr;
        getIndeterminateDrawable().animatorDelegate.invalidateSpecValues();
        invalidate();
    }

    public void setIndicatorTrackGapSize(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.indicatorTrackGapSize != i) {
            linearProgressIndicatorSpec.indicatorTrackGapSize = i;
            linearProgressIndicatorSpec.validateSpec();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i);
    }

    public void setProgressCompat(int i) {
        if (!isIndeterminate()) {
            super.setProgress(i);
            if (getProgressDrawable() != null) {
                getProgressDrawable().jumpToCurrentState();
                return;
            }
            return;
        }
        if (getProgressDrawable() != null) {
            this.storedProgress = i;
            this.isIndeterminateModeChangeRequested = true;
            if (getIndeterminateDrawable().isVisible()) {
                AnimatorDurationScaleProvider animatorDurationScaleProvider = this.animatorDurationScaleProvider;
                ContentResolver contentResolver = getContext().getContentResolver();
                animatorDurationScaleProvider.getClass();
                if (Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) != RecyclerView.DECELERATION_RATE) {
                    getIndeterminateDrawable().animatorDelegate.requestCancelAnimatorAfterCurrentCycle();
                    return;
                }
            }
            this.switchIndeterminateModeCallback.onAnimationEnd(getIndeterminateDrawable());
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable instanceof DeterminateDrawable) {
            DeterminateDrawable determinateDrawable = (DeterminateDrawable) drawable;
            determinateDrawable.setVisible(false, false, false);
            super.setProgressDrawable(determinateDrawable);
            determinateDrawable.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
            return;
        }
        if (this.initialized) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot set framework drawable as progress drawable.");
        } else {
            super.setProgressDrawable(drawable);
        }
    }

    public void setShowAnimationBehavior(int i) {
        this.spec.showAnimationBehavior = i;
        invalidate();
    }

    public void setTrackColor(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.trackColor != i) {
            linearProgressIndicatorSpec.trackColor = i;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.trackCornerRadius != i) {
            linearProgressIndicatorSpec.trackCornerRadius = Math.min(i, linearProgressIndicatorSpec.trackThickness / 2);
            linearProgressIndicatorSpec.useRelativeTrackCornerRadius = false;
            invalidate();
        }
    }

    public void setTrackCornerRadiusFraction(float f) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.trackCornerRadiusFraction != f) {
            linearProgressIndicatorSpec.trackCornerRadiusFraction = Math.min(f, 0.5f);
            linearProgressIndicatorSpec.useRelativeTrackCornerRadius = true;
            invalidate();
        }
    }

    public void setTrackThickness(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.trackThickness != i) {
            linearProgressIndicatorSpec.trackThickness = i;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i) {
        if (i == 0 || i == 4 || i == 8) {
            this.visibilityAfterHide = i;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
    }

    public void setWaveAmplitude(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.waveAmplitude != i) {
            linearProgressIndicatorSpec.waveAmplitude = Math.abs(i);
            requestLayout();
        }
    }

    public void setWaveAmplitudeRampProgressMax(float f) {
        DeterminateDrawable progressDrawable = getProgressDrawable();
        progressDrawable.baseSpec.waveAmplitudeRampProgressMax = f;
        progressDrawable.invalidateSelf();
        invalidate();
    }

    public void setWaveAmplitudeRampProgressMin(float f) {
        DeterminateDrawable progressDrawable = getProgressDrawable();
        progressDrawable.baseSpec.waveAmplitudeRampProgressMin = f;
        progressDrawable.invalidateSelf();
        invalidate();
    }

    public void setWaveSpeed(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        linearProgressIndicatorSpec.waveSpeed = i;
        DeterminateDrawable progressDrawable = getProgressDrawable();
        boolean z = linearProgressIndicatorSpec.waveSpeed != 0;
        ValueAnimator valueAnimator = progressDrawable.phaseAnimator;
        if (z && !valueAnimator.isRunning()) {
            valueAnimator.start();
        } else {
            if (z || !valueAnimator.isRunning()) {
                return;
            }
            valueAnimator.cancel();
        }
    }

    public void setWavelength(int i) {
        setWavelengthDeterminate(i);
        setWavelengthIndeterminate(i);
    }

    public void setWavelengthDeterminate(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.wavelengthDeterminate != i) {
            linearProgressIndicatorSpec.wavelengthDeterminate = Math.abs(i);
            if (isIndeterminate()) {
                return;
            }
            requestLayout();
        }
    }

    public void setWavelengthIndeterminate(int i) {
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.spec;
        if (linearProgressIndicatorSpec.wavelengthIndeterminate != i) {
            linearProgressIndicatorSpec.wavelengthIndeterminate = Math.abs(i);
            if (isIndeterminate()) {
                requestLayout();
            }
        }
    }

    public final boolean visibleToUser() {
        if (!isAttachedToWindow() || getWindowVisibility() != 0) {
            return false;
        }
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }
}
