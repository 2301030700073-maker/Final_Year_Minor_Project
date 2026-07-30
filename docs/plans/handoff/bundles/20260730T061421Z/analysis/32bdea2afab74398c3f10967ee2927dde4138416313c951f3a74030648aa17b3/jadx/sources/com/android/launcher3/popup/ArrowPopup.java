package com.android.launcher3.popup;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.CornerPathEffect;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.RevealOutlineAnimation;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.graphics.TriangleShape;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public abstract class ArrowPopup extends AbstractFloatingView {
    public final View mArrow;
    public final int mArrowOffset;
    public boolean mDeferContainerRemoval;
    public final Rect mEndRect;
    public int mGravity;
    public final LayoutInflater mInflater;
    public boolean mIsAboveIcon;
    public boolean mIsLeftAligned;
    public final boolean mIsRtl;
    public final BaseDraggingActivity mLauncher;
    public Animator mOpenCloseAnimator;
    public final float mOutlineRadius;
    public final Rect mStartRect;
    public final Rect mTempRect;

    public ArrowPopup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        this.mStartRect = new Rect();
        this.mEndRect = new Rect();
        this.mInflater = LayoutInflater.from(context);
        this.mOutlineRadius = W.getDialogCornerRadius(context);
        this.mLauncher = (BaseDraggingActivity) BaseActivity.fromContext(context);
        this.mIsRtl = Utilities.isRtl(getResources());
        setClipToOutline(true);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.popup.ArrowPopup.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), ArrowPopup.this.mOutlineRadius);
            }
        });
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.popup_arrow_width);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.popup_arrow_height);
        View view = new View(context);
        this.mArrow = view;
        view.setLayoutParams(new BaseDragLayer.LayoutParams(dimensionPixelSize, dimensionPixelSize2));
        this.mArrowOffset = resources.getDimensionPixelSize(R.dimen.popup_arrow_vertical_offset);
    }

    public /* synthetic */ void a(Animator animator, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mArrow.setAlpha(floatValue);
        if (animator.isStarted()) {
            floatValue = RecentsState.NO_OFFSET;
        }
        setAlpha(floatValue);
    }

    public void animateClose() {
        if (this.mIsOpen) {
            if (getOutlineProvider() instanceof RevealOutlineAnimation) {
                this.mEndRect.set(((RevealOutlineAnimation) getOutlineProvider()).mOutline);
            } else {
                this.mEndRect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
            Animator animator = this.mOpenCloseAnimator;
            if (animator != null) {
                animator.cancel();
            }
            this.mIsOpen = false;
            AnimatorSet animatorSet = new AnimatorSet();
            Resources resources = getResources();
            TimeInterpolator timeInterpolator = Interpolators.ACCEL_DEACCEL;
            long integer = resources.getInteger(R.integer.config_popupOpenCloseDuration);
            long integer2 = resources.getInteger(R.integer.config_popupArrowOpenCloseDuration);
            final Animator duration = ObjectAnimator.ofFloat(this.mArrow, LauncherAnimUtils.SCALE_PROPERTY, RecentsState.NO_OFFSET).setDuration(integer2);
            ValueAnimator createRevealAnimator = createOpenCloseOutlineProvider().createRevealAnimator(this, true);
            createRevealAnimator.setDuration(integer);
            createRevealAnimator.setInterpolator(timeInterpolator);
            animatorSet.playSequentially(createRevealAnimator, duration);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(getAlpha(), RecentsState.NO_OFFSET);
            ofFloat.setDuration(integer + integer2);
            ofFloat.setInterpolator(timeInterpolator);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.R0.e
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ArrowPopup.this.a(duration, valueAnimator);
                }
            });
            animatorSet.play(ofFloat);
            onCreateCloseAnimation(animatorSet);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.popup.ArrowPopup.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    ArrowPopup arrowPopup = ArrowPopup.this;
                    arrowPopup.mOpenCloseAnimator = null;
                    if (arrowPopup.mDeferContainerRemoval) {
                        arrowPopup.setVisibility(4);
                    } else {
                        arrowPopup.closeComplete();
                    }
                }
            });
            this.mOpenCloseAnimator = animatorSet;
            animatorSet.start();
        }
    }

    public /* synthetic */ void b(ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
        this.mArrow.setAlpha(floatValue);
        if (!valueAnimator.isStarted()) {
            floatValue = RecentsState.NO_OFFSET;
        }
        setAlpha(floatValue);
    }

    public void closeComplete() {
        Animator animator = this.mOpenCloseAnimator;
        if (animator != null) {
            animator.cancel();
            this.mOpenCloseAnimator = null;
        }
        this.mIsOpen = false;
        this.mDeferContainerRemoval = false;
        getPopupContainer().removeView(this);
        getPopupContainer().removeView(this.mArrow);
    }

    public final RoundedRectRevealOutlineProvider createOpenCloseOutlineProvider() {
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(this.mIsLeftAligned ^ this.mIsRtl ? R.dimen.popup_arrow_horizontal_center_start : R.dimen.popup_arrow_horizontal_center_end);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.popup_arrow_width) / 2;
        float dimension = resources.getDimension(R.dimen.popup_arrow_corner_radius);
        if (!this.mIsLeftAligned) {
            dimensionPixelSize = getMeasuredWidth() - dimensionPixelSize;
        }
        int measuredHeight = this.mIsAboveIcon ? getMeasuredHeight() : 0;
        this.mStartRect.set(dimensionPixelSize - dimensionPixelSize2, measuredHeight, dimensionPixelSize + dimensionPixelSize2, measuredHeight);
        return new RoundedRectRevealOutlineProvider(dimension, this.mOutlineRadius, this.mStartRect, this.mEndRect);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public View getAccessibilityInitialFocusView() {
        return getChildCount() > 0 ? getChildAt(0) : this;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public Pair getAccessibilityTarget() {
        return Pair.create(this, "");
    }

    public BaseDragLayer getPopupContainer() {
        return this.mLauncher.getDragLayer();
    }

    public abstract void getTargetObjectLocation(Rect rect);

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        if (z) {
            animateClose();
        } else {
            closeComplete();
        }
    }

    public View inflateAndAdd(int i, ViewGroup viewGroup) {
        View inflate = this.mInflater.inflate(i, viewGroup, false);
        viewGroup.addView(inflate);
        return inflate;
    }

    public boolean isAlignedWithStart() {
        return (this.mIsLeftAligned && !this.mIsRtl) || (!this.mIsLeftAligned && this.mIsRtl);
    }

    public void onCreateCloseAnimation(AnimatorSet animatorSet) {
    }

    public void onInflationComplete(boolean z) {
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Rect insets = getPopupContainer().getInsets();
        if (getTranslationX() + i < insets.left || getTranslationX() + i3 > r1.getWidth() - insets.right) {
            this.mGravity |= 1;
        }
        if (Gravity.isHorizontal(this.mGravity)) {
            setX((r1.getWidth() / 2) - (getMeasuredWidth() / 2));
            this.mArrow.setVisibility(4);
        }
        if (Gravity.isVertical(this.mGravity)) {
            setY((r1.getHeight() / 2) - (getMeasuredHeight() / 2));
        }
    }

    public final void orientAboutObject(boolean z, boolean z2) {
        int dimensionPixelSize;
        int i;
        int i2;
        boolean z3 = false;
        measure(0, 0);
        int measuredWidth = getMeasuredWidth();
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.popup_vertical_padding) + this.mArrow.getLayoutParams().height + this.mArrowOffset;
        int measuredHeight = getMeasuredHeight() + dimensionPixelSize2;
        getTargetObjectLocation(this.mTempRect);
        BaseDragLayer popupContainer = getPopupContainer();
        Rect insets = popupContainer.getInsets();
        Rect rect = this.mTempRect;
        int i3 = rect.left;
        int i4 = rect.right - measuredWidth;
        boolean z4 = !this.mIsRtl ? z : !z2;
        this.mIsLeftAligned = z4;
        int i5 = z4 ? i3 : i4;
        int width = this.mTempRect.width();
        Resources resources = getResources();
        if (isAlignedWithStart()) {
            int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.deep_shortcut_icon_size);
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.popup_padding_start);
            i = width / 2;
            i2 = dimensionPixelSize3 / 2;
        } else {
            int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.deep_shortcut_drag_handle_size);
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.popup_padding_end);
            i = width / 2;
            i2 = dimensionPixelSize4 / 2;
        }
        int i6 = (i - i2) - dimensionPixelSize;
        if (!this.mIsLeftAligned) {
            i6 = -i6;
        }
        int i7 = i5 + i6;
        if (z || z2) {
            if (!((this.mIsLeftAligned && ((i7 + measuredWidth) + insets.left < popupContainer.getWidth() - insets.right)) || (!this.mIsLeftAligned && (i7 > insets.left)))) {
                boolean z5 = z && !this.mIsLeftAligned;
                if (z2 && this.mIsLeftAligned) {
                    z3 = true;
                }
                orientAboutObject(z5, z3);
                return;
            }
        }
        int height = this.mTempRect.height();
        int i8 = this.mTempRect.top - measuredHeight;
        boolean z6 = i8 > popupContainer.getTop() + insets.top;
        this.mIsAboveIcon = z6;
        if (!z6) {
            i8 = this.mTempRect.top + height + dimensionPixelSize2;
        }
        int i9 = i7 - insets.left;
        int i10 = i8 - insets.top;
        this.mGravity = 0;
        if (measuredHeight + i10 > popupContainer.getBottom() - insets.bottom) {
            this.mGravity = 16;
            int i11 = insets.left;
            int i12 = (i3 + width) - i11;
            int i13 = (i4 - width) - i11;
            if (this.mIsRtl) {
                if (i13 > popupContainer.getLeft()) {
                    this.mIsLeftAligned = false;
                    i9 = i13;
                } else {
                    this.mIsLeftAligned = true;
                    i9 = i12;
                }
            } else if (measuredWidth + i12 < popupContainer.getRight()) {
                this.mIsLeftAligned = true;
                i9 = i12;
            } else {
                this.mIsLeftAligned = false;
                i9 = i13;
            }
            this.mIsAboveIcon = true;
        }
        setX(i9);
        if (Gravity.isVertical(this.mGravity)) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mArrow.getLayoutParams();
        if (this.mIsAboveIcon) {
            layoutParams.gravity = 80;
            layoutParams2.gravity = 80;
            int height2 = ((getPopupContainer().getHeight() - i10) - getMeasuredHeight()) - insets.top;
            layoutParams.bottomMargin = height2;
            layoutParams2.bottomMargin = ((height2 - layoutParams2.height) - this.mArrowOffset) - insets.bottom;
            return;
        }
        layoutParams.gravity = 48;
        layoutParams2.gravity = 48;
        int i14 = insets.top;
        int i15 = i10 + i14;
        layoutParams.topMargin = i15;
        layoutParams2.topMargin = ((i15 - i14) - layoutParams2.height) - this.mArrowOffset;
    }

    public void reorderAndShow(int i) {
        setVisibility(4);
        this.mIsOpen = true;
        getPopupContainer().addView(this);
        orientAboutObject(true, true);
        boolean z = this.mIsAboveIcon;
        if (z) {
            int childCount = getChildCount();
            ArrayList arrayList = new ArrayList(childCount);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 == i) {
                    Collections.reverse(arrayList);
                }
                arrayList.add(getChildAt(i2));
            }
            Collections.reverse(arrayList);
            removeAllViews();
            for (int i3 = 0; i3 < childCount; i3++) {
                addView((View) arrayList.get(i3));
            }
            orientAboutObject(true, true);
        }
        onInflationComplete(z);
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(isAlignedWithStart() ? R.dimen.popup_arrow_horizontal_center_start : R.dimen.popup_arrow_horizontal_center_end);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.popup_arrow_width) / 2;
        getPopupContainer().addView(this.mArrow);
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) this.mArrow.getLayoutParams();
        if (this.mIsLeftAligned) {
            this.mArrow.setX((getX() + dimensionPixelSize) - dimensionPixelSize2);
        } else {
            this.mArrow.setX(((getX() + getMeasuredWidth()) - dimensionPixelSize) - dimensionPixelSize2);
        }
        if (Gravity.isVertical(this.mGravity)) {
            this.mArrow.setVisibility(4);
        } else {
            ShapeDrawable shapeDrawable = new ShapeDrawable(TriangleShape.create(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height, !this.mIsAboveIcon));
            Paint paint = shapeDrawable.getPaint();
            paint.setColor(W.getAttrColor(getContext(), R.attr.popupColorPrimary));
            paint.setPathEffect(new CornerPathEffect(getResources().getDimensionPixelSize(R.dimen.popup_arrow_corner_radius)));
            this.mArrow.setBackground(shapeDrawable);
            if (this.mIsAboveIcon) {
                this.mArrow.setClipBounds(new Rect(0, -this.mArrowOffset, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height));
            } else {
                this.mArrow.setClipBounds(new Rect(0, 0, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height + this.mArrowOffset));
            }
            this.mArrow.setElevation(getElevation());
        }
        this.mArrow.setPivotX(((FrameLayout.LayoutParams) layoutParams).width / 2);
        this.mArrow.setPivotY(this.mIsAboveIcon ? ((FrameLayout.LayoutParams) layoutParams).height : 0.0f);
        setVisibility(0);
        AnimatorSet animatorSet = new AnimatorSet();
        Resources resources2 = getResources();
        long integer = resources2.getInteger(R.integer.config_popupOpenCloseDuration);
        long integer2 = resources2.getInteger(R.integer.config_popupArrowOpenCloseDuration);
        Interpolator interpolator = Interpolators.ACCEL_DEACCEL;
        this.mEndRect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        final ValueAnimator createRevealAnimator = createOpenCloseOutlineProvider().createRevealAnimator(this, false);
        createRevealAnimator.setDuration(integer);
        createRevealAnimator.setInterpolator(interpolator);
        createRevealAnimator.start();
        createRevealAnimator.pause();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        ofFloat.setDuration(integer + integer2);
        ofFloat.setInterpolator(interpolator);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.R0.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ArrowPopup.this.b(createRevealAnimator, valueAnimator);
            }
        });
        animatorSet.play(ofFloat);
        this.mArrow.setScaleX(RecentsState.NO_OFFSET);
        this.mArrow.setScaleY(RecentsState.NO_OFFSET);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.mArrow, LauncherAnimUtils.SCALE_PROPERTY, 1.0f).setDuration(integer2);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.popup.ArrowPopup.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ArrowPopup.this.setAlpha(1.0f);
                ArrowPopup.this.announceAccessibilityChanges();
                ArrowPopup.this.mOpenCloseAnimator = null;
            }
        });
        this.mOpenCloseAnimator = animatorSet;
        animatorSet.playSequentially(duration, createRevealAnimator);
        animatorSet.start();
    }

    public ArrowPopup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowPopup(Context context) {
        this(context, null, 0);
    }
}
