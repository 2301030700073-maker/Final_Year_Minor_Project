package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {
    public WeakReference anchorViewRef;
    public final Rect badgeBounds;
    public float badgeCenterX;
    public float badgeCenterY;
    public final WeakReference contextRef;
    public float cornerRadius;
    public WeakReference customBadgeParentRef;
    public float halfBadgeHeight;
    public float halfBadgeWidth;
    public final int maxBadgeNumber;
    public final MaterialShapeDrawable shapeDrawable;
    public final BadgeState state;
    public final TextDrawableHelper textDrawableHelper;

    public BadgeDrawable(Context context) {
        TextAppearance textAppearance;
        WeakReference weakReference = new WeakReference(context);
        this.contextRef = weakReference;
        ViewUtils.checkTheme(context, ViewUtils.MATERIAL_CHECK_ATTRS, "Theme.MaterialComponents");
        this.badgeBounds = new Rect();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.textDrawableHelper = textDrawableHelper;
        Paint.Align align = Paint.Align.CENTER;
        TextPaint textPaint = textDrawableHelper.textPaint;
        textPaint.setTextAlign(align);
        BadgeState badgeState = new BadgeState(context);
        this.state = badgeState;
        boolean hasBadgeContent = hasBadgeContent();
        BadgeState.State state = badgeState.currentState;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context, hasBadgeContent ? state.badgeWithTextShapeAppearanceResId.intValue() : state.badgeShapeAppearanceResId.intValue(), hasBadgeContent() ? state.badgeWithTextShapeAppearanceOverlayResId.intValue() : state.badgeShapeAppearanceOverlayResId.intValue(), new AbsoluteCornerSize(0.0f)).build());
        this.shapeDrawable = materialShapeDrawable;
        onBadgeShapeAppearanceUpdated();
        Context context2 = (Context) weakReference.get();
        if (context2 != null && textDrawableHelper.textAppearance != (textAppearance = new TextAppearance(context2, state.badgeTextAppearanceResId.intValue()))) {
            textDrawableHelper.setTextAppearance(textAppearance, context2);
            textPaint.setColor(state.badgeTextColor.intValue());
            invalidateSelf();
            updateCenterAndBounds();
            invalidateSelf();
        }
        int i = state.maxCharacterCount;
        if (i != -2) {
            this.maxBadgeNumber = ((int) Math.pow(10.0d, i - 1.0d)) - 1;
        } else {
            this.maxBadgeNumber = state.maxNumber;
        }
        textDrawableHelper.textSizeDirty = true;
        updateCenterAndBounds();
        invalidateSelf();
        textDrawableHelper.textSizeDirty = true;
        onBadgeShapeAppearanceUpdated();
        updateCenterAndBounds();
        invalidateSelf();
        textPaint.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(state.backgroundColor.intValue());
        if (materialShapeDrawable.drawableState.fillColor != valueOf) {
            materialShapeDrawable.setFillColor(valueOf);
            invalidateSelf();
        }
        textPaint.setColor(state.badgeTextColor.intValue());
        invalidateSelf();
        WeakReference weakReference2 = this.anchorViewRef;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = (View) this.anchorViewRef.get();
            WeakReference weakReference3 = this.customBadgeParentRef;
            updateBadgeCoordinates(view, weakReference3 != null ? (FrameLayout) weakReference3.get() : null);
        }
        updateCenterAndBounds();
        setVisible(state.isVisible.booleanValue(), false);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        String badgeContent;
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.shapeDrawable.draw(canvas);
        if (!hasBadgeContent() || (badgeContent = getBadgeContent()) == null) {
            return;
        }
        Rect rect = new Rect();
        TextDrawableHelper textDrawableHelper = this.textDrawableHelper;
        textDrawableHelper.textPaint.getTextBounds(badgeContent, 0, badgeContent.length(), rect);
        float exactCenterY = this.badgeCenterY - rect.exactCenterY();
        canvas.drawText(badgeContent, this.badgeCenterX, rect.bottom <= 0 ? (int) exactCenterY : Math.round(exactCenterY), textDrawableHelper.textPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.state.currentState.alpha;
    }

    public final String getBadgeContent() {
        BadgeState badgeState = this.state;
        BadgeState.State state = badgeState.currentState;
        BadgeState.State state2 = badgeState.currentState;
        String str = state.text;
        WeakReference weakReference = this.contextRef;
        if (str == null) {
            if (!hasNumber()) {
                return null;
            }
            int i = this.maxBadgeNumber;
            if (i == -2 || getNumber() <= i) {
                return NumberFormat.getInstance(state2.numberLocale).format(getNumber());
            }
            Context context = (Context) weakReference.get();
            return context == null ? "" : String.format(state2.numberLocale, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(i), "+");
        }
        int i2 = state.maxCharacterCount;
        if (i2 == -2 || str == null || str.length() <= i2) {
            return str;
        }
        Context context2 = (Context) weakReference.get();
        if (context2 == null) {
            return "";
        }
        return String.format(context2.getString(R.string.m3_exceed_max_badge_text_suffix), str.substring(0, i2 - 1), "…");
    }

    public final FrameLayout getCustomBadgeParent() {
        WeakReference weakReference = this.customBadgeParentRef;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.badgeBounds.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.badgeBounds.width();
    }

    public final int getNumber() {
        int i = this.state.currentState.number;
        if (i != -1) {
            return i;
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final boolean hasBadgeContent() {
        return this.state.currentState.text != null || hasNumber();
    }

    public final boolean hasNumber() {
        BadgeState.State state = this.state.currentState;
        return state.text == null && state.number != -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    public final void onBadgeShapeAppearanceUpdated() {
        Context context = (Context) this.contextRef.get();
        if (context == null) {
            return;
        }
        boolean hasBadgeContent = hasBadgeContent();
        BadgeState badgeState = this.state;
        this.shapeDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder(context, hasBadgeContent ? badgeState.currentState.badgeWithTextShapeAppearanceResId.intValue() : badgeState.currentState.badgeShapeAppearanceResId.intValue(), hasBadgeContent() ? badgeState.currentState.badgeWithTextShapeAppearanceOverlayResId.intValue() : badgeState.currentState.badgeShapeAppearanceOverlayResId.intValue(), new AbsoluteCornerSize(0.0f)).build());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public final void onTextSizeChange() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        BadgeState badgeState = this.state;
        badgeState.overridingState.alpha = i;
        badgeState.currentState.alpha = i;
        this.textDrawableHelper.textPaint.setAlpha(getAlpha());
        invalidateSelf();
    }

    public final void updateBadgeCoordinates(View view, FrameLayout frameLayout) {
        this.anchorViewRef = new WeakReference(view);
        this.customBadgeParentRef = new WeakReference(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        updateCenterAndBounds();
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0236  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateCenterAndBounds() {
        /*
            Method dump skipped, instructions count: 734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.badge.BadgeDrawable.updateCenterAndBounds():void");
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
