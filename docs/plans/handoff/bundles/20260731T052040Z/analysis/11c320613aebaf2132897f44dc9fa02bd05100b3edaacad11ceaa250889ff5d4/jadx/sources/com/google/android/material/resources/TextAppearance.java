package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.content.res.CamUtils;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.BundleKt;
import androidx.core.view.DisplayCompat;
import androidx.work.OperationKt;
import com.google.android.material.R$styleable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextAppearance {
    public Typeface font;
    public final String fontFamily;
    public final int fontFamilyResourceId;
    public boolean fontResolved = false;
    public final boolean hasLetterSpacing;
    public final float letterSpacing;
    public final ColorStateList shadowColor;
    public final float shadowDx;
    public final float shadowDy;
    public final float shadowRadius;
    public final ColorStateList textColor;
    public float textSize;
    public final int textStyle;
    public final int typeface;

    public TextAppearance(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.TextAppearance);
        this.textSize = obtainStyledAttributes.getDimension(0, 0.0f);
        this.textColor = BundleKt.getColorStateList(context, obtainStyledAttributes, 3);
        BundleKt.getColorStateList(context, obtainStyledAttributes, 4);
        BundleKt.getColorStateList(context, obtainStyledAttributes, 5);
        this.textStyle = obtainStyledAttributes.getInt(2, 0);
        this.typeface = obtainStyledAttributes.getInt(1, 1);
        int i2 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.fontFamilyResourceId = obtainStyledAttributes.getResourceId(i2, 0);
        this.fontFamily = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(14, false);
        this.shadowColor = BundleKt.getColorStateList(context, obtainStyledAttributes, 6);
        this.shadowDx = obtainStyledAttributes.getFloat(7, 0.0f);
        this.shadowDy = obtainStyledAttributes.getFloat(8, 0.0f);
        this.shadowRadius = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, R$styleable.MaterialTextAppearance);
        this.hasLetterSpacing = obtainStyledAttributes2.hasValue(0);
        this.letterSpacing = obtainStyledAttributes2.getFloat(0, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    public final void createFallbackFont() {
        String str;
        Typeface typeface = this.font;
        int i = this.textStyle;
        if (typeface == null && (str = this.fontFamily) != null) {
            this.font = Typeface.create(str, i);
        }
        if (this.font == null) {
            int i2 = this.typeface;
            if (i2 == 1) {
                this.font = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.font = Typeface.SERIF;
            } else if (i2 != 3) {
                this.font = Typeface.DEFAULT;
            } else {
                this.font = Typeface.MONOSPACE;
            }
            this.font = Typeface.create(this.font, i);
        }
    }

    public final Typeface getFont(Context context) {
        if (this.fontResolved) {
            return this.font;
        }
        if (!context.isRestricted()) {
            try {
                int i = this.fontFamilyResourceId;
                ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
                Typeface loadFont = context.isRestricted() ? null : ResourcesCompat.loadFont(context, i, new TypedValue(), 0, null, false, false);
                this.font = loadFont;
                if (loadFont != null) {
                    this.font = Typeface.create(loadFont, this.textStyle);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e) {
                Log.d("TextAppearance", "Error loading font " + this.fontFamily, e);
            }
        }
        createFallbackFont();
        this.fontResolved = true;
        return this.font;
    }

    public final void getFontAsync(Context context, final OperationKt operationKt) {
        if (shouldLoadFontSynchronously(context)) {
            getFont(context);
        } else {
            createFallbackFont();
        }
        int i = this.fontFamilyResourceId;
        if (i == 0) {
            this.fontResolved = true;
        }
        if (this.fontResolved) {
            operationKt.onFontRetrieved(this.font, true);
            return;
        }
        try {
            CamUtils camUtils = new CamUtils() { // from class: com.google.android.material.resources.TextAppearance.1
                @Override // androidx.core.content.res.CamUtils
                public final void onFontRetrievalFailed(int i2) {
                    TextAppearance.this.fontResolved = true;
                    operationKt.onFontRetrievalFailed(i2);
                }

                @Override // androidx.core.content.res.CamUtils
                public final void onFontRetrieved(Typeface typeface) {
                    TextAppearance textAppearance = TextAppearance.this;
                    Typeface create = Typeface.create(typeface, textAppearance.textStyle);
                    textAppearance.font = create;
                    textAppearance.fontResolved = true;
                    operationKt.onFontRetrieved(create, false);
                }
            };
            ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
            if (context.isRestricted()) {
                camUtils.callbackFailAsync(-4);
            } else {
                ResourcesCompat.loadFont(context, i, new TypedValue(), 0, camUtils, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.fontResolved = true;
            operationKt.onFontRetrievalFailed(1);
        } catch (Exception e) {
            Log.d("TextAppearance", "Error loading font " + this.fontFamily, e);
            this.fontResolved = true;
            operationKt.onFontRetrievalFailed(-3);
        }
    }

    public final boolean shouldLoadFontSynchronously(Context context) {
        Typeface typeface = null;
        int i = this.fontFamilyResourceId;
        if (i != 0) {
            ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
            if (!context.isRestricted()) {
                typeface = ResourcesCompat.loadFont(context, i, new TypedValue(), 0, null, false, true);
            }
        }
        return typeface != null;
    }

    public final void updateDrawState(Context context, TextPaint textPaint, OperationKt operationKt) {
        updateMeasureState(context, textPaint, operationKt);
        ColorStateList colorStateList = this.textColor;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.shadowColor;
        textPaint.setShadowLayer(this.shadowRadius, this.shadowDx, this.shadowDy, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void updateMeasureState(final Context context, final TextPaint textPaint, final OperationKt operationKt) {
        if (shouldLoadFontSynchronously(context)) {
            updateTextPaintMeasureState(context, textPaint, getFont(context));
            return;
        }
        createFallbackFont();
        updateTextPaintMeasureState(context, textPaint, this.font);
        getFontAsync(context, new OperationKt() { // from class: com.google.android.material.resources.TextAppearance.2
            @Override // androidx.work.OperationKt
            public final void onFontRetrievalFailed(int i) {
                operationKt.onFontRetrievalFailed(i);
            }

            @Override // androidx.work.OperationKt
            public final void onFontRetrieved(Typeface typeface, boolean z) {
                TextAppearance.this.updateTextPaintMeasureState(context, textPaint, typeface);
                operationKt.onFontRetrieved(typeface, z);
            }
        });
    }

    public final void updateTextPaintMeasureState(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface maybeCopyWithFontWeightAdjustment = DisplayCompat.maybeCopyWithFontWeightAdjustment(context.getResources().getConfiguration(), typeface);
        if (maybeCopyWithFontWeightAdjustment != null) {
            typeface = maybeCopyWithFontWeightAdjustment;
        }
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.textStyle;
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.textSize);
        if (this.hasLetterSpacing) {
            textPaint.setLetterSpacing(this.letterSpacing);
        }
    }
}
