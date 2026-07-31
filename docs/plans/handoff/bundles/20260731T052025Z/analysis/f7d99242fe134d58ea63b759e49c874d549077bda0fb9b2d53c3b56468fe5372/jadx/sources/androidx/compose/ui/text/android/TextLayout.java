package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.message.html.EmailSection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextLayout {
    public LocalStore.AnonymousClass7 backingLayoutHelper;
    public EmailSection.Builder backingWordIterator;
    public final int bottomPadding;
    public final boolean didExceedMaxLines;
    public final TextUtils.TruncateAt ellipsize;
    public final boolean includePadding;
    public final boolean isBoringLayout;
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
    /* JADX WARN: Removed duplicated region for block: B:102:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x025e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextLayout(java.lang.CharSequence r22, float r23, android.text.TextPaint r24, int r25, android.text.TextUtils.TruncateAt r26, int r27, boolean r28, int r29, int r30, int r31, int r32, int r33, int r34, androidx.compose.ui.text.android.LayoutIntrinsics r35) {
        /*
            Method dump skipped, instructions count: 841
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
        if (i == this.lineCount - 1) {
            return this.leftPadding + this.rightPadding;
        }
        return 0.0f;
    }

    public final LocalStore.AnonymousClass7 getLayoutHelper() {
        LocalStore.AnonymousClass7 anonymousClass7 = this.backingLayoutHelper;
        if (anonymousClass7 != null) {
            return anonymousClass7;
        }
        LocalStore.AnonymousClass7 anonymousClass72 = new LocalStore.AnonymousClass7(this.layout);
        this.backingLayoutHelper = anonymousClass72;
        return anonymousClass72;
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

    public final float getLineTop(int i) {
        return this.layout.getLineTop(i) + (i == 0 ? 0 : this.topPadding);
    }

    public final float getPrimaryHorizontal(int i, boolean z) {
        return getHorizontalPadding(this.layout.getLineForOffset(i)) + getLayoutHelper().getHorizontalPosition(i, true, z);
    }

    public final float getSecondaryHorizontal(int i, boolean z) {
        return getHorizontalPadding(this.layout.getLineForOffset(i)) + getLayoutHelper().getHorizontalPosition(i, false, z);
    }

    public final EmailSection.Builder getWordIterator() {
        EmailSection.Builder builder = this.backingWordIterator;
        if (builder != null) {
            return builder;
        }
        Layout layout = this.layout;
        EmailSection.Builder builder2 = new EmailSection.Builder(layout.getText(), layout.getText().length(), this.textPaint.getTextLocale());
        this.backingWordIterator = builder2;
        return builder2;
    }
}
