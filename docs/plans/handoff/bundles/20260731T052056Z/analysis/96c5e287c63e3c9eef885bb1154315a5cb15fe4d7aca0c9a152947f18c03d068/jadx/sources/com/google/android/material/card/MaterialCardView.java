package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.unit.DpKt;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.text.UStringsKt;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MaterialCardView extends CardView implements Checkable, Shapeable {
    public static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int[] DRAGGED_STATE_SET = {org.wikipedia.R.attr.state_dragged};
    public static final int[] HOVERED_STATE_SET = {R.attr.state_hovered};
    public final MaterialCardViewHelper cardViewHelper;
    public boolean checked;
    public boolean dragged;
    public final boolean isParentCardViewDoneInitializing;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnCheckedChangeListener {
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, org.wikipedia.R.attr.materialCardViewStyle, org.wikipedia.R.style.Widget_MaterialComponents_CardView), attributeSet, org.wikipedia.R.attr.materialCardViewStyle);
        StateListShapeAppearanceModel create;
        this.checked = false;
        this.dragged = false;
        this.isParentCardViewDoneInitializing = true;
        TypedArray obtainStyledAttributes = ViewUtils.obtainStyledAttributes(getContext(), attributeSet, R$styleable.MaterialCardView, org.wikipedia.R.attr.materialCardViewStyle, org.wikipedia.R.style.Widget_MaterialComponents_CardView, new int[0]);
        MaterialCardViewHelper materialCardViewHelper = new MaterialCardViewHelper(this, attributeSet);
        this.cardViewHelper = materialCardViewHelper;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.bgDrawable;
        materialShapeDrawable.setFillColor(cardBackgroundColor);
        materialCardViewHelper.userContentPadding.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        materialCardViewHelper.updateContentPadding();
        MaterialCardView materialCardView = materialCardViewHelper.materialCardView;
        ColorStateList colorStateList = OperationKt.getColorStateList(materialCardView.getContext(), obtainStyledAttributes, 11);
        materialCardViewHelper.strokeColor = colorStateList;
        if (colorStateList == null) {
            materialCardViewHelper.strokeColor = ColorStateList.valueOf(-1);
        }
        materialCardViewHelper.strokeWidth = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        materialCardViewHelper.checkable = z;
        materialCardView.setLongClickable(z);
        materialCardViewHelper.checkedIconTint = OperationKt.getColorStateList(materialCardView.getContext(), obtainStyledAttributes, 6);
        materialCardViewHelper.setCheckedIcon(OperationKt.getDrawable(materialCardView.getContext(), obtainStyledAttributes, 2));
        materialCardViewHelper.checkedIconSize = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        materialCardViewHelper.checkedIconMargin = obtainStyledAttributes.getDimensionPixelSize(4, 0);
        materialCardViewHelper.checkedIconGravity = obtainStyledAttributes.getInteger(3, 8388661);
        ColorStateList colorStateList2 = OperationKt.getColorStateList(materialCardView.getContext(), obtainStyledAttributes, 7);
        materialCardViewHelper.rippleColor = colorStateList2;
        if (colorStateList2 == null) {
            materialCardViewHelper.rippleColor = ColorStateList.valueOf(UStringsKt.resolveColor(materialCardView.getContext(), Operation$State.resolveTypedValueOrThrow(materialCardView, org.wikipedia.R.attr.colorControlHighlight)));
        }
        ColorStateList colorStateList3 = OperationKt.getColorStateList(materialCardView.getContext(), obtainStyledAttributes, 1);
        colorStateList3 = colorStateList3 == null ? ColorStateList.valueOf(0) : colorStateList3;
        MaterialShapeDrawable materialShapeDrawable2 = materialCardViewHelper.foregroundContentDrawable;
        materialShapeDrawable2.setFillColor(colorStateList3);
        RippleDrawable rippleDrawable = materialCardViewHelper.rippleDrawable;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(materialCardViewHelper.rippleColor);
        }
        materialShapeDrawable.setElevation(materialCardView.getCardElevation());
        float f = materialCardViewHelper.strokeWidth;
        ColorStateList colorStateList4 = materialCardViewHelper.strokeColor;
        materialShapeDrawable2.drawableState.strokeWidth = f;
        materialShapeDrawable2.invalidateSelf();
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable2.drawableState;
        if (materialShapeDrawableState.strokeColor != colorStateList4) {
            materialShapeDrawableState.strokeColor = colorStateList4;
            materialShapeDrawable2.onStateChange(materialShapeDrawable2.getState());
        }
        materialCardView.setBackgroundInternal(materialCardViewHelper.insetDrawable(materialShapeDrawable));
        Drawable clickableForeground = materialCardViewHelper.shouldUseClickableForeground() ? materialCardViewHelper.getClickableForeground() : materialShapeDrawable2;
        materialCardViewHelper.fgDrawable = clickableForeground;
        materialCardView.setForeground(materialCardViewHelper.insetDrawable(clickableForeground));
        if (materialCardViewHelper.cardCornerRadius == -1.0f && (create = StateListShapeAppearanceModel.create(materialCardView.getContext(), obtainStyledAttributes, 8)) != null) {
            SpringForce resolveThemeSpringForce = DpKt.resolveThemeSpringForce(materialCardView.getContext());
            materialShapeDrawable.setCornerSpringForce(resolveThemeSpringForce);
            materialShapeDrawable2.setCornerSpringForce(resolveThemeSpringForce);
            MaterialShapeDrawable materialShapeDrawable3 = materialCardViewHelper.foregroundShapeDrawable;
            if (materialShapeDrawable3 != null) {
                materialShapeDrawable3.setCornerSpringForce(resolveThemeSpringForce);
            }
            materialCardViewHelper.setShapeAppearance(create);
        }
        obtainStyledAttributes.recycle();
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.cardViewHelper.bgDrawable.getBounds());
        return rectF;
    }

    public final void forceRippleRedrawIfNeeded() {
        MaterialCardViewHelper materialCardViewHelper;
        RippleDrawable rippleDrawable;
        if (Build.VERSION.SDK_INT <= 26 || (rippleDrawable = (materialCardViewHelper = this.cardViewHelper).rippleDrawable) == null) {
            return;
        }
        Rect bounds = rippleDrawable.getBounds();
        int i = bounds.bottom;
        materialCardViewHelper.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
        materialCardViewHelper.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i);
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.cardViewHelper.bgDrawable.drawableState.fillColor;
    }

    public ColorStateList getCardForegroundColor() {
        return this.cardViewHelper.foregroundContentDrawable.drawableState.fillColor;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.cardViewHelper.checkedIcon;
    }

    public int getCheckedIconGravity() {
        return this.cardViewHelper.checkedIconGravity;
    }

    public int getCheckedIconMargin() {
        return this.cardViewHelper.checkedIconMargin;
    }

    public int getCheckedIconSize() {
        return this.cardViewHelper.checkedIconSize;
    }

    public ColorStateList getCheckedIconTint() {
        return this.cardViewHelper.checkedIconTint;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.cardViewHelper.userContentPadding.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.cardViewHelper.userContentPadding.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.cardViewHelper.userContentPadding.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.cardViewHelper.userContentPadding.top;
    }

    public float getProgress() {
        return this.cardViewHelper.bgDrawable.drawableState.interpolation;
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.cardViewHelper.bgDrawable.getTopLeftCornerResolvedSize();
    }

    public ColorStateList getRippleColor() {
        return this.cardViewHelper.rippleColor;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.cardViewHelper.shapeAppearanceModel.getDefaultShape();
    }

    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.cardViewHelper.strokeColor;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.cardViewHelper.strokeColor;
    }

    public int getStrokeWidth() {
        return this.cardViewHelper.strokeWidth;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.checked;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.updateClickable();
        ResultKt.setParentAbsoluteElevation(this, materialCardViewHelper.bgDrawable);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 8);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (materialCardViewHelper != null && materialCardViewHelper.checkable) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKABLE_STATE_SET);
        }
        if (this.checked) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        if (this.dragged) {
            View.mergeDrawableStates(onCreateDrawableState, DRAGGED_STATE_SET);
        }
        if (isDuplicateParentStateEnabled()) {
            if (isPressed()) {
                View.mergeDrawableStates(onCreateDrawableState, FrameLayout.PRESSED_STATE_SET);
            }
            if (isHovered()) {
                View.mergeDrawableStates(onCreateDrawableState, HOVERED_STATE_SET);
            }
            if (isEnabled()) {
                View.mergeDrawableStates(onCreateDrawableState, FrameLayout.ENABLED_STATE_SET);
            }
            if (isFocused()) {
                View.mergeDrawableStates(onCreateDrawableState, FrameLayout.FOCUSED_STATE_SET);
            }
            if (isSelected()) {
                View.mergeDrawableStates(onCreateDrawableState, FrameLayout.SELECTED_STATE_SET);
            }
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.checked);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        accessibilityNodeInfo.setCheckable(materialCardViewHelper != null && materialCardViewHelper.checkable);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.checked);
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.cardViewHelper.recalculateCheckedIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.isParentCardViewDoneInitializing) {
            MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
            if (!materialCardViewHelper.isBackgroundOverwritten) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                materialCardViewHelper.isBackgroundOverwritten = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i) {
        this.cardViewHelper.bgDrawable.setFillColor(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.bgDrawable.setElevation(materialCardViewHelper.materialCardView.getCardElevation());
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.cardViewHelper.foregroundContentDrawable;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.setFillColor(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.cardViewHelper.checkable = z;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.checked != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.cardViewHelper.setCheckedIcon(drawable);
    }

    public void setCheckedIconGravity(int i) {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (materialCardViewHelper.checkedIconGravity != i) {
            materialCardViewHelper.checkedIconGravity = i;
            MaterialCardView materialCardView = materialCardViewHelper.materialCardView;
            materialCardViewHelper.recalculateCheckedIconPosition(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    public void setCheckedIconMargin(int i) {
        this.cardViewHelper.checkedIconMargin = i;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i != -1) {
            this.cardViewHelper.checkedIconMargin = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconResource(int i) {
        this.cardViewHelper.setCheckedIcon(TuplesKt.getDrawable(getContext(), i));
    }

    public void setCheckedIconSize(int i) {
        this.cardViewHelper.checkedIconSize = i;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i != 0) {
            this.cardViewHelper.checkedIconSize = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.checkedIconTint = colorStateList;
        Drawable drawable = materialCardViewHelper.checkedIcon;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (materialCardViewHelper != null) {
            materialCardViewHelper.updateClickable();
        }
    }

    public void setDragged(boolean z) {
        if (this.dragged != z) {
            this.dragged = z;
            refreshDrawableState();
            forceRippleRedrawIfNeeded();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.cardViewHelper.updateInsets();
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.updateInsets();
        materialCardViewHelper.updateContentPadding();
    }

    public void setProgress(float f) {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.bgDrawable.setInterpolation(f);
        MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.foregroundContentDrawable;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setInterpolation(f);
        }
        MaterialShapeDrawable materialShapeDrawable2 = materialCardViewHelper.foregroundShapeDrawable;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setInterpolation(f);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.cardCornerRadius = f;
        materialCardViewHelper.setShapeAppearance(materialCardViewHelper.shapeAppearanceModel.getDefaultShape().withCornerSize(f));
        materialCardViewHelper.fgDrawable.invalidateSelf();
        if (materialCardViewHelper.shouldAddCornerPaddingOutsideCardBackground() || (materialCardViewHelper.materialCardView.getPreventCornerOverlap() && !materialCardViewHelper.bgDrawable.isRoundRect())) {
            materialCardViewHelper.updateContentPadding();
        }
        if (materialCardViewHelper.shouldAddCornerPaddingOutsideCardBackground()) {
            materialCardViewHelper.updateInsets();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.rippleColor = colorStateList;
        RippleDrawable rippleDrawable = materialCardViewHelper.rippleDrawable;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        ColorStateList colorStateList = FileUtil.getColorStateList(getContext(), i);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.rippleColor = colorStateList;
        RippleDrawable rippleDrawable = materialCardViewHelper.rippleDrawable;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        setClipToOutline(shapeAppearanceModel.isRoundRect(getBoundsAsRectF()));
        this.cardViewHelper.setShapeAppearance(shapeAppearanceModel);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (materialCardViewHelper.strokeColor != colorStateList) {
            materialCardViewHelper.strokeColor = colorStateList;
            MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.foregroundContentDrawable;
            materialShapeDrawable.drawableState.strokeWidth = materialCardViewHelper.strokeWidth;
            materialShapeDrawable.invalidateSelf();
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
            if (materialShapeDrawableState.strokeColor != colorStateList) {
                materialShapeDrawableState.strokeColor = colorStateList;
                materialShapeDrawable.onStateChange(materialShapeDrawable.getState());
            }
        }
        invalidate();
    }

    public void setStrokeWidth(int i) {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (i != materialCardViewHelper.strokeWidth) {
            materialCardViewHelper.strokeWidth = i;
            MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.foregroundContentDrawable;
            ColorStateList colorStateList = materialCardViewHelper.strokeColor;
            materialShapeDrawable.drawableState.strokeWidth = i;
            materialShapeDrawable.invalidateSelf();
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
            if (materialShapeDrawableState.strokeColor != colorStateList) {
                materialShapeDrawableState.strokeColor = colorStateList;
                materialShapeDrawable.onStateChange(materialShapeDrawable.getState());
            }
        }
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        materialCardViewHelper.updateInsets();
        materialCardViewHelper.updateContentPadding();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (materialCardViewHelper != null && materialCardViewHelper.checkable && isEnabled()) {
            this.checked = !this.checked;
            refreshDrawableState();
            forceRippleRedrawIfNeeded();
            materialCardViewHelper.setChecked(this.checked, true);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.cardViewHelper.bgDrawable.setFillColor(colorStateList);
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
    }

    public void setStrokeColor(int i) {
        setStrokeColor(ColorStateList.valueOf(i));
    }
}
