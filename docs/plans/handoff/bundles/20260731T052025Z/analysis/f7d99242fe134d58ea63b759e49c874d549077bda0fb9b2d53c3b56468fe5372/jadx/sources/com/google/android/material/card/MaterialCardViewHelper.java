package com.google.android.material.card;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.cardview.R$styleable;
import androidx.cardview.widget.CardView;
import androidx.cardview.widget.RoundRectDrawable;
import androidx.cardview.widget.RoundRectDrawableWithShadow;
import androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MaterialCardViewHelper {
    public static final ColorDrawable CHECKED_ICON_NONE;
    public static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    public final MaterialShapeDrawable bgDrawable;
    public float cardCornerRadius;
    public boolean checkable;
    public Drawable checkedIcon;
    public int checkedIconGravity;
    public int checkedIconMargin;
    public int checkedIconSize;
    public ColorStateList checkedIconTint;
    public LayerDrawable clickableForegroundDrawable;
    public Drawable fgDrawable;
    public final MaterialShapeDrawable foregroundContentDrawable;
    public MaterialShapeDrawable foregroundShapeDrawable;
    public ValueAnimator iconAnimator;
    public final TimeInterpolator iconFadeAnimInterpolator;
    public final int iconFadeInAnimDuration;
    public final int iconFadeOutAnimDuration;
    public final MaterialCardView materialCardView;
    public ColorStateList rippleColor;
    public RippleDrawable rippleDrawable;
    public ShapeAppearance shapeAppearanceModel;
    public ColorStateList strokeColor;
    public int strokeWidth;
    public final Rect userContentPadding = new Rect();
    public boolean isBackgroundOverwritten = false;
    public float checkedAnimationProgress = 0.0f;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.google.android.material.card.MaterialCardViewHelper$1, reason: invalid class name */
    public final class AnonymousClass1 extends InsetDrawable {
        @Override // android.graphics.drawable.Drawable
        public final int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public final int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public final boolean getPadding(Rect rect) {
            return false;
        }
    }

    static {
        CHECKED_ICON_NONE = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public MaterialCardViewHelper(MaterialCardView materialCardView, AttributeSet attributeSet, int i) {
        this.cardCornerRadius = -1.0f;
        this.materialCardView = materialCardView;
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.CardView, i, R.style.CardView);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i, R.style.Widget_MaterialComponents_CardView);
        this.bgDrawable = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(materialCardView.getContext());
        materialShapeDrawable.setShadowColor();
        ShapeAppearanceModel.Builder builder = materialShapeDrawable.getShapeAppearanceModel().toBuilder();
        if (obtainStyledAttributes.hasValue(3)) {
            float dimension = obtainStyledAttributes.getDimension(3, 0.0f);
            this.cardCornerRadius = dimension;
            builder.setAllCornerSizes(dimension);
        }
        this.foregroundContentDrawable = new MaterialShapeDrawable();
        setShapeAppearance(builder.build());
        this.iconFadeAnimInterpolator = Operation$State.resolveThemeInterpolator(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
        this.iconFadeInAnimDuration = Operation$State.resolveThemeDuration(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.iconFadeOutAnimDuration = Operation$State.resolveThemeDuration(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        obtainStyledAttributes.recycle();
    }

    public static float calculateCornerPaddingForCornerTreatment(Validate validate, float f) {
        if (validate instanceof RoundedCornerTreatment) {
            return (float) ((1.0d - COS_45) * f);
        }
        if (validate instanceof CutCornerTreatment) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    public final float calculateActualCornerPadding() {
        float f = 0.0f;
        for (ShapeAppearanceModel shapeAppearanceModel : this.shapeAppearanceModel.getShapeAppearanceModels()) {
            if (shapeAppearanceModel != null) {
                Validate validate = shapeAppearanceModel.topLeftCorner;
                MaterialShapeDrawable materialShapeDrawable = this.bgDrawable;
                float calculateCornerPaddingForCornerTreatment = calculateCornerPaddingForCornerTreatment(validate, materialShapeDrawable.getTopLeftCornerResolvedSize());
                Validate validate2 = shapeAppearanceModel.topRightCorner;
                float[] fArr = materialShapeDrawable.springAnimatedCornerSizes;
                float max = Math.max(calculateCornerPaddingForCornerTreatment, calculateCornerPaddingForCornerTreatment(validate2, fArr != null ? fArr[0] : materialShapeDrawable.drawableState.shapeAppearance.getDefaultShape().topRightCornerSize.getCornerSize(materialShapeDrawable.getBoundsAsRectF())));
                Validate validate3 = shapeAppearanceModel.bottomRightCorner;
                float[] fArr2 = materialShapeDrawable.springAnimatedCornerSizes;
                float calculateCornerPaddingForCornerTreatment2 = calculateCornerPaddingForCornerTreatment(validate3, fArr2 != null ? fArr2[1] : materialShapeDrawable.drawableState.shapeAppearance.getDefaultShape().bottomRightCornerSize.getCornerSize(materialShapeDrawable.getBoundsAsRectF()));
                Validate validate4 = shapeAppearanceModel.bottomLeftCorner;
                float[] fArr3 = materialShapeDrawable.springAnimatedCornerSizes;
                f = Math.max(f, Math.max(max, Math.max(calculateCornerPaddingForCornerTreatment2, calculateCornerPaddingForCornerTreatment(validate4, fArr3 != null ? fArr3[2] : materialShapeDrawable.drawableState.shapeAppearance.getDefaultShape().bottomLeftCornerSize.getCornerSize(materialShapeDrawable.getBoundsAsRectF())))));
            }
        }
        return f;
    }

    public final LayerDrawable getClickableForeground() {
        if (this.rippleDrawable == null) {
            this.foregroundShapeDrawable = new MaterialShapeDrawable(this.shapeAppearanceModel);
            this.rippleDrawable = new RippleDrawable(this.rippleColor, null, this.foregroundShapeDrawable);
        }
        if (this.clickableForegroundDrawable == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.rippleDrawable, this.foregroundContentDrawable, this.checkedIcon});
            FocusRingDrawable.layer(this.materialCardView.getContext(), layerDrawable, this.foregroundShapeDrawable);
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
            this.clickableForegroundDrawable = layerDrawable;
        }
        return this.clickableForegroundDrawable;
    }

    public final AnonymousClass1 insetDrawable(Drawable drawable) {
        int i;
        int i2;
        if (this.materialCardView.getUseCompatPadding()) {
            int ceil = (int) Math.ceil((r0.getMaxCardElevation() * 1.5f) + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f));
            i = (int) Math.ceil(r0.getMaxCardElevation() + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f));
            i2 = ceil;
        } else {
            i = 0;
            i2 = 0;
        }
        return new AnonymousClass1(drawable, i, i2, i, i2);
    }

    public final void recalculateCheckedIconPosition(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.clickableForegroundDrawable != null) {
            MaterialCardView materialCardView = this.materialCardView;
            if (materialCardView.getUseCompatPadding()) {
                i3 = (int) Math.ceil(((materialCardView.getMaxCardElevation() * 1.5f) + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f)) * 2.0f);
                i4 = (int) Math.ceil((materialCardView.getMaxCardElevation() + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f)) * 2.0f);
            } else {
                i3 = 0;
                i4 = 0;
            }
            int i7 = this.checkedIconGravity;
            boolean z = (i7 & 8388613) == 8388613;
            int i8 = this.checkedIconMargin;
            int i9 = z ? ((i - i8) - this.checkedIconSize) - i4 : i8;
            int i10 = (i7 & 80) == 80 ? i8 : ((i2 - i8) - this.checkedIconSize) - i3;
            int i11 = (i7 & 8388613) == 8388613 ? i8 : ((i - i8) - this.checkedIconSize) - i4;
            if ((i7 & 80) == 80) {
                i8 = ((i2 - i8) - this.checkedIconSize) - i3;
            }
            int i12 = i8;
            if (materialCardView.getLayoutDirection() == 1) {
                i6 = i11;
                i5 = i9;
            } else {
                i5 = i11;
                i6 = i9;
            }
            this.clickableForegroundDrawable.setLayerInset(2, i6, i12, i5, i10);
        }
    }

    public final void setChecked(boolean z, boolean z2) {
        Drawable drawable = this.checkedIcon;
        if (drawable != null) {
            if (!z2) {
                drawable.setAlpha(z ? 255 : 0);
                this.checkedAnimationProgress = z ? 1.0f : 0.0f;
                return;
            }
            float f = z ? 1.0f : 0.0f;
            float f2 = this.checkedAnimationProgress;
            if (z) {
                f2 = 1.0f - f2;
            }
            ValueAnimator valueAnimator = this.iconAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.iconAnimator = null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.checkedAnimationProgress, f);
            this.iconAnimator = ofFloat;
            ofFloat.addUpdateListener(new ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(2, this));
            this.iconAnimator.setInterpolator(this.iconFadeAnimInterpolator);
            this.iconAnimator.setDuration((long) ((z ? this.iconFadeInAnimDuration : this.iconFadeOutAnimDuration) * f2));
            this.iconAnimator.start();
        }
    }

    public final void setCheckedIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.checkedIcon = mutate;
            mutate.setTintList(this.checkedIconTint);
            setChecked(this.materialCardView.checked, false);
        } else {
            this.checkedIcon = CHECKED_ICON_NONE;
        }
        LayerDrawable layerDrawable = this.clickableForegroundDrawable;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.checkedIcon);
        }
    }

    public final void setShapeAppearance(ShapeAppearance shapeAppearance) {
        this.shapeAppearanceModel = shapeAppearance;
        MaterialShapeDrawable materialShapeDrawable = this.bgDrawable;
        materialShapeDrawable.setShapeAppearance(shapeAppearance);
        this.foregroundContentDrawable.setShapeAppearance(shapeAppearance);
        MaterialShapeDrawable materialShapeDrawable2 = this.foregroundShapeDrawable;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearance(shapeAppearance);
        }
        materialShapeDrawable.shadowBitmapDrawingEnable = !materialShapeDrawable.isRoundRect();
    }

    public final boolean shouldAddCornerPaddingOutsideCardBackground() {
        MaterialCardView materialCardView = this.materialCardView;
        return materialCardView.getPreventCornerOverlap() && this.bgDrawable.isRoundRect() && materialCardView.getUseCompatPadding();
    }

    public final boolean shouldUseClickableForeground() {
        View view = this.materialCardView;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    public final void updateClickable() {
        Drawable drawable = this.fgDrawable;
        Drawable clickableForeground = shouldUseClickableForeground() ? getClickableForeground() : this.foregroundContentDrawable;
        this.fgDrawable = clickableForeground;
        if (drawable != clickableForeground) {
            MaterialCardView materialCardView = this.materialCardView;
            if (materialCardView.getForeground() instanceof InsetDrawable) {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(clickableForeground);
            } else {
                materialCardView.setForeground(insetDrawable(clickableForeground));
            }
        }
    }

    public final void updateContentPadding() {
        MaterialCardView materialCardView = this.materialCardView;
        float f = 0.0f;
        float calculateActualCornerPadding = ((!materialCardView.getPreventCornerOverlap() || this.bgDrawable.isRoundRect()) && !shouldAddCornerPaddingOutsideCardBackground()) ? 0.0f : calculateActualCornerPadding();
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            f = (float) ((1.0d - COS_45) * materialCardView.getCardViewRadius());
        }
        int i = (int) (calculateActualCornerPadding - f);
        Rect rect = this.userContentPadding;
        materialCardView.mContentPadding.set(rect.left + i, rect.top + i, rect.right + i, rect.bottom + i);
        CardView.AnonymousClass1 anonymousClass1 = materialCardView.mCardViewDelegate;
        if (!((CardView) anonymousClass1.this$0).getUseCompatPadding()) {
            anonymousClass1.setShadowPadding(0, 0, 0, 0);
            return;
        }
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) anonymousClass1.mCardBackground;
        float f2 = roundRectDrawable.mPadding;
        float f3 = roundRectDrawable.mRadius;
        int ceil = (int) Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(f2, f3, r0.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(f2, f3, r0.getPreventCornerOverlap()));
        anonymousClass1.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    public final void updateInsets() {
        boolean z = this.isBackgroundOverwritten;
        MaterialCardView materialCardView = this.materialCardView;
        if (!z) {
            materialCardView.setBackgroundInternal(insetDrawable(this.bgDrawable));
        }
        materialCardView.setForeground(insetDrawable(this.fgDrawable));
    }
}
