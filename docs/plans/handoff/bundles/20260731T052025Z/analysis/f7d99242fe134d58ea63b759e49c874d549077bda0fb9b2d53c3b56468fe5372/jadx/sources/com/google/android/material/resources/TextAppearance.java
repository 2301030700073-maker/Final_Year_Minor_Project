package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.R$styleable;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.content.res.CamUtils;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.DisplayCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextAppearance {
    public Typeface font;
    public final String fontFamily;
    public final int fontFamilyResourceId;
    public String fontVariationSettings;
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
    public boolean fontResolved = false;
    public boolean systemFontLoadAttempted = false;

    public TextAppearance(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.TextAppearance);
        this.textSize = obtainStyledAttributes.getDimension(0, 0.0f);
        this.textColor = IntOffsetKt.getColorStateList(context, obtainStyledAttributes, 3);
        IntOffsetKt.getColorStateList(context, obtainStyledAttributes, 4);
        IntOffsetKt.getColorStateList(context, obtainStyledAttributes, 5);
        this.textStyle = obtainStyledAttributes.getInt(2, 0);
        this.typeface = obtainStyledAttributes.getInt(1, 1);
        int i2 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.fontFamilyResourceId = obtainStyledAttributes.getResourceId(i2, 0);
        this.fontFamily = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(14, false);
        this.shadowColor = IntOffsetKt.getColorStateList(context, obtainStyledAttributes, 6);
        this.shadowDx = obtainStyledAttributes.getFloat(7, 0.0f);
        this.shadowDy = obtainStyledAttributes.getFloat(8, 0.0f);
        this.shadowRadius = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, com.google.android.material.R$styleable.MaterialTextAppearance);
        this.hasLetterSpacing = obtainStyledAttributes2.hasValue(0);
        this.letterSpacing = obtainStyledAttributes2.getFloat(0, 0.0f);
        if (Build.VERSION.SDK_INT >= 26) {
            this.fontVariationSettings = obtainStyledAttributes2.getString(obtainStyledAttributes2.hasValue(3) ? 3 : 1);
        }
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

    public final void getFontAsync(Context context, final IntRectKt intRectKt) {
        if (!maybeLoadFontSynchronously(context)) {
            createFallbackFont();
        }
        int i = this.fontFamilyResourceId;
        if (i == 0) {
            this.fontResolved = true;
        }
        if (this.fontResolved) {
            intRectKt.onFontRetrieved(this.font, true);
            return;
        }
        try {
            CamUtils camUtils = new CamUtils() { // from class: com.google.android.material.resources.TextAppearance.1
                @Override // androidx.core.content.res.CamUtils
                public final void onFontRetrievalFailed(int i2) {
                    TextAppearance.this.fontResolved = true;
                    intRectKt.onFontRetrievalFailed(i2);
                }

                @Override // androidx.core.content.res.CamUtils
                public final void onFontRetrieved(Typeface typeface) {
                    TextAppearance textAppearance = TextAppearance.this;
                    Typeface create = Typeface.create(typeface, textAppearance.textStyle);
                    textAppearance.font = create;
                    textAppearance.fontResolved = true;
                    intRectKt.onFontRetrieved(create, false);
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
            intRectKt.onFontRetrievalFailed(1);
        } catch (Exception e) {
            Log.d("TextAppearance", "Error loading font " + this.fontFamily, e);
            this.fontResolved = true;
            intRectKt.onFontRetrievalFailed(-3);
        }
    }

    public final boolean maybeLoadFontSynchronously(Context context) {
        Context context2;
        Typeface loadFont;
        String str;
        Typeface create;
        if (this.fontResolved) {
            return true;
        }
        int i = this.fontFamilyResourceId;
        if (i != 0) {
            ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
            Typeface typeface = null;
            if (context.isRestricted()) {
                context2 = context;
                loadFont = null;
            } else {
                context2 = context;
                loadFont = ResourcesCompat.loadFont(context2, i, new TypedValue(), 0, null, false, true);
            }
            if (loadFont != null) {
                this.font = loadFont;
                this.fontResolved = true;
                return true;
            }
            if (!this.systemFontLoadAttempted) {
                this.systemFontLoadAttempted = true;
                Resources resources = context2.getResources();
                int i2 = this.fontFamilyResourceId;
                if (i2 != 0 && resources.getResourceTypeName(i2).equals("font")) {
                    try {
                        XmlResourceParser xml = resources.getXml(i2);
                        while (xml.getEventType() != 1) {
                            if (xml.getEventType() == 2 && xml.getName().equals("font-family")) {
                                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), androidx.core.R$styleable.FontFamily);
                                str = obtainAttributes.getString(7);
                                obtainAttributes.recycle();
                                break;
                            }
                            xml.next();
                        }
                    } catch (Throwable unused) {
                    }
                }
                str = null;
                if (str != null && (create = Typeface.create(str, 0)) != Typeface.DEFAULT) {
                    typeface = Typeface.create(create, this.textStyle);
                }
            }
            if (typeface != null) {
                this.font = typeface;
                this.fontResolved = true;
                return true;
            }
        }
        return false;
    }

    public final void updateDrawState(Context context, TextPaint textPaint, IntRectKt intRectKt) {
        updateMeasureState(context, textPaint, intRectKt);
        ColorStateList colorStateList = this.textColor;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.shadowColor;
        textPaint.setShadowLayer(this.shadowRadius, this.shadowDx, this.shadowDy, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void updateMeasureState(final Context context, final TextPaint textPaint, final IntRectKt intRectKt) {
        Typeface typeface;
        if (maybeLoadFontSynchronously(context) && this.fontResolved && (typeface = this.font) != null) {
            updateTextPaintMeasureState(context, textPaint, typeface);
            return;
        }
        createFallbackFont();
        updateTextPaintMeasureState(context, textPaint, this.font);
        getFontAsync(context, new IntRectKt() { // from class: com.google.android.material.resources.TextAppearance.2
            @Override // androidx.compose.ui.unit.IntRectKt
            public final void onFontRetrievalFailed(int i) {
                intRectKt.onFontRetrievalFailed(i);
            }

            @Override // androidx.compose.ui.unit.IntRectKt
            public final void onFontRetrieved(Typeface typeface2, boolean z) {
                TextAppearance.this.updateTextPaintMeasureState(context, textPaint, typeface2);
                intRectKt.onFontRetrieved(typeface2, z);
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
        if (Build.VERSION.SDK_INT >= 26) {
            textPaint.setFontVariationSettings(null);
            textPaint.setFontVariationSettings(this.fontVariationSettings);
        }
        if (this.hasLetterSpacing) {
            textPaint.setLetterSpacing(this.letterSpacing);
        }
    }
}
