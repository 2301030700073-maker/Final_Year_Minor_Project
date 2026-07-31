package androidx.compose.ui.text.input;

import android.view.View;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import com.caverock.androidsvg.SVG;
import kotlin.ExceptionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingBuffer implements OnApplyWindowInsetsListener {
    public final /* synthetic */ int $r8$classId = 1;
    public int compositionEnd;
    public int compositionStart;
    public final Object gapBuffer;
    public int selectionEnd;
    public int selectionStart;

    public EditingBuffer(AnnotatedString annotatedString, long j) {
        String str = annotatedString.text;
        SVG.PathDefinition pathDefinition = new SVG.PathDefinition(2);
        pathDefinition.commands = str;
        pathDefinition.commandsLength = -1;
        pathDefinition.coordsLength = -1;
        this.gapBuffer = pathDefinition;
        this.selectionStart = TextRange.m644getMinimpl(j);
        this.selectionEnd = TextRange.m643getMaximpl(j);
        this.compositionStart = -1;
        this.compositionEnd = -1;
        int m644getMinimpl = TextRange.m644getMinimpl(j);
        int m643getMaximpl = TextRange.m643getMaximpl(j);
        if (m644getMinimpl < 0 || m644getMinimpl > str.length()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(str.length(), Animation.CC.m20m(m644getMinimpl, "start (", ") offset is outside of text region "));
            throw null;
        }
        if (m643getMaximpl < 0 || m643getMaximpl > str.length()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(str.length(), Animation.CC.m20m(m643getMaximpl, "end (", ") offset is outside of text region "));
            throw null;
        }
        if (m644getMinimpl <= m643getMaximpl) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(m644getMinimpl, m643getMaximpl, "Do not set reversed range: ", " > "));
        throw null;
    }

    public void delete$ui_text(int i, int i2) {
        long TextRange = ParagraphKt.TextRange(i, i2);
        ((SVG.PathDefinition) this.gapBuffer).replace(i, i2, "");
        long m814updateRangeAfterDeletepWDy79M = ExceptionsKt.m814updateRangeAfterDeletepWDy79M(ParagraphKt.TextRange(this.selectionStart, this.selectionEnd), TextRange);
        setSelectionStart(TextRange.m644getMinimpl(m814updateRangeAfterDeletepWDy79M));
        setSelectionEnd(TextRange.m643getMaximpl(m814updateRangeAfterDeletepWDy79M));
        int i3 = this.compositionStart;
        if (i3 != -1) {
            long m814updateRangeAfterDeletepWDy79M2 = ExceptionsKt.m814updateRangeAfterDeletepWDy79M(ParagraphKt.TextRange(i3, this.compositionEnd), TextRange);
            if (TextRange.m641getCollapsedimpl(m814updateRangeAfterDeletepWDy79M2)) {
                this.compositionStart = -1;
                this.compositionEnd = -1;
            } else {
                this.compositionStart = TextRange.m644getMinimpl(m814updateRangeAfterDeletepWDy79M2);
                this.compositionEnd = TextRange.m643getMaximpl(m814updateRangeAfterDeletepWDy79M2);
            }
        }
    }

    public char get$ui_text(int i) {
        SVG.PathDefinition pathDefinition = (SVG.PathDefinition) this.gapBuffer;
        GapBuffer gapBuffer = (GapBuffer) pathDefinition.coords;
        if (gapBuffer == null) {
            return ((String) pathDefinition.commands).charAt(i);
        }
        if (i < pathDefinition.commandsLength) {
            return ((String) pathDefinition.commands).charAt(i);
        }
        int gapLength = gapBuffer.capacity - gapBuffer.gapLength();
        int i2 = pathDefinition.commandsLength;
        if (i >= gapLength + i2) {
            return ((String) pathDefinition.commands).charAt(i - ((gapLength - pathDefinition.coordsLength) + i2));
        }
        int i3 = i - i2;
        int i4 = gapBuffer.gapStart;
        char[] cArr = (char[]) gapBuffer.buffer;
        return i3 < i4 ? cArr[i3] : cArr[(i3 - i4) + gapBuffer.gapEnd];
    }

    /* renamed from: getComposition-MzsxiRA$ui_text, reason: not valid java name */
    public TextRange m654getCompositionMzsxiRA$ui_text() {
        int i = this.compositionStart;
        if (i != -1) {
            return new TextRange(ParagraphKt.TextRange(i, this.compositionEnd));
        }
        return null;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        View view2 = (View) this.gapBuffer;
        Insets insets = windowInsetsCompat.mImpl.getInsets(519);
        int i = this.selectionStart;
        if (i >= 0) {
            view2.getLayoutParams().height = i + insets.top;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(this.selectionEnd + insets.left, this.compositionStart + insets.top, this.compositionEnd + insets.right, view2.getPaddingBottom());
        return windowInsetsCompat;
    }

    public void replace$ui_text(int i, int i2, String str) {
        SVG.PathDefinition pathDefinition = (SVG.PathDefinition) this.gapBuffer;
        if (i < 0 || i > pathDefinition.getLength()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(pathDefinition.getLength(), Animation.CC.m20m(i, "start (", ") offset is outside of text region "));
            return;
        }
        if (i2 < 0 || i2 > pathDefinition.getLength()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(pathDefinition.getLength(), Animation.CC.m20m(i2, "end (", ") offset is outside of text region "));
        } else {
            if (i > i2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "Do not set reversed range: ", " > "));
                return;
            }
            pathDefinition.replace(i, i2, str);
            setSelectionStart(str.length() + i);
            setSelectionEnd(str.length() + i);
            this.compositionStart = -1;
            this.compositionEnd = -1;
        }
    }

    public void setComposition$ui_text(int i, int i2) {
        SVG.PathDefinition pathDefinition = (SVG.PathDefinition) this.gapBuffer;
        if (i < 0 || i > pathDefinition.getLength()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(pathDefinition.getLength(), Animation.CC.m20m(i, "start (", ") offset is outside of text region "));
        } else if (i2 < 0 || i2 > pathDefinition.getLength()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(pathDefinition.getLength(), Animation.CC.m20m(i2, "end (", ") offset is outside of text region "));
        } else if (i >= i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "Do not set reversed or empty range: ", " > "));
        } else {
            this.compositionStart = i;
            this.compositionEnd = i2;
        }
    }

    public void setSelection$ui_text(int i, int i2) {
        SVG.PathDefinition pathDefinition = (SVG.PathDefinition) this.gapBuffer;
        if (i < 0 || i > pathDefinition.getLength()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(pathDefinition.getLength(), Animation.CC.m20m(i, "start (", ") offset is outside of text region "));
        } else if (i2 < 0 || i2 > pathDefinition.getLength()) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(pathDefinition.getLength(), Animation.CC.m20m(i2, "end (", ") offset is outside of text region "));
        } else if (i > i2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, i2, "Do not set reversed range: ", " > "));
        } else {
            setSelectionStart(i);
            setSelectionEnd(i2);
        }
    }

    public void setSelectionEnd(int i) {
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot set selectionEnd to a negative value: " + i);
        }
        this.selectionEnd = i;
    }

    public void setSelectionStart(int i) {
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot set selectionStart to a negative value: " + i);
        }
        this.selectionStart = i;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return ((SVG.PathDefinition) this.gapBuffer).toString();
            default:
                return super.toString();
        }
    }

    public EditingBuffer(View view, int i, int i2, int i3, int i4) {
        this.selectionStart = i;
        this.gapBuffer = view;
        this.selectionEnd = i2;
        this.compositionStart = i3;
        this.compositionEnd = i4;
    }
}
