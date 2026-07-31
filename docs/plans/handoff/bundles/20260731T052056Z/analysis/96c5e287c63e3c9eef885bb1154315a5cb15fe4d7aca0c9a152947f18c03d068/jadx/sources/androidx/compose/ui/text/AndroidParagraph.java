package androidx.compose.ui.text;

import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.android.AndroidLayoutApi34;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.StaticLayoutFactory;
import androidx.compose.ui.text.android.TextAndroidCanvas;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinderApi29;
import androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinderUnderApi29;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt$NoopSpan$1;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidParagraph {
    public final CharSequence charSequence;
    public final long constraints;
    public final TextLayout layout;
    public final int maxLines;
    public final AndroidParagraphIntrinsics paragraphIntrinsics;
    public final List placeholderRects;

    /* JADX WARN: Removed duplicated region for block: B:101:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x033c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x027a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidParagraph(androidx.compose.ui.text.platform.AndroidParagraphIntrinsics r22, int r23, int r24, long r25) {
        /*
            Method dump skipped, instructions count: 974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.AndroidParagraph.<init>(androidx.compose.ui.text.platform.AndroidParagraphIntrinsics, int, int, long):void");
    }

    public final TextLayout constructTextLayout(int i, int i2, TextUtils.TruncateAt truncateAt, int i3, int i4, int i5, int i6, int i7, CharSequence charSequence) {
        PlatformParagraphStyle platformParagraphStyle;
        float width = getWidth();
        AndroidParagraphIntrinsics androidParagraphIntrinsics = this.paragraphIntrinsics;
        AndroidTextPaint androidTextPaint = androidParagraphIntrinsics.textPaint;
        int i8 = androidParagraphIntrinsics.textDirectionHeuristic;
        LayoutIntrinsics layoutIntrinsics = androidParagraphIntrinsics.layoutIntrinsics;
        TextStyle textStyle = androidParagraphIntrinsics.style;
        AndroidParagraphHelper_androidKt$NoopSpan$1 androidParagraphHelper_androidKt$NoopSpan$1 = AndroidParagraphHelper_androidKt.NoopSpan;
        PlatformTextStyle platformTextStyle = textStyle.platformStyle;
        return new TextLayout(charSequence, width, androidTextPaint, i, truncateAt, i8, (platformTextStyle == null || (platformParagraphStyle = platformTextStyle.paragraphStyle) == null) ? false : platformParagraphStyle.includeFontPadding, i3, i5, i6, i7, i4, i2, layoutIntrinsics);
    }

    public final float getHeight() {
        return this.layout.getHeight();
    }

    /* renamed from: getRangeForRect-8-6BmAI, reason: not valid java name */
    public final long m622getRangeForRect86BmAI(Rect rect, int i, VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda0) {
        SegmentFinder graphemeClusterSegmentFinderApi29;
        int i2;
        int[] iArr;
        RectF androidRectF = ColorKt.toAndroidRectF(rect);
        int i3 = (i != 0 && i == 1) ? 1 : 0;
        HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = new HintHandler$$ExternalSyntheticLambda0(24, visualTransformation$Companion$$ExternalSyntheticLambda0);
        TextLayout textLayout = this.layout;
        Layout layout = textLayout.layout;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 34) {
            iArr = AndroidLayoutApi34.getRangeForRect$ui_text(textLayout, androidRectF, i3, hintHandler$$ExternalSyntheticLambda0);
        } else {
            Request.Builder layoutHelper = textLayout.getLayoutHelper();
            if (i3 == 1) {
                graphemeClusterSegmentFinderApi29 = new CardView.AnonymousClass1(19, layout.getText(), textLayout.getWordIterator());
            } else {
                CharSequence text = layout.getText();
                graphemeClusterSegmentFinderApi29 = i4 >= 29 ? new GraphemeClusterSegmentFinderApi29(text, textLayout.textPaint) : new GraphemeClusterSegmentFinderUnderApi29(text);
            }
            SegmentFinder segmentFinder = graphemeClusterSegmentFinderApi29;
            int lineForVertical = layout.getLineForVertical((int) androidRectF.top);
            if (androidRectF.top <= textLayout.getLineBottom(lineForVertical) || (lineForVertical = lineForVertical + 1) < textLayout.lineCount) {
                int i5 = lineForVertical;
                int lineForVertical2 = layout.getLineForVertical((int) androidRectF.bottom);
                if (lineForVertical2 != 0 || androidRectF.bottom >= textLayout.getLineTop(0)) {
                    int startOrEndOffsetForRectWithinLine = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i5, androidRectF, segmentFinder, hintHandler$$ExternalSyntheticLambda0, true);
                    while (true) {
                        i2 = i5;
                        if (startOrEndOffsetForRectWithinLine != -1 || i2 >= lineForVertical2) {
                            break;
                        }
                        i5 = i2 + 1;
                        startOrEndOffsetForRectWithinLine = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i5, androidRectF, segmentFinder, hintHandler$$ExternalSyntheticLambda0, true);
                    }
                    if (startOrEndOffsetForRectWithinLine != -1) {
                        int i6 = lineForVertical2;
                        int startOrEndOffsetForRectWithinLine2 = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i6, androidRectF, segmentFinder, hintHandler$$ExternalSyntheticLambda0, false);
                        while (startOrEndOffsetForRectWithinLine2 == -1 && i2 < i6) {
                            i6--;
                            startOrEndOffsetForRectWithinLine2 = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i6, androidRectF, segmentFinder, hintHandler$$ExternalSyntheticLambda0, false);
                        }
                        if (startOrEndOffsetForRectWithinLine2 != -1) {
                            iArr = new int[]{segmentFinder.previousStartBoundary(startOrEndOffsetForRectWithinLine + 1), segmentFinder.nextEndBoundary(startOrEndOffsetForRectWithinLine2 - 1)};
                        }
                    }
                }
            }
            iArr = null;
        }
        return iArr == null ? TextRange.Zero : ParagraphKt.TextRange(iArr[0], iArr[1]);
    }

    public final float getWidth() {
        return Constraints.m681getMaxWidthimpl(this.constraints);
    }

    public final void paint(Canvas canvas) {
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        TextLayout textLayout = this.layout;
        if (textLayout.didExceedMaxLines) {
            nativeCanvas.save();
            nativeCanvas.clipRect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, getWidth(), getHeight());
        }
        int i = textLayout.topPadding;
        if (nativeCanvas.getClipBounds(textLayout.rect)) {
            if (i != 0) {
                nativeCanvas.translate(RecyclerView.DECELERATION_RATE, i);
            }
            ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
            Object obj = threadLocal.get();
            if (obj == null) {
                obj = new TextAndroidCanvas();
                threadLocal.set(obj);
            }
            TextAndroidCanvas textAndroidCanvas = (TextAndroidCanvas) obj;
            textAndroidCanvas._nativeCanvas = nativeCanvas;
            try {
                textLayout.layout.draw(textAndroidCanvas);
                if (i != 0) {
                    nativeCanvas.translate(RecyclerView.DECELERATION_RATE, (-1.0f) * i);
                }
            } finally {
                textAndroidCanvas._nativeCanvas = null;
            }
        }
        if (textLayout.didExceedMaxLines) {
            nativeCanvas.restore();
        }
    }

    /* renamed from: paint-LG529CI, reason: not valid java name */
    public final void m623paintLG529CI(Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        AndroidTextPaint androidTextPaint = this.paragraphIntrinsics.textPaint;
        int i = androidTextPaint.backingBlendMode;
        androidTextPaint.m665setColor8_81llA(j);
        androidTextPaint.setShadow(shadow);
        androidTextPaint.setTextDecoration(textDecoration);
        androidTextPaint.setDrawStyle(drawStyle);
        androidTextPaint.m663setBlendModes9anfk8(3);
        paint(canvas);
        androidTextPaint.m663setBlendModes9anfk8(i);
    }

    /* renamed from: paint-hn5TExg, reason: not valid java name */
    public final void m624painthn5TExg(Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        AndroidTextPaint androidTextPaint = this.paragraphIntrinsics.textPaint;
        int i = androidTextPaint.backingBlendMode;
        float width = getWidth();
        float height = getHeight();
        androidTextPaint.m664setBrush12SF9DM(brush, (Float.floatToRawIntBits(height) & 4294967295L) | (Float.floatToRawIntBits(width) << 32), f);
        androidTextPaint.setShadow(shadow);
        androidTextPaint.setTextDecoration(textDecoration);
        androidTextPaint.setDrawStyle(drawStyle);
        androidTextPaint.m663setBlendModes9anfk8(3);
        paint(canvas);
        androidTextPaint.m663setBlendModes9anfk8(i);
    }
}
