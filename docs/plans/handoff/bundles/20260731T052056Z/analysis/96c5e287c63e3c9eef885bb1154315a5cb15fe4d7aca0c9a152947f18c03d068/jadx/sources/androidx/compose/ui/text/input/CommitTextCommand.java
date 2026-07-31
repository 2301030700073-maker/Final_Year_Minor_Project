package androidx.compose.ui.text.input;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.text.AnnotatedString;
import com.caverock.androidsvg.SVG;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CommitTextCommand implements EditCommand {
    public final AnnotatedString annotatedString;
    public final int newCursorPosition;

    public CommitTextCommand(int i, String str) {
        this(new AnnotatedString(str), i);
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(EditingBuffer editingBuffer) {
        int i = editingBuffer.compositionStart;
        AnnotatedString annotatedString = this.annotatedString;
        if (i != -1) {
            editingBuffer.replace$ui_text(i, editingBuffer.compositionEnd, annotatedString.text);
        } else {
            editingBuffer.replace$ui_text(editingBuffer.selectionStart, editingBuffer.selectionEnd, annotatedString.text);
        }
        int i2 = editingBuffer.selectionStart;
        int i3 = editingBuffer.selectionEnd;
        int i4 = i2 == i3 ? i3 : -1;
        int i5 = this.newCursorPosition;
        int coerceIn = RegexKt.coerceIn(i5 > 0 ? (i4 + i5) - 1 : (i4 + i5) - annotatedString.text.length(), 0, ((SVG.PathDefinition) editingBuffer.gapBuffer).getLength());
        editingBuffer.setSelection$ui_text(coerceIn, coerceIn);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommitTextCommand)) {
            return false;
        }
        CommitTextCommand commitTextCommand = (CommitTextCommand) obj;
        return Intrinsics.areEqual(this.annotatedString.text, commitTextCommand.annotatedString.text) && this.newCursorPosition == commitTextCommand.newCursorPosition;
    }

    public final int hashCode() {
        return (this.annotatedString.text.hashCode() * 31) + this.newCursorPosition;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CommitTextCommand(text='");
        sb.append(this.annotatedString.text);
        sb.append("', newCursorPosition=");
        return Animation.CC.m(sb, this.newCursorPosition, ')');
    }

    public CommitTextCommand(AnnotatedString annotatedString, int i) {
        this.annotatedString = annotatedString;
        this.newCursorPosition = i;
    }
}
