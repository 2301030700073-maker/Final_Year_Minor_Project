package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import kotlin.text.StringsKt;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextLayout {
    public Request.Builder backingLayoutHelper;
    public SVG.PathDefinition backingWordIterator;
    public final int bottomPadding;
    public final boolean didExceedMaxLines;
    public final TextUtils.TruncateAt ellipsize;
    public final boolean includePadding;
    public final int lastLineExtra;
    public final Paint.FontMetricsInt lastLineFontMetrics;
    public final Layout layout;
    public final float leftPadding;
    public final int lineCount;
    public final LineHeightStyleSpan[] lineHeightSpans;
    public final Rect rect = new Rect();
    public final float rightPadding;
    public final TextPaint textPaint;
    public final int topPadding;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x018d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextLayout(java.lang.CharSequence r23, float r24, android.text.TextPaint r25, int r26, android.text.TextUtils.TruncateAt r27, int r28, boolean r29, int r30, int r31, int r32, int r33, int r34, int r35, androidx.compose.ui.text.android.LayoutIntrinsics r36) {
        /*
            Method dump skipped, instructions count: 836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.android.TextLayout.<init>(java.lang.CharSequence, float, android.text.TextPaint, int, android.text.TextUtils$TruncateAt, int, boolean, int, int, int, int, int, int, androidx.compose.ui.text.android.LayoutIntrinsics):void");
    }

    public final int getHeight() {
        boolean z = this.didExceedMaxLines;
        Layout layout = this.layout;
        return (z ? layout.getLineBottom(this.lineCount - 1) : layout.getHeight()) + this.topPadding + this.bottomPadding + this.lastLineExtra;
    }

    public final float getHorizontalPadding(int i) {
        return i == this.lineCount + (-1) ? this.leftPadding + this.rightPadding : RecyclerView.DECELERATION_RATE;
    }

    public final Request.Builder getLayoutHelper() {
        Request.Builder builder = this.backingLayoutHelper;
        if (builder != null) {
            return builder;
        }
        Request.Builder builder2 = new Request.Builder();
        builder2.url = this.layout;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            int indexOf$default = StringsKt.indexOf$default(((Layout) builder2.url).getText(), '\n', i, 4);
            i = indexOf$default < 0 ? ((Layout) builder2.url).getText().length() : indexOf$default + 1;
            arrayList.add(Integer.valueOf(i));
        } while (i < ((Layout) builder2.url).getText().length());
        builder2.method = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(null);
        }
        builder2.headers = arrayList2;
        builder2.body = new boolean[((ArrayList) builder2.method).size()];
        ((ArrayList) builder2.method).size();
        this.backingLayoutHelper = builder2;
        return builder2;
    }

    public final float getLineBaseline(int i) {
        Paint.FontMetricsInt fontMetricsInt;
        return this.topPadding + ((i != this.lineCount + (-1) || (fontMetricsInt = this.lastLineFontMetrics) == null) ? this.layout.getLineBaseline(i) : getLineTop(i) - fontMetricsInt.ascent);
    }

    public final float getLineBottom(int i) {
        Paint.FontMetricsInt fontMetricsInt;
        int i2 = this.lineCount;
        int i3 = i2 - 1;
        Layout layout = this.layout;
        if (i != i3 || (fontMetricsInt = this.lastLineFontMetrics) == null) {
            return this.topPadding + layout.getLineBottom(i) + (i == i2 + (-1) ? this.bottomPadding : 0);
        }
        return layout.getLineBottom(i - 1) + fontMetricsInt.bottom;
    }

    public final int getLineEnd(int i) {
        ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
        Layout layout = this.layout;
        return (layout.getEllipsisCount(i) <= 0 || this.ellipsize != TextUtils.TruncateAt.END) ? layout.getLineEnd(i) : layout.getText().length();
    }

    public final int getLineForOffset(int i) {
        int i2 = this.lineCount;
        if (i2 <= 0) {
            return 0;
        }
        int lineForOffset = this.layout.getLineForOffset(i);
        int i3 = i2 - 1;
        return lineForOffset > i3 ? i3 : lineForOffset;
    }

    public final float getLineTop(int i) {
        return this.layout.getLineTop(i) + (i == 0 ? 0 : this.topPadding);
    }

    public final float getPrimaryHorizontal(int i, boolean z) {
        return getHorizontalPadding(getLineForOffset(i)) + getLayoutHelper().getHorizontalPosition(i, true, z);
    }

    public final float getSecondaryHorizontal(int i, boolean z) {
        return getHorizontalPadding(getLineForOffset(i)) + getLayoutHelper().getHorizontalPosition(i, false, z);
    }

    public final SVG.PathDefinition getWordIterator() {
        SVG.PathDefinition pathDefinition = this.backingWordIterator;
        if (pathDefinition != null) {
            return pathDefinition;
        }
        Layout layout = this.layout;
        SVG.PathDefinition pathDefinition2 = new SVG.PathDefinition(layout.getText(), layout.getText().length(), this.textPaint.getTextLocale());
        this.backingWordIterator = pathDefinition2;
        return pathDefinition2;
    }
}
