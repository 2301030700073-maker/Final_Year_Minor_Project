package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.DisplayCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.textfield.TextInputLayout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CollapsingTextHelper {
    public boolean alignBaselineAtBottom;
    public boolean boundsChanged;
    public final Rect collapsedBounds;
    public float collapsedDrawX;
    public float collapsedDrawY;
    public CancelableFontCallback collapsedFontCallback;
    public float collapsedLetterSpacing;
    public ColorStateList collapsedShadowColor;
    public float collapsedShadowDx;
    public float collapsedShadowDy;
    public float collapsedShadowRadius;
    public float collapsedTextBlend;
    public ColorStateList collapsedTextColor;
    public float collapsedTextWidth;
    public Typeface collapsedTypeface;
    public Typeface collapsedTypefaceBold;
    public Typeface collapsedTypefaceDefault;
    public final RectF currentBounds;
    public float currentDrawX;
    public float currentDrawY;
    public float currentLetterSpacing;
    public int currentMaxLines;
    public int currentShadowColor;
    public float currentShadowDx;
    public float currentShadowDy;
    public float currentShadowRadius;
    public float currentTextSize;
    public Typeface currentTypeface;
    public final Rect expandedBounds;
    public float expandedDrawX;
    public float expandedDrawY;
    public float expandedFraction;
    public float expandedLetterSpacing;
    public int expandedLineCount;
    public float expandedTextBlend;
    public ColorStateList expandedTextColor;
    public Typeface expandedTypeface;
    public Typeface expandedTypefaceBold;
    public Typeface expandedTypefaceDefault;
    public boolean isRtl;
    public TimeInterpolator positionInterpolator;
    public float scale;
    public int[] state;
    public CharSequence text;
    public StaticLayout textLayout;
    public final TextPaint textPaint;
    public TimeInterpolator textSizeInterpolator;
    public CharSequence textToDraw;
    public CharSequence textToDrawCollapsed;
    public final TextPaint tmpPaint;
    public final TextInputLayout view;
    public int expandedTextGravity = 16;
    public int collapsedTextGravity = 16;
    public float expandedTextSize = 15.0f;
    public float collapsedTextSize = 15.0f;
    public final TextUtils.TruncateAt titleTextEllipsize = TextUtils.TruncateAt.END;
    public final boolean isRtlTextDirectionHeuristicsEnabled = true;
    public int expandedMaxLines = 1;
    public int collapsedMaxLines = 1;
    public final float lineSpacingMultiplier = 1.0f;
    public final int hyphenationFrequency = 1;
    public int collapsedHeight = -1;
    public int expandedHeight = -1;

    public CollapsingTextHelper(TextInputLayout textInputLayout) {
        this.view = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.textPaint = textPaint;
        this.tmpPaint = new TextPaint(textPaint);
        this.collapsedBounds = new Rect();
        this.expandedBounds = new Rect();
        this.currentBounds = new RectF();
        maybeUpdateFontWeightAdjustment(textInputLayout.getContext().getResources().getConfiguration());
    }

    public static int blendARGB(int i, float f, int i2) {
        float f2 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), Math.round((Color.red(i2) * f) + (Color.red(i) * f2)), Math.round((Color.green(i2) * f) + (Color.green(i) * f2)), Math.round((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    public static float lerp(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return AnimationUtils.lerp(f, f2, f3);
    }

    public final void calculateCurrentOffsets() {
        float f = this.expandedFraction;
        float f2 = this.expandedBounds.left;
        Rect rect = this.collapsedBounds;
        float lerp = lerp(f2, rect.left, f, this.positionInterpolator);
        RectF rectF = this.currentBounds;
        rectF.left = lerp;
        rectF.top = lerp(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
        rectF.right = lerp(r1.right, rect.right, f, this.positionInterpolator);
        rectF.bottom = lerp(r1.bottom, rect.bottom, f, this.positionInterpolator);
        this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, f, this.positionInterpolator);
        this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
        calculateUsingTextSize(f, false);
        TextInputLayout textInputLayout = this.view;
        textInputLayout.postInvalidateOnAnimation();
        float f3 = this.collapsedLetterSpacing;
        float f4 = this.expandedLetterSpacing;
        TextPaint textPaint = this.textPaint;
        if (f3 != f4) {
            textPaint.setLetterSpacing(lerp(f4, f3, f, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        } else {
            textPaint.setLetterSpacing(f3);
        }
        FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
        this.collapsedTextBlend = 1.0f - lerp(0.0f, 1.0f, 1.0f - f, fastOutSlowInInterpolator);
        textInputLayout.postInvalidateOnAnimation();
        this.expandedTextBlend = lerp(1.0f, 0.0f, f, fastOutSlowInInterpolator);
        textInputLayout.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.collapsedTextColor;
        ColorStateList colorStateList2 = this.expandedTextColor;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(blendARGB(getCurrentColor(colorStateList2), f, getCurrentColor(this.collapsedTextColor)));
        } else {
            textPaint.setColor(getCurrentColor(colorStateList));
        }
        this.currentShadowRadius = AnimationUtils.lerp(0.0f, this.collapsedShadowRadius, f);
        this.currentShadowDx = AnimationUtils.lerp(0.0f, this.collapsedShadowDx, f);
        this.currentShadowDy = AnimationUtils.lerp(0.0f, this.collapsedShadowDy, f);
        int blendARGB = blendARGB(0, f, getCurrentColor(this.collapsedShadowColor));
        this.currentShadowColor = blendARGB;
        textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, blendARGB);
        textInputLayout.postInvalidateOnAnimation();
    }

    public final boolean calculateIsRtl(CharSequence charSequence) {
        boolean z = this.view.getLayoutDirection() == 1;
        if (this.isRtlTextDirectionHeuristicsEnabled) {
            return (z ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence.length(), charSequence);
        }
        return z;
    }

    public final void calculateUsingTextSize(float f, boolean z) {
        float f2;
        Typeface typeface;
        float f3;
        if (this.text == null) {
            return;
        }
        float width = this.collapsedBounds.width();
        float width2 = this.expandedBounds.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            f2 = shouldTruncateCollapsedToSingleLine() ? this.collapsedTextSize : this.expandedTextSize;
            f3 = shouldTruncateCollapsedToSingleLine() ? this.collapsedLetterSpacing : this.expandedLetterSpacing;
            this.scale = shouldTruncateCollapsedToSingleLine() ? 1.0f : lerp(this.expandedTextSize, this.collapsedTextSize, f, this.textSizeInterpolator) / this.expandedTextSize;
            if (!shouldTruncateCollapsedToSingleLine()) {
                width = width2;
            }
            typeface = this.collapsedTypeface;
            width2 = width;
        } else {
            f2 = this.expandedTextSize;
            float f4 = this.expandedLetterSpacing;
            typeface = this.expandedTypeface;
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                this.scale = 1.0f;
            } else {
                this.scale = lerp(this.expandedTextSize, this.collapsedTextSize, f, this.textSizeInterpolator) / this.expandedTextSize;
            }
            float f5 = this.collapsedTextSize / this.expandedTextSize;
            float f6 = width2 * f5;
            if (!z && f6 > width && shouldTruncateCollapsedToSingleLine()) {
                width2 = Math.min(width / f5, width2);
            }
            f3 = f4;
        }
        int i = f < 0.5f ? this.expandedMaxLines : this.collapsedMaxLines;
        TextPaint textPaint = this.textPaint;
        if (width2 > 0.0f) {
            boolean z2 = this.currentTextSize != f2;
            boolean z3 = this.currentLetterSpacing != f3;
            boolean z4 = this.currentTypeface != typeface;
            StaticLayout staticLayout = this.textLayout;
            boolean z5 = z2 || z3 || (staticLayout != null && (width2 > ((float) staticLayout.getWidth()) ? 1 : (width2 == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z4 || (this.currentMaxLines != i) || this.boundsChanged;
            this.currentTextSize = f2;
            this.currentLetterSpacing = f3;
            this.currentTypeface = typeface;
            this.boundsChanged = false;
            this.currentMaxLines = i;
            textPaint.setLinearText(this.scale != 1.0f);
            r7 = z5;
        }
        if (this.textToDraw == null || r7) {
            textPaint.setTextSize(this.currentTextSize);
            textPaint.setTypeface(this.currentTypeface);
            textPaint.setLetterSpacing(this.currentLetterSpacing);
            boolean calculateIsRtl = calculateIsRtl(this.text);
            this.isRtl = calculateIsRtl;
            StaticLayout createStaticLayout = createStaticLayout(((this.expandedMaxLines > 1 || this.collapsedMaxLines > 1) && !calculateIsRtl) ? i : 1, textPaint, this.text, width2 * (shouldTruncateCollapsedToSingleLine() ? 1.0f : this.scale), this.isRtl);
            this.textLayout = createStaticLayout;
            this.textToDraw = createStaticLayout.getText();
        }
    }

    public final StaticLayout createStaticLayout(int i, TextPaint textPaint, CharSequence charSequence, float f, boolean z) {
        Layout.Alignment alignment;
        if (i == 1) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(this.expandedTextGravity, this.isRtl ? 1 : 0) & 7;
            if (absoluteGravity != 1) {
                boolean z2 = this.isRtl;
                alignment = absoluteGravity != 5 ? z2 ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : z2 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
        }
        StaticLayoutBuilderCompat staticLayoutBuilderCompat = new StaticLayoutBuilderCompat(charSequence, textPaint, (int) f);
        staticLayoutBuilderCompat.ellipsize = this.titleTextEllipsize;
        staticLayoutBuilderCompat.isRtl = z;
        staticLayoutBuilderCompat.alignment = alignment;
        staticLayoutBuilderCompat.includePad = false;
        staticLayoutBuilderCompat.maxLines = i;
        staticLayoutBuilderCompat.lineSpacingAdd = 0.0f;
        staticLayoutBuilderCompat.lineSpacingMultiplier = this.lineSpacingMultiplier;
        staticLayoutBuilderCompat.hyphenationFrequency = this.hyphenationFrequency;
        staticLayoutBuilderCompat.staticLayoutBuilderConfigurer = null;
        StaticLayout build = staticLayoutBuilderCompat.build();
        build.getClass();
        return build;
    }

    public final float getCollapsedTextHeight() {
        int i = this.collapsedHeight;
        if (i != -1) {
            return i;
        }
        float f = this.collapsedTextSize;
        TextPaint textPaint = this.tmpPaint;
        textPaint.setTextSize(f);
        textPaint.setTypeface(this.collapsedTypeface);
        textPaint.setLetterSpacing(this.collapsedLetterSpacing);
        return -textPaint.ascent();
    }

    public final int getCurrentColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.state;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void maybeUpdateFontWeightAdjustment(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.collapsedTypefaceDefault;
            if (typeface != null) {
                this.collapsedTypefaceBold = DisplayCompat.maybeCopyWithFontWeightAdjustment(configuration, typeface);
            }
            Typeface typeface2 = this.expandedTypefaceDefault;
            if (typeface2 != null) {
                this.expandedTypefaceBold = DisplayCompat.maybeCopyWithFontWeightAdjustment(configuration, typeface2);
            }
            Typeface typeface3 = this.collapsedTypefaceBold;
            if (typeface3 == null) {
                typeface3 = this.collapsedTypefaceDefault;
            }
            this.collapsedTypeface = typeface3;
            Typeface typeface4 = this.expandedTypefaceBold;
            if (typeface4 == null) {
                typeface4 = this.expandedTypefaceDefault;
            }
            this.expandedTypeface = typeface4;
            recalculate(true);
        }
    }

    public final void recalculate(boolean z) {
        float measureText;
        TextInputLayout textInputLayout = this.view;
        if ((textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) && !z) {
            return;
        }
        calculateUsingTextSize(1.0f, z);
        CharSequence charSequence = this.textToDraw;
        TextPaint textPaint = this.textPaint;
        if (charSequence != null && this.textLayout != null) {
            boolean shouldTruncateCollapsedToSingleLine = shouldTruncateCollapsedToSingleLine();
            CharSequence charSequence2 = this.textToDraw;
            if (shouldTruncateCollapsedToSingleLine) {
                charSequence2 = TextUtils.ellipsize(charSequence2, textPaint, this.textLayout.getWidth(), this.titleTextEllipsize);
            }
            this.textToDrawCollapsed = charSequence2;
        }
        CharSequence charSequence3 = this.textToDrawCollapsed;
        if (charSequence3 != null) {
            this.collapsedTextWidth = textPaint.measureText(charSequence3, 0, charSequence3.length());
        } else {
            this.collapsedTextWidth = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.collapsedTextGravity, this.isRtl ? 1 : 0);
        int i = absoluteGravity & 112;
        Rect rect = this.collapsedBounds;
        if (i == 48) {
            this.collapsedDrawY = rect.top;
        } else if (i != 80) {
            this.collapsedDrawY = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.collapsedDrawY = textPaint.ascent() + rect.bottom;
        }
        int i2 = absoluteGravity & 8388615;
        if (i2 == 1) {
            this.collapsedDrawX = rect.centerX() - (this.collapsedTextWidth / 2.0f);
        } else if (i2 != 5) {
            this.collapsedDrawX = rect.left;
        } else {
            this.collapsedDrawX = rect.right - this.collapsedTextWidth;
        }
        if (this.collapsedTextWidth <= rect.width()) {
            float f = this.collapsedDrawX;
            float max = Math.max(0.0f, rect.left - f) + f;
            this.collapsedDrawX = max;
            this.collapsedDrawX = Math.min(0.0f, rect.right - (this.collapsedTextWidth + max)) + max;
        }
        float f2 = this.collapsedTextSize;
        TextPaint textPaint2 = this.tmpPaint;
        textPaint2.setTextSize(f2);
        textPaint2.setTypeface(this.collapsedTypeface);
        textPaint2.setLetterSpacing(this.collapsedLetterSpacing);
        if (textPaint2.descent() + (-textPaint2.ascent()) <= rect.height()) {
            float f3 = this.collapsedDrawY;
            float max2 = Math.max(0.0f, rect.top - f3) + f3;
            this.collapsedDrawY = max2;
            this.collapsedDrawY = Math.min(0.0f, rect.bottom - (getCollapsedTextHeight() + max2)) + max2;
        }
        calculateUsingTextSize(0.0f, z);
        float height = this.textLayout != null ? r15.getHeight() : 0.0f;
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout == null || this.expandedMaxLines <= 1) {
            CharSequence charSequence4 = this.textToDraw;
            measureText = charSequence4 != null ? textPaint.measureText(charSequence4, 0, charSequence4.length()) : 0.0f;
        } else {
            measureText = staticLayout.getWidth();
        }
        StaticLayout staticLayout2 = this.textLayout;
        this.expandedLineCount = staticLayout2 != null ? staticLayout2.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.expandedTextGravity, this.isRtl ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        Rect rect2 = this.expandedBounds;
        if (i3 == 48) {
            this.expandedDrawY = rect2.top;
        } else if (i3 != 80) {
            this.expandedDrawY = rect2.centerY() - (height / 2.0f);
        } else {
            this.expandedDrawY = (rect2.bottom - height) + (this.alignBaselineAtBottom ? textPaint.descent() : 0.0f);
        }
        int i4 = absoluteGravity2 & 8388615;
        if (i4 == 1) {
            this.expandedDrawX = rect2.centerX() - (measureText / 2.0f);
        } else if (i4 != 5) {
            this.expandedDrawX = rect2.left;
        } else {
            this.expandedDrawX = rect2.right - measureText;
        }
        calculateUsingTextSize(this.expandedFraction, false);
        textInputLayout.postInvalidateOnAnimation();
        calculateCurrentOffsets();
    }

    public final void setCollapsedAndExpandedTextColor(ColorStateList colorStateList) {
        if (this.collapsedTextColor == colorStateList && this.expandedTextColor == colorStateList) {
            return;
        }
        this.collapsedTextColor = colorStateList;
        this.expandedTextColor = colorStateList;
        recalculate(false);
    }

    public final boolean setCollapsedTypefaceInternal(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.collapsedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        if (this.collapsedTypefaceDefault == typeface) {
            return false;
        }
        this.collapsedTypefaceDefault = typeface;
        Typeface maybeCopyWithFontWeightAdjustment = DisplayCompat.maybeCopyWithFontWeightAdjustment(this.view.getContext().getResources().getConfiguration(), typeface);
        this.collapsedTypefaceBold = maybeCopyWithFontWeightAdjustment;
        if (maybeCopyWithFontWeightAdjustment == null) {
            maybeCopyWithFontWeightAdjustment = this.collapsedTypefaceDefault;
        }
        this.collapsedTypeface = maybeCopyWithFontWeightAdjustment;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000b, code lost:
    
        if (r3 > 1.0f) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setExpansionFraction(float r3) {
        /*
            r2 = this;
            r0 = 0
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 >= 0) goto L7
        L5:
            r3 = r0
            goto Le
        L7:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 <= 0) goto Le
            goto L5
        Le:
            float r0 = r2.expandedFraction
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 == 0) goto L19
            r2.expandedFraction = r3
            r2.calculateCurrentOffsets()
        L19:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.internal.CollapsingTextHelper.setExpansionFraction(float):void");
    }

    public final void setTypefaces(Typeface typeface) {
        boolean z;
        boolean collapsedTypefaceInternal = setCollapsedTypefaceInternal(typeface);
        if (this.expandedTypefaceDefault != typeface) {
            this.expandedTypefaceDefault = typeface;
            Typeface maybeCopyWithFontWeightAdjustment = DisplayCompat.maybeCopyWithFontWeightAdjustment(this.view.getContext().getResources().getConfiguration(), typeface);
            this.expandedTypefaceBold = maybeCopyWithFontWeightAdjustment;
            if (maybeCopyWithFontWeightAdjustment == null) {
                maybeCopyWithFontWeightAdjustment = this.expandedTypefaceDefault;
            }
            this.expandedTypeface = maybeCopyWithFontWeightAdjustment;
            z = true;
        } else {
            z = false;
        }
        if (collapsedTypefaceInternal || z) {
            recalculate(false);
        }
    }

    public final boolean shouldTruncateCollapsedToSingleLine() {
        return this.collapsedMaxLines == 1;
    }
}
