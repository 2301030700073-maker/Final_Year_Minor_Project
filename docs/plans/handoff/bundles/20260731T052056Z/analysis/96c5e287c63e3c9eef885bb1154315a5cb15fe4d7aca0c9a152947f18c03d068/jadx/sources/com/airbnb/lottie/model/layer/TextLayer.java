package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.collection.ArraySetKt;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import coil3.svg.internal.AndroidSvg;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextLayer extends BaseLayer {
    public final StringBuilder charStringBuilder;
    public final ArrayList charStrings;
    public final LongSparseArray codePointCache;
    public final TextKeyframeAnimation colorAnimation;
    public final LottieComposition composition;
    public final HashMap contentsForCharacter;
    public final LPaint fillPaint;
    public final LottieDrawable lottieDrawable;
    public final Matrix matrix;
    public final TextKeyframeAnimation opacityAnimation;
    public final RectF rectF;
    public final StringBuilder reorderingStringBuilder;
    public final StringBuilder reversingStringBuilder;
    public final StringBuilder stringBuilder;
    public final TextKeyframeAnimation strokeColorAnimation;
    public final LPaint strokePaint;
    public final TextKeyframeAnimation strokeWidthAnimation;
    public final TextKeyframeAnimation textAnimation;
    public final TextKeyframeAnimation textRangeEndAnimation;
    public final TextKeyframeAnimation textRangeOffsetAnimation;
    public final TextKeyframeAnimation textRangeStartAnimation;
    public final TextRangeUnits textRangeUnits;
    public final ArrayList textSubLines;
    public final TextKeyframeAnimation trackingAnimation;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.airbnb.lottie.model.layer.TextLayer$3, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TextSubLine {
        public String text;
        public float width;
    }

    public TextLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        ImageLoader$Builder imageLoader$Builder;
        ImageLoader$Builder imageLoader$Builder2;
        AnimatableTextFrame animatableTextFrame;
        ImageLoader$Builder imageLoader$Builder3;
        AnimatableTextFrame animatableTextFrame2;
        ImageLoader$Builder imageLoader$Builder4;
        AnimatableTextFrame animatableTextFrame3;
        Request.Builder builder;
        AnimatableTextFrame animatableTextFrame4;
        Request.Builder builder2;
        AnimatableFloatValue animatableFloatValue;
        Request.Builder builder3;
        AnimatableFloatValue animatableFloatValue2;
        Request.Builder builder4;
        AnimatableTextFrame animatableTextFrame5;
        Request.Builder builder5;
        AnimatableTextFrame animatableTextFrame6;
        this.stringBuilder = new StringBuilder(2);
        this.charStringBuilder = new StringBuilder(0);
        this.reorderingStringBuilder = new StringBuilder(0);
        this.reversingStringBuilder = new StringBuilder(0);
        this.rectF = new RectF();
        this.matrix = new Matrix();
        LPaint lPaint = new LPaint(1, 1);
        lPaint.setStyle(Paint.Style.FILL);
        this.fillPaint = lPaint;
        LPaint lPaint2 = new LPaint(1, 2);
        lPaint2.setStyle(Paint.Style.STROKE);
        this.strokePaint = lPaint2;
        this.contentsForCharacter = new HashMap();
        this.codePointCache = new LongSparseArray((Object) null);
        this.charStrings = new ArrayList();
        this.textSubLines = new ArrayList();
        this.textRangeUnits = TextRangeUnits.INDEX;
        this.lottieDrawable = lottieDrawable;
        this.composition = layer.composition;
        TextKeyframeAnimation textKeyframeAnimation = new TextKeyframeAnimation((List) layer.text.fragment, 0);
        this.textAnimation = textKeyframeAnimation;
        textKeyframeAnimation.addUpdateListener(this);
        addAnimation(textKeyframeAnimation);
        AndroidSvg androidSvg = layer.textProperties;
        if (androidSvg != null && (builder5 = (Request.Builder) androidSvg.svg) != null && (animatableTextFrame6 = (AnimatableTextFrame) builder5.url) != null) {
            BaseKeyframeAnimation createAnimation = animatableTextFrame6.createAnimation();
            this.colorAnimation = (TextKeyframeAnimation) createAnimation;
            createAnimation.addUpdateListener(this);
            addAnimation(createAnimation);
        }
        if (androidSvg != null && (builder4 = (Request.Builder) androidSvg.svg) != null && (animatableTextFrame5 = (AnimatableTextFrame) builder4.method) != null) {
            BaseKeyframeAnimation createAnimation2 = animatableTextFrame5.createAnimation();
            this.strokeColorAnimation = (TextKeyframeAnimation) createAnimation2;
            createAnimation2.addUpdateListener(this);
            addAnimation(createAnimation2);
        }
        if (androidSvg != null && (builder3 = (Request.Builder) androidSvg.svg) != null && (animatableFloatValue2 = (AnimatableFloatValue) builder3.headers) != null) {
            TextKeyframeAnimation createAnimation3 = animatableFloatValue2.createAnimation();
            this.strokeWidthAnimation = createAnimation3;
            createAnimation3.addUpdateListener(this);
            addAnimation(createAnimation3);
        }
        if (androidSvg != null && (builder2 = (Request.Builder) androidSvg.svg) != null && (animatableFloatValue = (AnimatableFloatValue) builder2.body) != null) {
            TextKeyframeAnimation createAnimation4 = animatableFloatValue.createAnimation();
            this.trackingAnimation = createAnimation4;
            createAnimation4.addUpdateListener(this);
            addAnimation(createAnimation4);
        }
        if (androidSvg != null && (builder = (Request.Builder) androidSvg.svg) != null && (animatableTextFrame4 = (AnimatableTextFrame) builder.tags) != null) {
            BaseKeyframeAnimation createAnimation5 = animatableTextFrame4.createAnimation();
            this.opacityAnimation = (TextKeyframeAnimation) createAnimation5;
            createAnimation5.addUpdateListener(this);
            addAnimation(createAnimation5);
        }
        if (androidSvg != null && (imageLoader$Builder4 = (ImageLoader$Builder) androidSvg.renderOptions) != null && (animatableTextFrame3 = (AnimatableTextFrame) imageLoader$Builder4.application) != null) {
            BaseKeyframeAnimation createAnimation6 = animatableTextFrame3.createAnimation();
            this.textRangeStartAnimation = (TextKeyframeAnimation) createAnimation6;
            createAnimation6.addUpdateListener(this);
            addAnimation(createAnimation6);
        }
        if (androidSvg != null && (imageLoader$Builder3 = (ImageLoader$Builder) androidSvg.renderOptions) != null && (animatableTextFrame2 = (AnimatableTextFrame) imageLoader$Builder3.defaults) != null) {
            BaseKeyframeAnimation createAnimation7 = animatableTextFrame2.createAnimation();
            this.textRangeEndAnimation = (TextKeyframeAnimation) createAnimation7;
            createAnimation7.addUpdateListener(this);
            addAnimation(createAnimation7);
        }
        if (androidSvg != null && (imageLoader$Builder2 = (ImageLoader$Builder) androidSvg.renderOptions) != null && (animatableTextFrame = (AnimatableTextFrame) imageLoader$Builder2.componentRegistry) != null) {
            BaseKeyframeAnimation createAnimation8 = animatableTextFrame.createAnimation();
            this.textRangeOffsetAnimation = (TextKeyframeAnimation) createAnimation8;
            createAnimation8.addUpdateListener(this);
            addAnimation(createAnimation8);
        }
        if (androidSvg == null || (imageLoader$Builder = (ImageLoader$Builder) androidSvg.renderOptions) == null) {
            return;
        }
        this.textRangeUnits = (TextRangeUnits) imageLoader$Builder.extras;
    }

    public static void drawCharacter(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == RecyclerView.DECELERATION_RATE) {
            return;
        }
        canvas.drawText(str, 0, str.length(), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, paint);
    }

    public static void drawGlyph(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == RecyclerView.DECELERATION_RATE) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    public final String codePointToString(int i, String str) {
        int codePointAt = str.codePointAt(i);
        int charCount = Character.charCount(codePointAt) + i;
        while (charCount < str.length()) {
            int codePointAt2 = str.codePointAt(charCount);
            if (Character.getType(codePointAt2) != 16 && Character.getType(codePointAt2) != 27 && Character.getType(codePointAt2) != 6 && Character.getType(codePointAt2) != 28 && Character.getType(codePointAt2) != 8 && Character.getType(codePointAt2) != 19) {
                break;
            }
            charCount += Character.charCount(codePointAt2);
            codePointAt = (codePointAt * 31) + codePointAt2;
        }
        long j = codePointAt;
        LongSparseArray longSparseArray = this.codePointCache;
        if (longSparseArray.indexOfKey(j) >= 0) {
            return (String) longSparseArray.get(j);
        }
        StringBuilder sb = this.stringBuilder;
        sb.setLength(0);
        while (i < charCount) {
            int codePointAt3 = str.codePointAt(i);
            sb.appendCodePoint(codePointAt3);
            i += Character.charCount(codePointAt3);
        }
        String sb2 = sb.toString();
        longSparseArray.put(j, sb2);
        return sb2;
    }

    public final void configurePaint(DocumentData documentData, int i, int i2) {
        LPaint lPaint = this.fillPaint;
        TextKeyframeAnimation textKeyframeAnimation = this.colorAnimation;
        if (textKeyframeAnimation == null || !isIndexInRangeSelection(i2)) {
            lPaint.setColor(documentData.color);
        } else {
            lPaint.setColor(((Integer) textKeyframeAnimation.getValue()).intValue());
        }
        TextKeyframeAnimation textKeyframeAnimation2 = this.strokeColorAnimation;
        LPaint lPaint2 = this.strokePaint;
        if (textKeyframeAnimation2 == null || !isIndexInRangeSelection(i2)) {
            lPaint2.setColor(documentData.strokeColor);
        } else {
            lPaint2.setColor(((Integer) textKeyframeAnimation2.getValue()).intValue());
        }
        TextKeyframeAnimation textKeyframeAnimation3 = this.transform.opacity;
        int i3 = 100;
        int intValue = textKeyframeAnimation3 == null ? 100 : ((Integer) textKeyframeAnimation3.getValue()).intValue();
        TextKeyframeAnimation textKeyframeAnimation4 = this.opacityAnimation;
        if (textKeyframeAnimation4 != null && isIndexInRangeSelection(i2)) {
            i3 = ((Integer) textKeyframeAnimation4.getValue()).intValue();
        }
        int round = Math.round((((i3 / 100.0f) * ((intValue * 255.0f) / 100.0f)) * i) / 255.0f);
        lPaint.setAlpha(round);
        lPaint2.setAlpha(round);
        TextKeyframeAnimation textKeyframeAnimation5 = this.strokeWidthAnimation;
        if (textKeyframeAnimation5 == null || !isIndexInRangeSelection(i2)) {
            lPaint2.setStrokeWidth(Utils.dpScale() * documentData.strokeWidth);
        } else {
            lPaint2.setStrokeWidth(((Float) textKeyframeAnimation5.getValue()).floatValue());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0456, code lost:
    
        r3.insert(0, r6);
        r5 = r5 + 1;
        r1 = r24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawLayer(android.graphics.Canvas r31, android.graphics.Matrix r32, int r33, com.airbnb.lottie.utils.DropShadow r34) {
        /*
            Method dump skipped, instructions count: 1231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.TextLayer.drawLayer(android.graphics.Canvas, android.graphics.Matrix, int, com.airbnb.lottie.utils.DropShadow):void");
    }

    public final TextSubLine ensureEnoughSubLines(int i) {
        ArrayList arrayList = this.textSubLines;
        for (int size = arrayList.size(); size < i; size++) {
            TextSubLine textSubLine = new TextSubLine();
            textSubLine.text = "";
            textSubLine.width = RecyclerView.DECELERATION_RATE;
            arrayList.add(textSubLine);
        }
        return (TextSubLine) arrayList.get(i - 1);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        LottieComposition lottieComposition = this.composition;
        rectF.set(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, lottieComposition.bounds.width(), lottieComposition.bounds.height());
    }

    public final boolean isIndexInRangeSelection(int i) {
        TextKeyframeAnimation textKeyframeAnimation;
        int length = ((DocumentData) this.textAnimation.getValue()).text.length();
        TextKeyframeAnimation textKeyframeAnimation2 = this.textRangeStartAnimation;
        if (textKeyframeAnimation2 == null || (textKeyframeAnimation = this.textRangeEndAnimation) == null) {
            return true;
        }
        int min = Math.min(((Integer) textKeyframeAnimation2.getValue()).intValue(), ((Integer) textKeyframeAnimation.getValue()).intValue());
        int max = Math.max(((Integer) textKeyframeAnimation2.getValue()).intValue(), ((Integer) textKeyframeAnimation.getValue()).intValue());
        TextKeyframeAnimation textKeyframeAnimation3 = this.textRangeOffsetAnimation;
        if (textKeyframeAnimation3 != null) {
            int intValue = ((Integer) textKeyframeAnimation3.getValue()).intValue();
            min += intValue;
            max += intValue;
        }
        if (this.textRangeUnits == TextRangeUnits.INDEX) {
            return i >= min && i < max;
        }
        float f = (i / length) * 100.0f;
        return f >= ((float) min) && f < ((float) max);
    }

    public final boolean offsetCanvas(Canvas canvas, DocumentData documentData, int i, float f) {
        PointF pointF = documentData.boxPosition;
        PointF pointF2 = documentData.boxSize;
        float dpScale = Utils.dpScale();
        float f2 = RecyclerView.DECELERATION_RATE;
        float f3 = (i * documentData.lineHeight * dpScale) + (pointF == null ? 0.0f : (documentData.lineHeight * dpScale) + pointF.y);
        this.lottieDrawable.getClass();
        float f4 = pointF == null ? 0.0f : pointF.x;
        if (pointF2 != null) {
            f2 = pointF2.x;
        }
        int i2 = AnonymousClass3.$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification[documentData.justification.ordinal()];
        if (i2 == 1) {
            canvas.translate(f4, f3);
            return true;
        }
        if (i2 == 2) {
            canvas.translate((f4 + f2) - f, f3);
            return true;
        }
        if (i2 != 3) {
            return true;
        }
        canvas.translate(((f2 / 2.0f) + f4) - (f / 2.0f), f3);
        return true;
    }

    public final List splitGlyphTextIntoLines(String str, float f, Font font, float f2, float f3, boolean z) {
        float measureText;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if (z) {
                int hashFor = FontCharacter.hashFor(charAt, font.family, font.style);
                SparseArrayCompat sparseArrayCompat = this.composition.characters;
                sparseArrayCompat.getClass();
                FontCharacter fontCharacter = (FontCharacter) ArraySetKt.commonGet(sparseArrayCompat, hashFor);
                if (fontCharacter != null) {
                    measureText = (Utils.dpScale() * ((float) fontCharacter.width) * f2) + f3;
                }
            } else {
                measureText = this.fillPaint.measureText(str.substring(i4, i4 + 1)) + f3;
            }
            if (charAt == ' ') {
                z2 = true;
                f6 = measureText;
            } else if (z2) {
                z2 = false;
                i3 = i4;
                f5 = measureText;
            } else {
                f5 += measureText;
            }
            f4 += measureText;
            if (f > RecyclerView.DECELERATION_RATE && f4 >= f && charAt != ' ') {
                i++;
                TextSubLine ensureEnoughSubLines = ensureEnoughSubLines(i);
                if (i3 == i2) {
                    ensureEnoughSubLines.text = str.substring(i2, i4).trim();
                    ensureEnoughSubLines.width = (f4 - measureText) - ((r10.length() - r8.length()) * f6);
                    i2 = i4;
                    i3 = i2;
                    f4 = measureText;
                    f5 = f4;
                } else {
                    ensureEnoughSubLines.text = str.substring(i2, i3 - 1).trim();
                    ensureEnoughSubLines.width = ((f4 - f5) - ((r8.length() - r14.length()) * f6)) - f6;
                    f4 = f5;
                    i2 = i3;
                }
            }
        }
        if (f4 > RecyclerView.DECELERATION_RATE) {
            i++;
            TextSubLine ensureEnoughSubLines2 = ensureEnoughSubLines(i);
            ensureEnoughSubLines2.text = str.substring(i2);
            ensureEnoughSubLines2.width = f4;
        }
        return this.textSubLines.subList(0, i);
    }
}
