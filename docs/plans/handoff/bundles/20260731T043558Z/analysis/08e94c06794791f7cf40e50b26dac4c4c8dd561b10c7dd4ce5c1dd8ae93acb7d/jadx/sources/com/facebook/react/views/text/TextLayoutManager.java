package com.facebook.react.views.text;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import androidx.core.util.Preconditions;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.common.logging.FLog;
import com.facebook.react.bridge.ReactNoCrashSoftException;
import com.facebook.react.bridge.ReactSoftExceptionLogger;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.common.build.ReactBuildConfig;
import com.facebook.react.common.mapbuffer.MapBuffer;
import com.facebook.react.uimanager.PixelUtil;
import com.facebook.react.views.text.internal.span.ReactAbsoluteSizeSpan;
import com.facebook.react.views.text.internal.span.ReactTextPaintHolderSpan;
import com.facebook.react.views.text.internal.span.SetSpanOperation;
import com.facebook.yoga.YogaConstants;
import com.facebook.yoga.YogaMeasureMode;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class TextLayoutManager {
    public static final short AS_KEY_BASE_ATTRIBUTES = 4;
    public static final short AS_KEY_CACHE_ID = 3;
    public static final short AS_KEY_FRAGMENTS = 2;
    public static final short AS_KEY_HASH = 0;
    public static final short AS_KEY_STRING = 1;
    private static final boolean DEFAULT_ADJUST_FONT_SIZE_TO_FIT = false;
    private static final boolean DEFAULT_INCLUDE_FONT_PADDING = true;
    private static final boolean ENABLE_MEASURE_LOGGING;
    public static final short FR_KEY_HEIGHT = 4;
    public static final short FR_KEY_IS_ATTACHMENT = 2;
    public static final short FR_KEY_REACT_TAG = 1;
    public static final short FR_KEY_STRING = 0;
    public static final short FR_KEY_TEXT_ATTRIBUTES = 5;
    public static final short FR_KEY_WIDTH = 3;
    private static final String INLINE_VIEW_PLACEHOLDER = "0";
    public static final short PA_KEY_ADJUST_FONT_SIZE_TO_FIT = 3;
    public static final short PA_KEY_ELLIPSIZE_MODE = 1;
    public static final short PA_KEY_HYPHENATION_FREQUENCY = 5;
    public static final short PA_KEY_INCLUDE_FONT_PADDING = 4;
    public static final short PA_KEY_MAXIMUM_FONT_SIZE = 7;
    public static final short PA_KEY_MAX_NUMBER_OF_LINES = 0;
    public static final short PA_KEY_MINIMUM_FONT_SIZE = 6;
    public static final short PA_KEY_TEXT_BREAK_STRATEGY = 2;
    private static final String TAG;
    private static final ConcurrentHashMap<Integer, Spannable> sTagToSpannableCache;
    private static final ThreadLocal<TextPaint> sTextPaintInstance;

    static {
        boolean z = ReactBuildConfig.DEBUG;
        ENABLE_MEASURE_LOGGING = false;
        TAG = "TextLayoutManager";
        sTextPaintInstance = new ThreadLocal<TextPaint>() { // from class: com.facebook.react.views.text.TextLayoutManager.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.lang.ThreadLocal
            public TextPaint initialValue() {
                return new TextPaint(1);
            }
        };
        sTagToSpannableCache = new ConcurrentHashMap<>();
    }

    public static void setCachedSpannableForTag(int i, Spannable spannable) {
        if (ENABLE_MEASURE_LOGGING) {
            FLog.e(TAG, "Set cached spannable for tag[" + i + "]: " + spannable.toString());
        }
        sTagToSpannableCache.put(Integer.valueOf(i), spannable);
    }

    public static void deleteCachedSpannableForTag(int i) {
        if (ENABLE_MEASURE_LOGGING) {
            FLog.e(TAG, "Delete cached spannable for tag[" + i + "]");
        }
        sTagToSpannableCache.remove(Integer.valueOf(i));
    }

    public static boolean isRTL(MapBuffer mapBuffer) {
        if (!mapBuffer.contains(2)) {
            return false;
        }
        MapBuffer mapBuffer2 = mapBuffer.getMapBuffer(2);
        if (mapBuffer2.getCount() == 0) {
            return false;
        }
        MapBuffer mapBuffer3 = mapBuffer2.getMapBuffer(0).getMapBuffer(5);
        return mapBuffer3.contains(23) && TextAttributeProps.getLayoutDirection(mapBuffer3.getString(23)) == 1;
    }

    private static String getTextAlignmentAttr(MapBuffer mapBuffer) {
        if (!mapBuffer.contains(2)) {
            return null;
        }
        MapBuffer mapBuffer2 = mapBuffer.getMapBuffer(2);
        if (mapBuffer2.getCount() != 0) {
            MapBuffer mapBuffer3 = mapBuffer2.getMapBuffer(0).getMapBuffer(5);
            if (mapBuffer3.contains(12)) {
                return mapBuffer3.getString(12);
            }
        }
        return null;
    }

    private static int getTextJustificationMode(String str) {
        if (Build.VERSION.SDK_INT < 26) {
            return -1;
        }
        return (str == null || !str.equals("justified")) ? 0 : 1;
    }

    private static Layout.Alignment getTextAlignment(MapBuffer mapBuffer, Spannable spannable, String str) {
        boolean z = isRTL(mapBuffer) != TextDirectionHeuristics.FIRSTSTRONG_LTR.isRtl(spannable, 0, spannable.length());
        Layout.Alignment alignment = z ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        if (str == null) {
            return alignment;
        }
        if (str.equals(TtmlNode.CENTER)) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        return str.equals("right") ? z ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : alignment;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (r4 != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0019, code lost:
    
        if (r4 != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:?, code lost:
    
        return 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:?, code lost:
    
        return 3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getTextGravity(com.facebook.react.common.mapbuffer.MapBuffer r3, android.text.Spannable r4, int r5) {
        /*
            java.lang.String r0 = getTextAlignmentAttr(r3)
            android.text.Layout$Alignment r3 = getTextAlignment(r3, r4, r0)
            android.text.TextDirectionHeuristic r0 = android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR
            r1 = 0
            int r2 = r4.length()
            boolean r4 = r0.isRtl(r4, r1, r2)
            android.text.Layout$Alignment r0 = android.text.Layout.Alignment.ALIGN_NORMAL
            r1 = 5
            r2 = 3
            if (r3 != r0) goto L1f
            if (r4 == 0) goto L1d
        L1b:
            r5 = r1
            goto L2b
        L1d:
            r5 = r2
            goto L2b
        L1f:
            android.text.Layout$Alignment r0 = android.text.Layout.Alignment.ALIGN_OPPOSITE
            if (r3 != r0) goto L26
            if (r4 == 0) goto L1b
            goto L1d
        L26:
            android.text.Layout$Alignment r4 = android.text.Layout.Alignment.ALIGN_CENTER
            if (r3 != r4) goto L2b
            r5 = 1
        L2b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.text.TextLayoutManager.getTextGravity(com.facebook.react.common.mapbuffer.MapBuffer, android.text.Spannable, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0090, code lost:
    
        r21.add(new com.facebook.react.views.text.internal.span.SetSpanOperation(r6, r8, new com.facebook.react.views.text.internal.span.ReactClickableSpan(r10)));
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x018f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void buildSpannableFromFragments(android.content.Context r18, com.facebook.react.common.mapbuffer.MapBuffer r19, android.text.SpannableStringBuilder r20, java.util.List<com.facebook.react.views.text.internal.span.SetSpanOperation> r21) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.text.TextLayoutManager.buildSpannableFromFragments(android.content.Context, com.facebook.react.common.mapbuffer.MapBuffer, android.text.SpannableStringBuilder, java.util.List):void");
    }

    public static Spannable getOrCreateSpannableForText(Context context, MapBuffer mapBuffer, ReactTextViewManagerCallback reactTextViewManagerCallback) {
        if (mapBuffer.contains(3)) {
            return sTagToSpannableCache.get(Integer.valueOf(mapBuffer.getInt(3)));
        }
        return createSpannableFromAttributedString(context, mapBuffer, reactTextViewManagerCallback);
    }

    private static Spannable createSpannableFromAttributedString(Context context, MapBuffer mapBuffer, ReactTextViewManagerCallback reactTextViewManagerCallback) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayList arrayList = new ArrayList();
        buildSpannableFromFragments(context, mapBuffer.getMapBuffer(2), spannableStringBuilder, arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            ((SetSpanOperation) arrayList.get((arrayList.size() - i) - 1)).execute(spannableStringBuilder, i);
        }
        if (reactTextViewManagerCallback != null) {
            reactTextViewManagerCallback.onPostProcessSpannable(spannableStringBuilder);
        }
        return spannableStringBuilder;
    }

    private static Layout createLayout(Spannable spannable, BoringLayout.Metrics metrics, float f, YogaMeasureMode yogaMeasureMode, boolean z, int i, int i2, Layout.Alignment alignment, int i3, TextPaint textPaint) {
        int i4;
        int length = spannable.length();
        boolean z2 = yogaMeasureMode == YogaMeasureMode.UNDEFINED || f < 0.0f;
        float desiredWidth = metrics == null ? Layout.getDesiredWidth(spannable, textPaint) : Float.NaN;
        boolean isRtl = TextDirectionHeuristics.FIRSTSTRONG_LTR.isRtl(spannable, 0, length);
        if (metrics == null && (z2 || (!YogaConstants.isUndefined(desiredWidth) && desiredWidth <= f))) {
            if (yogaMeasureMode == YogaMeasureMode.EXACTLY) {
                desiredWidth = f;
            }
            StaticLayout.Builder textDirection = StaticLayout.Builder.obtain(spannable, 0, length, textPaint, (int) Math.ceil(desiredWidth)).setAlignment(alignment).setLineSpacing(0.0f, 1.0f).setIncludePad(z).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(isRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            if (Build.VERSION.SDK_INT >= 28) {
                textDirection.setUseLineSpacingFromFallbacks(true);
            }
            return textDirection.build();
        }
        if (metrics != null && (z2 || metrics.width <= f)) {
            int i5 = metrics.width;
            if (yogaMeasureMode == YogaMeasureMode.EXACTLY) {
                i5 = (int) Math.ceil(f);
            }
            if (metrics.width < 0) {
                ReactSoftExceptionLogger.logSoftException(TAG, new ReactNoCrashSoftException("Text width is invalid: " + metrics.width));
                i4 = 0;
            } else {
                i4 = i5;
            }
            return BoringLayout.make(spannable, textPaint, i4, alignment, 1.0f, 0.0f, metrics, z);
        }
        StaticLayout.Builder textDirection2 = StaticLayout.Builder.obtain(spannable, 0, length, textPaint, (int) Math.ceil(f)).setAlignment(alignment).setLineSpacing(0.0f, 1.0f).setIncludePad(z).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(isRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        if (Build.VERSION.SDK_INT >= 26) {
            textDirection2.setJustificationMode(i3);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            textDirection2.setUseLineSpacingFromFallbacks(true);
        }
        return textDirection2.build();
    }

    private static void updateTextPaint(TextPaint textPaint, TextAttributeProps textAttributeProps, Context context) {
        textPaint.reset();
        textPaint.setAntiAlias(true);
        if (textAttributeProps.getEffectiveFontSize() != -1) {
            textPaint.setTextSize(textAttributeProps.getEffectiveFontSize());
        }
        if (textAttributeProps.getFontStyle() != -1 || textAttributeProps.getFontWeight() != -1 || textAttributeProps.getFontFamily() != null) {
            Typeface applyStyles = ReactTypefaceUtils.applyStyles(null, textAttributeProps.getFontStyle(), textAttributeProps.getFontWeight(), textAttributeProps.getFontFamily(), context.getAssets());
            textPaint.setTypeface(applyStyles);
            if (textAttributeProps.getFontStyle() == -1 || textAttributeProps.getFontStyle() == applyStyles.getStyle()) {
                return;
            }
            int fontStyle = textAttributeProps.getFontStyle() & (~applyStyles.getStyle());
            textPaint.setFakeBoldText((fontStyle & 1) != 0);
            textPaint.setTextSkewX((fontStyle & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        textPaint.setTypeface(null);
    }

    private static Layout createLayout(Context context, MapBuffer mapBuffer, MapBuffer mapBuffer2, float f, float f2, ReactTextViewManagerCallback reactTextViewManagerCallback) {
        TextPaint textPaint;
        Spannable orCreateSpannableForText = getOrCreateSpannableForText(context, mapBuffer, reactTextViewManagerCallback);
        if (mapBuffer.contains(3)) {
            textPaint = ((ReactTextPaintHolderSpan[]) orCreateSpannableForText.getSpans(0, 0, ReactTextPaintHolderSpan.class))[0].getTextPaint();
        } else {
            TextAttributeProps fromMapBuffer = TextAttributeProps.fromMapBuffer(mapBuffer.getMapBuffer(4));
            TextPaint textPaint2 = (TextPaint) Preconditions.checkNotNull(sTextPaintInstance.get());
            updateTextPaint(textPaint2, fromMapBuffer, context);
            textPaint = textPaint2;
        }
        BoringLayout.Metrics isBoring = BoringLayout.isBoring(orCreateSpannableForText, textPaint);
        int textBreakStrategy = TextAttributeProps.getTextBreakStrategy(mapBuffer2.getString(2));
        boolean z = mapBuffer2.contains(4) ? mapBuffer2.getBoolean(4) : true;
        int hyphenationFrequency = TextAttributeProps.getHyphenationFrequency(mapBuffer2.getString(5));
        boolean z2 = mapBuffer2.contains(3) ? mapBuffer2.getBoolean(3) : false;
        int i = mapBuffer2.contains(0) ? mapBuffer2.getInt(0) : -1;
        String textAlignmentAttr = getTextAlignmentAttr(mapBuffer);
        Layout.Alignment textAlignment = getTextAlignment(mapBuffer, orCreateSpannableForText, textAlignmentAttr);
        int textJustificationMode = getTextJustificationMode(textAlignmentAttr);
        if (z2) {
            adjustSpannableFontToFit(orCreateSpannableForText, f, YogaMeasureMode.EXACTLY, f2, YogaMeasureMode.UNDEFINED, mapBuffer2.contains(6) ? mapBuffer2.getDouble(6) : Double.NaN, i, z, textBreakStrategy, hyphenationFrequency, textAlignment, textJustificationMode, textPaint);
        }
        return createLayout(orCreateSpannableForText, isBoring, f, YogaMeasureMode.EXACTLY, z, textBreakStrategy, hyphenationFrequency, textAlignment, textJustificationMode, textPaint);
    }

    static void adjustSpannableFontToFit(Spannable spannable, float f, YogaMeasureMode yogaMeasureMode, float f2, YogaMeasureMode yogaMeasureMode2, double d, int i, boolean z, int i2, int i3, Layout.Alignment alignment, int i4, TextPaint textPaint) {
        BoringLayout.Metrics isBoring = BoringLayout.isBoring(spannable, textPaint);
        Layout createLayout = createLayout(spannable, isBoring, f, yogaMeasureMode, z, i2, i3, alignment, i4, textPaint);
        int pixelFromDIP = (int) (Double.isNaN(d) ? PixelUtil.toPixelFromDIP(4.0f) : d);
        int i5 = 0;
        int i6 = pixelFromDIP;
        for (ReactAbsoluteSizeSpan reactAbsoluteSizeSpan : (ReactAbsoluteSizeSpan[]) spannable.getSpans(0, spannable.length(), ReactAbsoluteSizeSpan.class)) {
            i6 = Math.max(i6, reactAbsoluteSizeSpan.getSize());
        }
        int i7 = i6;
        while (i7 > pixelFromDIP) {
            if ((i == -1 || i == 0 || createLayout.getLineCount() <= i) && ((yogaMeasureMode2 == YogaMeasureMode.UNDEFINED || createLayout.getHeight() <= f2) && (spannable.length() != 1 || createLayout.getLineWidth(i5) <= f))) {
                return;
            }
            int max = i7 - Math.max(1, (int) PixelUtil.toPixelFromDIP(1.0f));
            float f3 = max / i6;
            float f4 = pixelFromDIP;
            textPaint.setTextSize(Math.max(textPaint.getTextSize() * f3, f4));
            ReactAbsoluteSizeSpan[] reactAbsoluteSizeSpanArr = (ReactAbsoluteSizeSpan[]) spannable.getSpans(i5, spannable.length(), ReactAbsoluteSizeSpan.class);
            int length = reactAbsoluteSizeSpanArr.length;
            int i8 = i5;
            while (i8 < length) {
                ReactAbsoluteSizeSpan reactAbsoluteSizeSpan2 = reactAbsoluteSizeSpanArr[i8];
                spannable.setSpan(new ReactAbsoluteSizeSpan((int) Math.max(reactAbsoluteSizeSpan2.getSize() * f3, f4)), spannable.getSpanStart(reactAbsoluteSizeSpan2), spannable.getSpanEnd(reactAbsoluteSizeSpan2), spannable.getSpanFlags(reactAbsoluteSizeSpan2));
                spannable.removeSpan(reactAbsoluteSizeSpan2);
                i8++;
                f3 = f3;
                reactAbsoluteSizeSpanArr = reactAbsoluteSizeSpanArr;
            }
            if (isBoring != null) {
                isBoring = BoringLayout.isBoring(spannable, textPaint);
            }
            createLayout = createLayout(spannable, isBoring, f, yogaMeasureMode, z, i2, i3, alignment, i4, textPaint);
            i7 = max;
            i6 = i6;
            i5 = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0087, code lost:
    
        if (r5 > r21) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a7, code lost:
    
        if (r3 > r23) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long measureText(android.content.Context r18, com.facebook.react.common.mapbuffer.MapBuffer r19, com.facebook.react.common.mapbuffer.MapBuffer r20, float r21, com.facebook.yoga.YogaMeasureMode r22, float r23, com.facebook.yoga.YogaMeasureMode r24, com.facebook.react.views.text.ReactTextViewManagerCallback r25, float[] r26) {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.react.views.text.TextLayoutManager.measureText(android.content.Context, com.facebook.react.common.mapbuffer.MapBuffer, com.facebook.react.common.mapbuffer.MapBuffer, float, com.facebook.yoga.YogaMeasureMode, float, com.facebook.yoga.YogaMeasureMode, com.facebook.react.views.text.ReactTextViewManagerCallback, float[]):long");
    }

    public static WritableArray measureLines(Context context, MapBuffer mapBuffer, MapBuffer mapBuffer2, float f, float f2) {
        Layout createLayout = createLayout(context, mapBuffer, mapBuffer2, f, f2, null);
        return FontMetricsUtil.getFontMetrics(createLayout.getText(), createLayout, (TextPaint) Preconditions.checkNotNull(sTextPaintInstance.get()), context);
    }
}
