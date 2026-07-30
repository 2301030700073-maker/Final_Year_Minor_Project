package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: EditingBuffer.kt */
/* loaded from: classes.dex */
public final class EditingBuffer {
    private int compositionEnd;
    private int compositionStart;
    private final PartialGapBuffer gapBuffer;
    private int selectionEnd;
    private int selectionStart;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public /* synthetic */ EditingBuffer(AnnotatedString annotatedString, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j);
    }

    private EditingBuffer(AnnotatedString annotatedString, long j) {
        this.gapBuffer = new PartialGapBuffer(annotatedString.getText());
        this.selectionStart = TextRange.m2123getMinimpl(j);
        this.selectionEnd = TextRange.m2122getMaximpl(j);
        this.compositionStart = -1;
        this.compositionEnd = -1;
        int m2123getMinimpl = TextRange.m2123getMinimpl(j);
        int m2122getMaximpl = TextRange.m2122getMaximpl(j);
        if (m2123getMinimpl < 0 || m2123getMinimpl > annotatedString.length()) {
            throw new IndexOutOfBoundsException("start (" + m2123getMinimpl + ") offset is outside of text region " + annotatedString.length());
        }
        if (m2122getMaximpl < 0 || m2122getMaximpl > annotatedString.length()) {
            throw new IndexOutOfBoundsException("end (" + m2122getMaximpl + ") offset is outside of text region " + annotatedString.length());
        }
        if (m2123getMinimpl <= m2122getMaximpl) {
            return;
        }
        throw new IllegalArgumentException("Do not set reversed range: " + m2123getMinimpl + " > " + m2122getMaximpl);
    }

    /* compiled from: EditingBuffer.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int getSelectionStart$ui_text_release() {
        return this.selectionStart;
    }

    private final void setSelectionStart(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(("Cannot set selectionStart to a negative value: " + i).toString());
        }
        this.selectionStart = i;
    }

    public final int getSelectionEnd$ui_text_release() {
        return this.selectionEnd;
    }

    private final void setSelectionEnd(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(("Cannot set selectionEnd to a negative value: " + i).toString());
        }
        this.selectionEnd = i;
    }

    public final int getCompositionStart$ui_text_release() {
        return this.compositionStart;
    }

    public final int getCompositionEnd$ui_text_release() {
        return this.compositionEnd;
    }

    public final boolean hasComposition$ui_text_release() {
        return this.compositionStart != -1;
    }

    /* renamed from: getComposition-MzsxiRA$ui_text_release, reason: not valid java name */
    public final TextRange m2192getCompositionMzsxiRA$ui_text_release() {
        if (hasComposition$ui_text_release()) {
            return TextRange.m2113boximpl(TextRangeKt.TextRange(this.compositionStart, this.compositionEnd));
        }
        return null;
    }

    /* renamed from: getSelection-d9O1mEE$ui_text_release, reason: not valid java name */
    public final long m2193getSelectiond9O1mEE$ui_text_release() {
        return TextRangeKt.TextRange(this.selectionStart, this.selectionEnd);
    }

    public final int getCursor$ui_text_release() {
        int i = this.selectionStart;
        int i2 = this.selectionEnd;
        if (i == i2) {
            return i2;
        }
        return -1;
    }

    public final void setCursor$ui_text_release(int i) {
        setSelection$ui_text_release(i, i);
    }

    public final char get$ui_text_release(int i) {
        return this.gapBuffer.get(i);
    }

    public final int getLength$ui_text_release() {
        return this.gapBuffer.getLength();
    }

    public final void replace$ui_text_release(int i, int i2, String str) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("start (" + i + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("end (" + i2 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i > i2) {
            throw new IllegalArgumentException("Do not set reversed range: " + i + " > " + i2);
        }
        this.gapBuffer.replace(i, i2, str);
        setSelectionStart(str.length() + i);
        setSelectionEnd(i + str.length());
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final void delete$ui_text_release(int i, int i2) {
        long TextRange = TextRangeKt.TextRange(i, i2);
        this.gapBuffer.replace(i, i2, "");
        long m2194updateRangeAfterDeletepWDy79M = EditingBufferKt.m2194updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.selectionStart, this.selectionEnd), TextRange);
        setSelectionStart(TextRange.m2123getMinimpl(m2194updateRangeAfterDeletepWDy79M));
        setSelectionEnd(TextRange.m2122getMaximpl(m2194updateRangeAfterDeletepWDy79M));
        if (hasComposition$ui_text_release()) {
            long m2194updateRangeAfterDeletepWDy79M2 = EditingBufferKt.m2194updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.compositionStart, this.compositionEnd), TextRange);
            if (TextRange.m2119getCollapsedimpl(m2194updateRangeAfterDeletepWDy79M2)) {
                commitComposition$ui_text_release();
            } else {
                this.compositionStart = TextRange.m2123getMinimpl(m2194updateRangeAfterDeletepWDy79M2);
                this.compositionEnd = TextRange.m2122getMaximpl(m2194updateRangeAfterDeletepWDy79M2);
            }
        }
    }

    public final void setSelection$ui_text_release(int i, int i2) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("start (" + i + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("end (" + i2 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i > i2) {
            throw new IllegalArgumentException("Do not set reversed range: " + i + " > " + i2);
        }
        setSelectionStart(i);
        setSelectionEnd(i2);
    }

    public final void setComposition$ui_text_release(int i, int i2) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("start (" + i + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("end (" + i2 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i >= i2) {
            throw new IllegalArgumentException("Do not set reversed or empty range: " + i + " > " + i2);
        }
        this.compositionStart = i;
        this.compositionEnd = i2;
    }

    public final void commitComposition$ui_text_release() {
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public String toString() {
        return this.gapBuffer.toString();
    }

    public final AnnotatedString toAnnotatedString$ui_text_release() {
        return new AnnotatedString(toString(), null, null, 6, null);
    }
}
