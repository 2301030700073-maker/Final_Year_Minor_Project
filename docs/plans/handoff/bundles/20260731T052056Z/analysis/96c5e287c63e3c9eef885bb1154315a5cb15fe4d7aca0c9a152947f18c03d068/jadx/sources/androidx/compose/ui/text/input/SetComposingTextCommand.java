package androidx.compose.ui.text.input;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.text.AnnotatedString;
import com.caverock.androidsvg.SVG;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SetComposingTextCommand implements EditCommand {
    public final AnnotatedString annotatedString;
    public final int newCursorPosition;

    public SetComposingTextCommand(int i, String str) {
        this.annotatedString = new AnnotatedString(str);
        this.newCursorPosition = i;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(EditingBuffer editingBuffer) {
        String str = this.annotatedString.text;
        int i = editingBuffer.compositionStart;
        if (i != -1) {
            editingBuffer.replace$ui_text(i, editingBuffer.compositionEnd, str);
            if (str.length() > 0) {
                editingBuffer.setComposition$ui_text(i, str.length() + i);
            }
        } else {
            int i2 = editingBuffer.selectionStart;
            editingBuffer.replace$ui_text(i2, editingBuffer.selectionEnd, str);
            if (str.length() > 0) {
                editingBuffer.setComposition$ui_text(i2, str.length() + i2);
            }
        }
        int i3 = editingBuffer.selectionStart;
        int i4 = editingBuffer.selectionEnd;
        int i5 = i3 == i4 ? i4 : -1;
        int i6 = this.newCursorPosition;
        int coerceIn = RegexKt.coerceIn(i6 > 0 ? (i5 + i6) - 1 : (i5 + i6) - str.length(), 0, ((SVG.PathDefinition) editingBuffer.gapBuffer).getLength());
        editingBuffer.setSelection$ui_text(coerceIn, coerceIn);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingTextCommand)) {
            return false;
        }
        SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) obj;
        return Intrinsics.areEqual(this.annotatedString.text, setComposingTextCommand.annotatedString.text) && this.newCursorPosition == setComposingTextCommand.newCursorPosition;
    }

    public final int hashCode() {
        return (this.annotatedString.text.hashCode() * 31) + this.newCursorPosition;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SetComposingTextCommand(text='");
        sb.append(this.annotatedString.text);
        sb.append("', newCursorPosition=");
        return Animation.CC.m(sb, this.newCursorPosition, ')');
    }
}
