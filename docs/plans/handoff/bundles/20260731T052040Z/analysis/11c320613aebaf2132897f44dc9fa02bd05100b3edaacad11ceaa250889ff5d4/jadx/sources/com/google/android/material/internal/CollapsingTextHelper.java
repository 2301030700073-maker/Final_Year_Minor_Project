package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.ViewGroup;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.core.graphics.ColorUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.DisplayCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
import java.util.WeakHashMap;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CollapsingTextHelper {
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
    public int currentOffsetY;
    public int currentShadowColor;
    public float currentShadowDx;
    public float currentShadowDy;
    public float currentShadowRadius;
    public float currentTextSize;
    public Typeface currentTypeface;
    public final Rect expandedBounds;
    public float expandedDrawX;
    public float expandedDrawY;
    public CancelableFontCallback expandedFontCallback;
    public float expandedFraction;
    public float expandedLetterSpacing;
    public int expandedLineCount;
    public ColorStateList expandedShadowColor;
    public float expandedShadowDx;
    public float expandedShadowDy;
    public float expandedShadowRadius;
    public float expandedTextBlend;
    public ColorStateList expandedTextColor;
    public Bitmap expandedTitleTexture;
    public Typeface expandedTypeface;
    public Typeface expandedTypefaceBold;
    public Typeface expandedTypefaceDefault;
    public boolean fadeModeEnabled;
    public float fadeModeStartFraction;
    public float fadeModeThresholdFraction;
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
    public final ViewGroup view;
    public int expandedTextGravity = 16;
    public int collapsedTextGravity = 16;
    public float expandedTextSize = 15.0f;
    public float collapsedTextSize = 15.0f;
    public TextUtils.TruncateAt titleTextEllipsize = TextUtils.TruncateAt.END;
    public boolean isRtlTextDirectionHeuristicsEnabled = true;
    public int maxLines = 1;
    public float lineSpacingAdd = 0.0f;
    public float lineSpacingMultiplier = 1.0f;
    public int hyphenationFrequency = 1;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.internal.CollapsingTextHelper$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ CollapsingTextHelper this$0;

        public /* synthetic */ AnonymousClass1(CollapsingTextHelper collapsingTextHelper, int i) {
            this.$r8$classId = i;
            this.this$0 = collapsingTextHelper;
        }

        public final void apply(Typeface typeface) {
            int i = this.$r8$classId;
            CollapsingTextHelper collapsingTextHelper = this.this$0;
            switch (i) {
                case 0:
                    if (collapsingTextHelper.setCollapsedTypefaceInternal(typeface)) {
                        collapsingTextHelper.recalculate(false);
                        break;
                    }
                    break;
                default:
                    if (collapsingTextHelper.setExpandedTypefaceInternal(typeface)) {
                        collapsingTextHelper.recalculate(false);
                        break;
                    }
                    break;
            }
        }
    }

    public CollapsingTextHelper(ViewGroup viewGroup) {
        this.view = viewGroup;
        TextPaint textPaint = new TextPaint(129);
        this.textPaint = textPaint;
        this.tmpPaint = new TextPaint(textPaint);
        this.collapsedBounds = new Rect();
        this.expandedBounds = new Rect();
        this.currentBounds = new RectF();
        float f = this.fadeModeStartFraction;
        this.fadeModeThresholdFraction = Modifier.CC.m(1.0f, f, 0.5f, f);
        maybeUpdateFontWeightAdjustment(viewGroup.getContext().getResources().getConfiguration());
    }

    public static int blendARGB(float f, int i, int i2) {
        float f2 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i2) * f) + (Color.alpha(i) * f2)), Math.round((Color.red(i2) * f) + (Color.red(i) * f2)), Math.round((Color.green(i2) * f) + (Color.green(i) * f2)), Math.round((Color.blue(i2) * f) + (Color.blue(i) * f2)));
    }

    public static float lerp(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return AnimationUtils.lerp(f, f2, f3);
    }

    public final boolean calculateIsRtl(CharSequence charSequence) {
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        boolean z = this.view.getLayoutDirection() == 1;
        if (this.isRtlTextDirectionHeuristicsEnabled) {
            return (z ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence.length(), charSequence);
        }
        return z;
    }

    public final void calculateUsingTextSize(float f, boolean z) {
        float f2;
        float f3;
        Typeface typeface;
        boolean z2;
        Layout.Alignment alignment;
        if (this.text == null) {
            return;
        }
        float width = this.collapsedBounds.width();
        float width2 = this.expandedBounds.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            f2 = this.collapsedTextSize;
            f3 = this.collapsedLetterSpacing;
            this.scale = 1.0f;
            typeface = this.collapsedTypeface;
        } else {
            float f4 = this.expandedTextSize;
            float f5 = this.expandedLetterSpacing;
            Typeface typeface2 = this.expandedTypeface;
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                this.scale = 1.0f;
            } else {
                this.scale = lerp(this.expandedTextSize, this.collapsedTextSize, f, this.textSizeInterpolator) / this.expandedTextSize;
            }
            float f6 = this.collapsedTextSize / this.expandedTextSize;
            width = (z || this.fadeModeEnabled || width2 * f6 <= width) ? width2 : Math.min(width / f6, width2);
            f2 = f4;
            f3 = f5;
            typeface = typeface2;
        }
        TextPaint textPaint = this.textPaint;
        if (width > 0.0f) {
            boolean z3 = this.currentTextSize != f2;
            boolean z4 = this.currentLetterSpacing != f3;
            boolean z5 = this.currentTypeface != typeface;
            StaticLayout staticLayout = this.textLayout;
            boolean z6 = z3 || z4 || (staticLayout != null && (width > ((float) staticLayout.getWidth()) ? 1 : (width == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z5 || this.boundsChanged;
            this.currentTextSize = f2;
            this.currentLetterSpacing = f3;
            this.currentTypeface = typeface;
            this.boundsChanged = false;
            textPaint.setLinearText(this.scale != 1.0f);
            z2 = z6;
        } else {
            z2 = false;
        }
        if (this.textToDraw == null || z2) {
            textPaint.setTextSize(this.currentTextSize);
            textPaint.setTypeface(this.currentTypeface);
            textPaint.setLetterSpacing(this.currentLetterSpacing);
            boolean calculateIsRtl = calculateIsRtl(this.text);
            this.isRtl = calculateIsRtl;
            int i = this.maxLines;
            if (i <= 1 || (calculateIsRtl && !this.fadeModeEnabled)) {
                i = 1;
            }
            if (i == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                int absoluteGravity = Gravity.getAbsoluteGravity(this.expandedTextGravity, calculateIsRtl ? 1 : 0) & 7;
                if (absoluteGravity != 1) {
                    boolean z7 = this.isRtl;
                    alignment = absoluteGravity != 5 ? z7 ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : z7 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                } else {
                    alignment = Layout.Alignment.ALIGN_CENTER;
                }
            }
            CharSequence charSequence = this.text;
            int i2 = (int) width;
            int length = charSequence.length();
            Layout.Alignment alignment2 = Layout.Alignment.ALIGN_NORMAL;
            TextUtils.TruncateAt truncateAt = this.titleTextEllipsize;
            float f7 = this.lineSpacingAdd;
            float f8 = this.lineSpacingMultiplier;
            int i3 = this.hyphenationFrequency;
            if (charSequence == null) {
                charSequence = "";
            }
            int max = Math.max(0, i2);
            if (i == 1) {
                charSequence = TextUtils.ellipsize(charSequence, textPaint, max, truncateAt);
            }
            int min = Math.min(charSequence.length(), length);
            if (calculateIsRtl && i == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
            obtain.setAlignment(alignment);
            obtain.setIncludePad(false);
            obtain.setTextDirection(calculateIsRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            if (truncateAt != null) {
                obtain.setEllipsize(truncateAt);
            }
            obtain.setMaxLines(i);
            if (f7 != 0.0f || f8 != 1.0f) {
                obtain.setLineSpacing(f7, f8);
            }
            if (i > 1) {
                obtain.setHyphenationFrequency(i3);
            }
            StaticLayout build = obtain.build();
            build.getClass();
            this.textLayout = build;
            this.textToDraw = build.getText();
        }
    }

    public final void draw(Canvas canvas) {
        int save = canvas.save();
        if (this.textToDraw != null) {
            RectF rectF = this.currentBounds;
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            float f = this.currentTextSize;
            TextPaint textPaint = this.textPaint;
            textPaint.setTextSize(f);
            float f2 = this.currentDrawX;
            float f3 = this.currentDrawY;
            float f4 = this.scale;
            if (f4 != 1.0f && !this.fadeModeEnabled) {
                canvas.scale(f4, f4, f2, f3);
            }
            if (this.maxLines <= 1 || ((this.isRtl && !this.fadeModeEnabled) || (this.fadeModeEnabled && this.expandedFraction <= this.fadeModeThresholdFraction))) {
                canvas.translate(f2, f3);
                this.textLayout.draw(canvas);
            } else {
                float lineStart = this.currentDrawX - this.textLayout.getLineStart(0);
                int alpha = textPaint.getAlpha();
                canvas.translate(lineStart, f3);
                if (!this.fadeModeEnabled) {
                    textPaint.setAlpha((int) (this.expandedTextBlend * alpha));
                    if (Build.VERSION.SDK_INT >= 31) {
                        float f5 = this.currentShadowRadius;
                        float f6 = this.currentShadowDx;
                        float f7 = this.currentShadowDy;
                        int i = this.currentShadowColor;
                        textPaint.setShadowLayer(f5, f6, f7, ColorUtils.setAlphaComponent(i, (Color.alpha(i) * textPaint.getAlpha()) / 255));
                    }
                    this.textLayout.draw(canvas);
                }
                if (!this.fadeModeEnabled) {
                    textPaint.setAlpha((int) (this.collapsedTextBlend * alpha));
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 31) {
                    float f8 = this.currentShadowRadius;
                    float f9 = this.currentShadowDx;
                    float f10 = this.currentShadowDy;
                    int i3 = this.currentShadowColor;
                    textPaint.setShadowLayer(f8, f9, f10, ColorUtils.setAlphaComponent(i3, (Color.alpha(i3) * textPaint.getAlpha()) / 255));
                }
                int lineBaseline = this.textLayout.getLineBaseline(0);
                CharSequence charSequence = this.textToDrawCollapsed;
                float f11 = lineBaseline;
                canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f11, textPaint);
                if (i2 >= 31) {
                    textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, this.currentShadowColor);
                }
                if (!this.fadeModeEnabled) {
                    String trim = this.textToDrawCollapsed.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = Owner.CC.m(1, 0, trim);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(this.textLayout.getLineEnd(0), str.length()), 0.0f, f11, (Paint) textPaint);
                }
                canvas = canvas;
            }
            canvas.restoreToCount(save);
        }
    }

    public final float getCollapsedTextHeight() {
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
        float f;
        StaticLayout staticLayout;
        ViewGroup viewGroup = this.view;
        if ((viewGroup.getHeight() <= 0 || viewGroup.getWidth() <= 0) && !z) {
            return;
        }
        calculateUsingTextSize(1.0f, z);
        CharSequence charSequence = this.textToDraw;
        TextPaint textPaint = this.textPaint;
        if (charSequence != null && (staticLayout = this.textLayout) != null) {
            this.textToDrawCollapsed = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.titleTextEllipsize);
        }
        CharSequence charSequence2 = this.textToDrawCollapsed;
        if (charSequence2 != null) {
            this.collapsedTextWidth = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.collapsedTextWidth = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.collapsedTextGravity, this.isRtl ? 1 : 0);
        int i = absoluteGravity & Token.ASSIGN_MOD;
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
        calculateUsingTextSize(0.0f, z);
        float height = this.textLayout != null ? r1.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.textLayout;
        if (staticLayout2 == null || this.maxLines <= 1) {
            CharSequence charSequence3 = this.textToDraw;
            measureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            measureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.textLayout;
        this.expandedLineCount = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.expandedTextGravity, this.isRtl ? 1 : 0);
        int i3 = absoluteGravity2 & Token.ASSIGN_MOD;
        Rect rect2 = this.expandedBounds;
        if (i3 == 48) {
            this.expandedDrawY = rect2.top;
        } else if (i3 != 80) {
            this.expandedDrawY = rect2.centerY() - (height / 2.0f);
        } else {
            this.expandedDrawY = textPaint.descent() + (rect2.bottom - height);
        }
        int i4 = absoluteGravity2 & 8388615;
        if (i4 == 1) {
            this.expandedDrawX = rect2.centerX() - (measureText / 2.0f);
        } else if (i4 != 5) {
            this.expandedDrawX = rect2.left;
        } else {
            this.expandedDrawX = rect2.right - measureText;
        }
        Bitmap bitmap = this.expandedTitleTexture;
        if (bitmap != null) {
            bitmap.recycle();
            this.expandedTitleTexture = null;
        }
        setInterpolatedTextSize(this.expandedFraction);
        float f2 = this.expandedFraction;
        boolean z2 = this.fadeModeEnabled;
        RectF rectF = this.currentBounds;
        if (z2) {
            if (f2 < this.fadeModeThresholdFraction) {
                rect = rect2;
            }
            rectF.set(rect);
        } else {
            rectF.left = lerp(rect2.left, rect.left, f2, this.positionInterpolator);
            rectF.top = lerp(this.expandedDrawY, this.collapsedDrawY, f2, this.positionInterpolator);
            rectF.right = lerp(rect2.right, rect.right, f2, this.positionInterpolator);
            rectF.bottom = lerp(rect2.bottom, rect.bottom, f2, this.positionInterpolator);
        }
        if (!this.fadeModeEnabled) {
            this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, f2, this.positionInterpolator);
            this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, f2, this.positionInterpolator);
            setInterpolatedTextSize(f2);
            f = f2;
        } else if (f2 < this.fadeModeThresholdFraction) {
            this.currentDrawX = this.expandedDrawX;
            this.currentDrawY = this.expandedDrawY;
            setInterpolatedTextSize(0.0f);
            f = 0.0f;
        } else {
            this.currentDrawX = this.collapsedDrawX;
            this.currentDrawY = this.collapsedDrawY - Math.max(0, this.currentOffsetY);
            setInterpolatedTextSize(1.0f);
            f = 1.0f;
        }
        FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
        this.collapsedTextBlend = 1.0f - lerp(0.0f, 1.0f, 1.0f - f2, fastOutSlowInInterpolator);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        viewGroup.postInvalidateOnAnimation();
        this.expandedTextBlend = lerp(1.0f, 0.0f, f2, fastOutSlowInInterpolator);
        viewGroup.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.collapsedTextColor;
        ColorStateList colorStateList2 = this.expandedTextColor;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(blendARGB(f, getCurrentColor(colorStateList2), getCurrentColor(this.collapsedTextColor)));
        } else {
            textPaint.setColor(getCurrentColor(colorStateList));
        }
        float f3 = this.collapsedLetterSpacing;
        float f4 = this.expandedLetterSpacing;
        if (f3 != f4) {
            textPaint.setLetterSpacing(lerp(f4, f3, f2, fastOutSlowInInterpolator));
        } else {
            textPaint.setLetterSpacing(f3);
        }
        this.currentShadowRadius = AnimationUtils.lerp(this.expandedShadowRadius, this.collapsedShadowRadius, f2);
        this.currentShadowDx = AnimationUtils.lerp(this.expandedShadowDx, this.collapsedShadowDx, f2);
        this.currentShadowDy = AnimationUtils.lerp(this.expandedShadowDy, this.collapsedShadowDy, f2);
        int blendARGB = blendARGB(f2, getCurrentColor(this.expandedShadowColor), getCurrentColor(this.collapsedShadowColor));
        this.currentShadowColor = blendARGB;
        textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, blendARGB);
        if (this.fadeModeEnabled) {
            int alpha = textPaint.getAlpha();
            float f5 = this.fadeModeThresholdFraction;
            textPaint.setAlpha((int) ((f2 <= f5 ? AnimationUtils.lerp(1.0f, 0.0f, this.fadeModeStartFraction, f5, f2) : AnimationUtils.lerp(0.0f, 1.0f, f5, 1.0f, f2)) * alpha));
        }
        viewGroup.postInvalidateOnAnimation();
    }

    public final void setCollapsedAndExpandedTextColor(ColorStateList colorStateList) {
        if (this.collapsedTextColor == colorStateList && this.expandedTextColor == colorStateList) {
            return;
        }
        this.collapsedTextColor = colorStateList;
        this.expandedTextColor = colorStateList;
        recalculate(false);
    }

    public final void setCollapsedTextAppearance(int i) {
        ViewGroup viewGroup = this.view;
        TextAppearance textAppearance = new TextAppearance(viewGroup.getContext(), i);
        ColorStateList colorStateList = textAppearance.textColor;
        if (colorStateList != null) {
            this.collapsedTextColor = colorStateList;
        }
        float f = textAppearance.textSize;
        if (f != 0.0f) {
            this.collapsedTextSize = f;
        }
        ColorStateList colorStateList2 = textAppearance.shadowColor;
        if (colorStateList2 != null) {
            this.collapsedShadowColor = colorStateList2;
        }
        this.collapsedShadowDx = textAppearance.shadowDx;
        this.collapsedShadowDy = textAppearance.shadowDy;
        this.collapsedShadowRadius = textAppearance.shadowRadius;
        this.collapsedLetterSpacing = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.collapsedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, 0);
        textAppearance.createFallbackFont();
        this.collapsedFontCallback = new CancelableFontCallback(anonymousClass1, textAppearance.font);
        textAppearance.getFontAsync(viewGroup.getContext(), this.collapsedFontCallback);
        recalculate(false);
    }

    public final void setCollapsedTextGravity(int i) {
        if (this.collapsedTextGravity != i) {
            this.collapsedTextGravity = i;
            recalculate(false);
        }
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

    public final void setExpandedTextAppearance(int i) {
        ViewGroup viewGroup = this.view;
        TextAppearance textAppearance = new TextAppearance(viewGroup.getContext(), i);
        ColorStateList colorStateList = textAppearance.textColor;
        if (colorStateList != null) {
            this.expandedTextColor = colorStateList;
        }
        float f = textAppearance.textSize;
        if (f != 0.0f) {
            this.expandedTextSize = f;
        }
        ColorStateList colorStateList2 = textAppearance.shadowColor;
        if (colorStateList2 != null) {
            this.expandedShadowColor = colorStateList2;
        }
        this.expandedShadowDx = textAppearance.shadowDx;
        this.expandedShadowDy = textAppearance.shadowDy;
        this.expandedShadowRadius = textAppearance.shadowRadius;
        this.expandedLetterSpacing = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.expandedFontCallback;
        int i2 = 1;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, i2);
        textAppearance.createFallbackFont();
        this.expandedFontCallback = new CancelableFontCallback(anonymousClass1, textAppearance.font);
        textAppearance.getFontAsync(viewGroup.getContext(), this.expandedFontCallback);
        recalculate(false);
    }

    public final boolean setExpandedTypefaceInternal(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.expandedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancelled = true;
        }
        if (this.expandedTypefaceDefault == typeface) {
            return false;
        }
        this.expandedTypefaceDefault = typeface;
        Typeface maybeCopyWithFontWeightAdjustment = DisplayCompat.maybeCopyWithFontWeightAdjustment(this.view.getContext().getResources().getConfiguration(), typeface);
        this.expandedTypefaceBold = maybeCopyWithFontWeightAdjustment;
        if (maybeCopyWithFontWeightAdjustment == null) {
            maybeCopyWithFontWeightAdjustment = this.expandedTypefaceDefault;
        }
        this.expandedTypeface = maybeCopyWithFontWeightAdjustment;
        return true;
    }

    public final void setExpansionFraction(float f) {
        float f2;
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.expandedFraction) {
            this.expandedFraction = f;
            boolean z = this.fadeModeEnabled;
            Rect rect = this.collapsedBounds;
            Rect rect2 = this.expandedBounds;
            RectF rectF = this.currentBounds;
            if (z) {
                if (f < this.fadeModeThresholdFraction) {
                    rect = rect2;
                }
                rectF.set(rect);
            } else {
                rectF.left = lerp(rect2.left, rect.left, f, this.positionInterpolator);
                rectF.top = lerp(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
                rectF.right = lerp(rect2.right, rect.right, f, this.positionInterpolator);
                rectF.bottom = lerp(rect2.bottom, rect.bottom, f, this.positionInterpolator);
            }
            if (!this.fadeModeEnabled) {
                this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, f, this.positionInterpolator);
                this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
                setInterpolatedTextSize(f);
                f2 = f;
            } else if (f < this.fadeModeThresholdFraction) {
                this.currentDrawX = this.expandedDrawX;
                this.currentDrawY = this.expandedDrawY;
                setInterpolatedTextSize(0.0f);
                f2 = 0.0f;
            } else {
                this.currentDrawX = this.collapsedDrawX;
                this.currentDrawY = this.collapsedDrawY - Math.max(0, this.currentOffsetY);
                setInterpolatedTextSize(1.0f);
                f2 = 1.0f;
            }
            FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
            this.collapsedTextBlend = 1.0f - lerp(0.0f, 1.0f, 1.0f - f, fastOutSlowInInterpolator);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewGroup viewGroup = this.view;
            viewGroup.postInvalidateOnAnimation();
            this.expandedTextBlend = lerp(1.0f, 0.0f, f, fastOutSlowInInterpolator);
            viewGroup.postInvalidateOnAnimation();
            ColorStateList colorStateList = this.collapsedTextColor;
            ColorStateList colorStateList2 = this.expandedTextColor;
            TextPaint textPaint = this.textPaint;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(blendARGB(f2, getCurrentColor(colorStateList2), getCurrentColor(this.collapsedTextColor)));
            } else {
                textPaint.setColor(getCurrentColor(colorStateList));
            }
            float f3 = this.collapsedLetterSpacing;
            float f4 = this.expandedLetterSpacing;
            if (f3 != f4) {
                textPaint.setLetterSpacing(lerp(f4, f3, f, fastOutSlowInInterpolator));
            } else {
                textPaint.setLetterSpacing(f3);
            }
            this.currentShadowRadius = AnimationUtils.lerp(this.expandedShadowRadius, this.collapsedShadowRadius, f);
            this.currentShadowDx = AnimationUtils.lerp(this.expandedShadowDx, this.collapsedShadowDx, f);
            this.currentShadowDy = AnimationUtils.lerp(this.expandedShadowDy, this.collapsedShadowDy, f);
            int blendARGB = blendARGB(f, getCurrentColor(this.expandedShadowColor), getCurrentColor(this.collapsedShadowColor));
            this.currentShadowColor = blendARGB;
            textPaint.setShadowLayer(this.currentShadowRadius, this.currentShadowDx, this.currentShadowDy, blendARGB);
            if (this.fadeModeEnabled) {
                int alpha = textPaint.getAlpha();
                float f5 = this.fadeModeThresholdFraction;
                textPaint.setAlpha((int) ((f <= f5 ? AnimationUtils.lerp(1.0f, 0.0f, this.fadeModeStartFraction, f5, f) : AnimationUtils.lerp(0.0f, 1.0f, f5, 1.0f, f)) * alpha));
            }
            viewGroup.postInvalidateOnAnimation();
        }
    }

    public final void setInterpolatedTextSize(float f) {
        calculateUsingTextSize(f, false);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        this.view.postInvalidateOnAnimation();
    }
}
