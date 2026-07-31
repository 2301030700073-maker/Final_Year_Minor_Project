package androidx.compose.ui.text;

import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.android.AndroidLayoutApi34;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.StaticLayoutFactory;
import androidx.compose.ui.text.android.TextAndroidCanvas;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinderApi29;
import androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinderUnderApi29;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt$NoopSpan$1;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidParagraph {
    public final CharSequence charSequence;
    public final long constraints;
    public final TextLayout layout;
    public final int maxLines;
    public final AndroidParagraphIntrinsics paragraphIntrinsics;
    public final List placeholderRects;

    /* JADX WARN: Removed duplicated region for block: B:103:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x033c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01be A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0278  */
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
    public final long m680getRangeForRect86BmAI(Rect rect, int i, DifferentialMotionFlingController$$ExternalSyntheticLambda0 differentialMotionFlingController$$ExternalSyntheticLambda0) {
        SegmentFinder graphemeClusterSegmentFinderApi29;
        int i2;
        int[] iArr;
        RectF androidRectF = ColorKt.toAndroidRectF(rect);
        int i3 = (i != 0 && i == 1) ? 1 : 0;
        ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0 = new ComposerKt$$ExternalSyntheticLambda0(20, differentialMotionFlingController$$ExternalSyntheticLambda0);
        TextLayout textLayout = this.layout;
        Layout layout = textLayout.layout;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 34) {
            iArr = AndroidLayoutApi34.getRangeForRect$ui_text(textLayout, androidRectF, i3, composerKt$$ExternalSyntheticLambda0);
        } else {
            LocalStore.AnonymousClass7 layoutHelper = textLayout.getLayoutHelper();
            if (i3 == 1) {
                graphemeClusterSegmentFinderApi29 = new WeakCache(9, layout.getText(), textLayout.getWordIterator());
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
                    int startOrEndOffsetForRectWithinLine = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i5, androidRectF, segmentFinder, composerKt$$ExternalSyntheticLambda0, true);
                    while (true) {
                        i2 = i5;
                        if (startOrEndOffsetForRectWithinLine != -1 || i2 >= lineForVertical2) {
                            break;
                        }
                        i5 = i2 + 1;
                        startOrEndOffsetForRectWithinLine = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i5, androidRectF, segmentFinder, composerKt$$ExternalSyntheticLambda0, true);
                    }
                    if (startOrEndOffsetForRectWithinLine != -1) {
                        int i6 = lineForVertical2;
                        int startOrEndOffsetForRectWithinLine2 = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i6, androidRectF, segmentFinder, composerKt$$ExternalSyntheticLambda0, false);
                        while (startOrEndOffsetForRectWithinLine2 == -1 && i2 < i6) {
                            i6--;
                            startOrEndOffsetForRectWithinLine2 = StaticLayoutFactory.getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i6, androidRectF, segmentFinder, composerKt$$ExternalSyntheticLambda0, false);
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
        return Constraints.m734getMaxWidthimpl(this.constraints);
    }

    public final void paint(Canvas canvas) {
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        TextLayout textLayout = this.layout;
        if (textLayout.didExceedMaxLines) {
            nativeCanvas.save();
            nativeCanvas.clipRect(0.0f, 0.0f, getWidth(), getHeight());
        }
        int i = textLayout.topPadding;
        if (nativeCanvas.getClipBounds(textLayout.rect)) {
            if (i != 0) {
                nativeCanvas.translate(0.0f, i);
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
                    nativeCanvas.translate(0.0f, (-1.0f) * i);
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
    public final void m681paintLG529CI(Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        AndroidTextPaint androidTextPaint = this.paragraphIntrinsics.textPaint;
        int i = androidTextPaint.backingBlendMode;
        androidTextPaint.m718setColor8_81llA(j);
        androidTextPaint.setShadow(shadow);
        androidTextPaint.setTextDecoration(textDecoration);
        androidTextPaint.setDrawStyle(drawStyle);
        androidTextPaint.m716setBlendModes9anfk8(3);
        paint(canvas);
        androidTextPaint.m716setBlendModes9anfk8(i);
    }

    /* renamed from: paint-hn5TExg, reason: not valid java name */
    public final void m682painthn5TExg(Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        AndroidTextPaint androidTextPaint = this.paragraphIntrinsics.textPaint;
        int i = androidTextPaint.backingBlendMode;
        float width = getWidth();
        float height = getHeight();
        androidTextPaint.m717setBrush12SF9DM(brush, (Float.floatToRawIntBits(height) & 4294967295L) | (Float.floatToRawIntBits(width) << 32), f);
        androidTextPaint.setShadow(shadow);
        androidTextPaint.setTextDecoration(textDecoration);
        androidTextPaint.setDrawStyle(drawStyle);
        androidTextPaint.m716setBlendModes9anfk8(3);
        paint(canvas);
        androidTextPaint.m716setBlendModes9anfk8(i);
    }
}
