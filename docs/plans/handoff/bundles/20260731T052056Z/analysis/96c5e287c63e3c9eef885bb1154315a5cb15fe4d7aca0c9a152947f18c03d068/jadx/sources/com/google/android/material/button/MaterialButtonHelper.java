package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.work.Operation$State;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearance;
import java.lang.ref.WeakReference;
import kotlin.text.UStringsKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MaterialButtonHelper {
    public ColorStateList backgroundTint;
    public PorterDuff.Mode backgroundTintMode;
    public boolean checkable;
    public int cornerRadius;
    public SpringForce cornerSpringForce;
    public int elevation;
    public int insetBottom;
    public int insetLeft;
    public int insetRight;
    public int insetTop;
    public MaterialShapeDrawable maskDrawable;
    public final MaterialButton materialButton;
    public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onCornerSizeChangeListener;
    public ColorStateList rippleColor;
    public RippleDrawable rippleDrawable;
    public ShapeAppearance shapeAppearance;
    public ColorStateList strokeColor;
    public int strokeWidth;
    public boolean shouldDrawSurfaceColorStroke = false;
    public boolean backgroundOverwritten = false;
    public boolean cornerRadiusSet = false;
    public boolean toggleCheckedStateOnClick = true;

    public MaterialButtonHelper(MaterialButton materialButton, ShapeAppearance shapeAppearance) {
        this.materialButton = materialButton;
        this.shapeAppearance = shapeAppearance;
    }

    public final MaterialShapeDrawable getMaterialShapeDrawable(boolean z) {
        RippleDrawable rippleDrawable = this.rippleDrawable;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.rippleDrawable.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }

    public final void setInsets(int i, int i2, int i3, int i4) {
        MaterialButton materialButton = this.materialButton;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i5 = this.insetLeft;
        int i6 = this.insetTop;
        int i7 = this.insetRight;
        int i8 = this.insetBottom;
        this.insetLeft = i;
        this.insetTop = i2;
        this.insetRight = i3;
        this.insetBottom = i4;
        if (!this.backgroundOverwritten) {
            updateBackground();
        }
        materialButton.setPaddingRelative((paddingStart + i) - i5, (paddingTop + i2) - i6, (paddingEnd + i3) - i7, (paddingBottom + i4) - i8);
    }

    public final void updateBackground() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.shapeAppearance);
        SpringForce springForce = this.cornerSpringForce;
        if (springForce != null) {
            materialShapeDrawable.setCornerSpringForce(springForce);
        }
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = this.onCornerSizeChangeListener;
        if (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 != null) {
            materialShapeDrawable.onCornerSizeChangeListener = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        }
        MaterialButton materialButton = this.materialButton;
        Context context = materialButton.getContext();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setTintList(this.backgroundTint);
        PorterDuff.Mode mode = this.backgroundTintMode;
        if (mode != null) {
            materialShapeDrawable.setTintMode(mode);
        }
        float f = this.strokeWidth;
        ColorStateList colorStateList = this.strokeColor;
        materialShapeDrawable.drawableState.strokeWidth = f;
        materialShapeDrawable.invalidateSelf();
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
        if (materialShapeDrawableState.strokeColor != colorStateList) {
            materialShapeDrawableState.strokeColor = colorStateList;
            materialShapeDrawable.onStateChange(materialShapeDrawable.getState());
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.shapeAppearance);
        SpringForce springForce2 = this.cornerSpringForce;
        if (springForce2 != null) {
            materialShapeDrawable2.setCornerSpringForce(springForce2);
        }
        materialShapeDrawable2.setTint(0);
        float f2 = this.strokeWidth;
        int resolveColor = this.shouldDrawSurfaceColorStroke ? UStringsKt.resolveColor(materialButton.getContext(), Operation$State.resolveTypedValueOrThrow(materialButton, R.attr.colorSurface)) : 0;
        materialShapeDrawable2.drawableState.strokeWidth = f2;
        materialShapeDrawable2.invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(resolveColor);
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState2 = materialShapeDrawable2.drawableState;
        if (materialShapeDrawableState2.strokeColor != valueOf) {
            materialShapeDrawableState2.strokeColor = valueOf;
            materialShapeDrawable2.onStateChange(materialShapeDrawable2.getState());
        }
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.shapeAppearance);
        this.maskDrawable = materialShapeDrawable3;
        SpringForce springForce3 = this.cornerSpringForce;
        if (springForce3 != null) {
            materialShapeDrawable3.setCornerSpringForce(springForce3);
        }
        this.maskDrawable.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.rippleColor), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable}), this.insetLeft, this.insetTop, this.insetRight, this.insetBottom), this.maskDrawable);
        this.rippleDrawable = rippleDrawable;
        FocusRingDrawable.layer(context, rippleDrawable, null);
        materialButton.setInternalBackground(this.rippleDrawable);
        MaterialShapeDrawable materialShapeDrawable4 = getMaterialShapeDrawable(false);
        if (materialShapeDrawable4 != null) {
            materialShapeDrawable4.setElevation(this.elevation);
            materialShapeDrawable4.setState(materialButton.getDrawableState());
        }
        FocusRingDrawable find = FocusRingDrawable.find(materialButton.getBackground());
        if (find != null) {
            find.materialShapeDrawable = new WeakReference(materialShapeDrawable4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateButtonShape() {
        /*
            r3 = this;
            r0 = 0
            com.google.android.material.shape.MaterialShapeDrawable r0 = r3.getMaterialShapeDrawable(r0)
            if (r0 == 0) goto L13
            com.google.android.material.shape.ShapeAppearance r1 = r3.shapeAppearance
            r0.setShapeAppearance(r1)
            androidx.dynamicanimation.animation.SpringForce r1 = r3.cornerSpringForce
            if (r1 == 0) goto L13
            r0.setCornerSpringForce(r1)
        L13:
            r0 = 1
            com.google.android.material.shape.MaterialShapeDrawable r0 = r3.getMaterialShapeDrawable(r0)
            if (r0 == 0) goto L26
            com.google.android.material.shape.ShapeAppearance r1 = r3.shapeAppearance
            r0.setShapeAppearance(r1)
            androidx.dynamicanimation.animation.SpringForce r1 = r3.cornerSpringForce
            if (r1 == 0) goto L26
            r0.setCornerSpringForce(r1)
        L26:
            android.graphics.drawable.RippleDrawable r0 = r3.rippleDrawable
            if (r0 == 0) goto L38
            r1 = 16908334(0x102002e, float:2.3877358E-38)
            android.graphics.drawable.Drawable r0 = r0.findDrawableByLayerId(r1)
            boolean r1 = r0 instanceof com.google.android.material.shape.Shapeable
            if (r1 == 0) goto L38
            com.google.android.material.shape.Shapeable r0 = (com.google.android.material.shape.Shapeable) r0
            goto L39
        L38:
            r0 = 0
        L39:
            if (r0 == 0) goto L55
            boolean r1 = r0 instanceof com.google.android.material.shape.MaterialShapeDrawable
            com.google.android.material.shape.ShapeAppearance r2 = r3.shapeAppearance
            if (r1 == 0) goto L4e
            com.google.android.material.shape.MaterialShapeDrawable r0 = (com.google.android.material.shape.MaterialShapeDrawable) r0
            r0.setShapeAppearance(r2)
            androidx.dynamicanimation.animation.SpringForce r3 = r3.cornerSpringForce
            if (r3 == 0) goto L55
            r0.setCornerSpringForce(r3)
            return
        L4e:
            com.google.android.material.shape.ShapeAppearanceModel r3 = r2.getDefaultShape()
            r0.setShapeAppearanceModel(r3)
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonHelper.updateButtonShape():void");
    }

    public final void updateStroke() {
        int i = 0;
        MaterialShapeDrawable materialShapeDrawable = getMaterialShapeDrawable(false);
        MaterialShapeDrawable materialShapeDrawable2 = getMaterialShapeDrawable(true);
        if (materialShapeDrawable != null) {
            float f = this.strokeWidth;
            ColorStateList colorStateList = this.strokeColor;
            materialShapeDrawable.drawableState.strokeWidth = f;
            materialShapeDrawable.invalidateSelf();
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
            if (materialShapeDrawableState.strokeColor != colorStateList) {
                materialShapeDrawableState.strokeColor = colorStateList;
                materialShapeDrawable.onStateChange(materialShapeDrawable.getState());
            }
            if (materialShapeDrawable2 != null) {
                float f2 = this.strokeWidth;
                if (this.shouldDrawSurfaceColorStroke) {
                    MaterialButton materialButton = this.materialButton;
                    i = UStringsKt.resolveColor(materialButton.getContext(), Operation$State.resolveTypedValueOrThrow(materialButton, R.attr.colorSurface));
                }
                materialShapeDrawable2.drawableState.strokeWidth = f2;
                materialShapeDrawable2.invalidateSelf();
                ColorStateList valueOf = ColorStateList.valueOf(i);
                MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState2 = materialShapeDrawable2.drawableState;
                if (materialShapeDrawableState2.strokeColor != valueOf) {
                    materialShapeDrawableState2.strokeColor = valueOf;
                    materialShapeDrawable2.onStateChange(materialShapeDrawable2.getState());
                }
            }
        }
    }
}
