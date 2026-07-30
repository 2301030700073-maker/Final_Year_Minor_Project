package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public abstract class AbstractSlideInView extends AbstractFloatingView implements SingleAxisSwipeDetector.Listener {
    public static final Property TRANSLATION_SHIFT = new Property(Float.class, "translationShift") { // from class: com.android.launcher3.views.AbstractSlideInView.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((AbstractSlideInView) obj).mTranslationShift);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ((AbstractSlideInView) obj).setTranslationShift(((Float) obj2).floatValue());
        }
    };
    public final View mColorScrim;
    public View mContent;
    public final Launcher mLauncher;
    public boolean mNoIntercept;
    public final ObjectAnimator mOpenCloseAnimator;
    public Interpolator mScrollInterpolator;
    public final SingleAxisSwipeDetector mSwipeDetector;
    public float mTranslationShift;

    public AbstractSlideInView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        View view;
        this.mTranslationShift = 1.0f;
        this.mLauncher = Launcher.getLauncher(context);
        this.mScrollInterpolator = Interpolators.SCROLL_CUBIC;
        this.mSwipeDetector = new SingleAxisSwipeDetector(context, this, SingleAxisSwipeDetector.VERTICAL);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[0]);
        this.mOpenCloseAnimator = ofPropertyValuesHolder;
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.AbstractSlideInView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AbstractSlideInView.this.mSwipeDetector.a(BaseSwipeDetector.ScrollState.IDLE);
                AbstractSlideInView.this.announceAccessibilityChanges();
            }
        });
        int scrimColor = getScrimColor(this.mLauncher);
        if (scrimColor != -1) {
            view = new View(this.mLauncher);
            view.forceHasOverlappingRendering(false);
            view.setBackgroundColor(scrimColor);
            BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(-1, -1);
            layoutParams.ignoreInsets = true;
            view.setLayoutParams(layoutParams);
        } else {
            view = null;
        }
        this.mColorScrim = view;
    }

    public void attachToContainer() {
        if (this.mColorScrim != null) {
            getPopupContainer().addView(this.mColorScrim);
        }
        getPopupContainer().addView(this);
    }

    public BaseDragLayer getPopupContainer() {
        return this.mLauncher.mDragLayer;
    }

    public int getScrimColor(Context context) {
        return -1;
    }

    public void handleClose(boolean z, long j) {
        if (this.mIsOpen) {
            if (!z) {
                this.mOpenCloseAnimator.cancel();
                setTranslationShift(1.0f);
                onCloseComplete();
            } else {
                this.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat((Property<?, Float>) TRANSLATION_SHIFT, 1.0f));
                this.mOpenCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.AbstractSlideInView.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AbstractSlideInView.this.onCloseComplete();
                    }
                });
                if (this.mSwipeDetector.isIdleState()) {
                    this.mOpenCloseAnimator.setDuration(j).setInterpolator(Interpolators.ACCEL);
                } else {
                    this.mOpenCloseAnimator.setInterpolator(this.mScrollInterpolator);
                }
                this.mOpenCloseAnimator.start();
            }
        }
    }

    public void onCloseComplete() {
        this.mIsOpen = false;
        getPopupContainer().removeView(this);
        if (this.mColorScrim != null) {
            getPopupContainer().removeView(this.mColorScrim);
        }
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mNoIntercept) {
            return false;
        }
        int i = this.mSwipeDetector.isIdleState() ? 2 : 0;
        SingleAxisSwipeDetector singleAxisSwipeDetector = this.mSwipeDetector;
        singleAxisSwipeDetector.mScrollDirections = i;
        singleAxisSwipeDetector.mIgnoreSlopWhenSettling = false;
        singleAxisSwipeDetector.onTouchEvent(motionEvent);
        return this.mSwipeDetector.isDraggingOrSettling() || !getPopupContainer().isEventOverView(this.mContent, motionEvent);
    }

    @Override // com.android.launcher3.AbstractFloatingView, com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mSwipeDetector.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1 && this.mSwipeDetector.isIdleState()) {
            if (!(this.mIsOpen && this.mOpenCloseAnimator.isRunning()) && !getPopupContainer().isEventOverView(this.mContent, motionEvent)) {
                close(true);
            }
        }
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f) {
        float height = this.mContent.getHeight();
        setTranslationShift(Utilities.boundToRange(f, RecentsState.NO_OFFSET, height) / height);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float f) {
        if ((!this.mSwipeDetector.isFling(f) || f <= RecentsState.NO_OFFSET) && this.mTranslationShift <= 0.5f) {
            this.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat((Property<?, Float>) TRANSLATION_SHIFT, RecentsState.NO_OFFSET));
            this.mOpenCloseAnimator.setDuration(BaseSwipeDetector.calculateDuration(f, this.mTranslationShift)).setInterpolator(Interpolators.DEACCEL);
            this.mOpenCloseAnimator.start();
        } else {
            this.mScrollInterpolator = Interpolators.scrollInterpolatorForVelocity(f);
            this.mOpenCloseAnimator.setDuration(BaseSwipeDetector.calculateDuration(f, 1.0f - this.mTranslationShift));
            close(true);
        }
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
    }

    public void setTranslationShift(float f) {
        this.mTranslationShift = f;
        this.mContent.setTranslationY(f * r0.getHeight());
        View view = this.mColorScrim;
        if (view != null) {
            view.setAlpha(1.0f - this.mTranslationShift);
        }
    }
}
