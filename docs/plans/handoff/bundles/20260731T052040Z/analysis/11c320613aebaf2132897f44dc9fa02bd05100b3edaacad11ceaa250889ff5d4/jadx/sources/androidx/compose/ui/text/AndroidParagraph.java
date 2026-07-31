package androidx.compose.ui.text;

import android.text.TextUtils;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.TextAndroidCanvas;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt$NoopSpan$1;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.unit.Constraints;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidParagraph {
    public final CharSequence charSequence;
    public final long constraints;
    public final TextLayout layout;
    public final int maxLines;
    public final AndroidParagraphIntrinsics paragraphIntrinsics;
    public final List placeholderRects;

    /* JADX WARN: Removed duplicated region for block: B:102:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x026f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidParagraph(androidx.compose.ui.text.platform.AndroidParagraphIntrinsics r21, int r22, int r23, long r24) {
        /*
            Method dump skipped, instructions count: 851
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

    public final float getWidth() {
        return Constraints.m434getMaxWidthimpl(this.constraints);
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
}
