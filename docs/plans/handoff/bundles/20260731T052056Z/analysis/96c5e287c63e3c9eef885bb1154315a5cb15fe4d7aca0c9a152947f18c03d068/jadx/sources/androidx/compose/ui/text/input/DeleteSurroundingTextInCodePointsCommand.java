package androidx.compose.ui.text.input;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import com.caverock.androidsvg.SVG;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {
    public final int lengthAfterCursor;
    public final int lengthBeforeCursor;

    public DeleteSurroundingTextInCodePointsCommand(int i, int i2) {
        this.lengthBeforeCursor = i;
        this.lengthAfterCursor = i2;
        if (i >= 0 && i2 >= 0) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.");
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(EditingBuffer editingBuffer) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 < this.lengthBeforeCursor) {
                int i4 = i3 + 1;
                int i5 = editingBuffer.selectionStart;
                if (i5 <= i4) {
                    i3 = i5;
                    break;
                } else {
                    i3 = (Character.isHighSurrogate(editingBuffer.get$ui_text((i5 - i4) + (-1))) && Character.isLowSurrogate(editingBuffer.get$ui_text(editingBuffer.selectionStart - i4))) ? i3 + 2 : i4;
                    i2++;
                }
            } else {
                break;
            }
        }
        int i6 = 0;
        while (true) {
            if (i >= this.lengthAfterCursor) {
                break;
            }
            int i7 = i6 + 1;
            int i8 = editingBuffer.selectionEnd;
            SVG.PathDefinition pathDefinition = (SVG.PathDefinition) editingBuffer.gapBuffer;
            if (i8 + i7 >= pathDefinition.getLength()) {
                i6 = pathDefinition.getLength() - editingBuffer.selectionEnd;
                break;
            } else {
                i6 = (Character.isHighSurrogate(editingBuffer.get$ui_text((editingBuffer.selectionEnd + i7) + (-1))) && Character.isLowSurrogate(editingBuffer.get$ui_text(editingBuffer.selectionEnd + i7))) ? i6 + 2 : i7;
                i++;
            }
        }
        int i9 = editingBuffer.selectionEnd;
        editingBuffer.delete$ui_text(i9, i6 + i9);
        int i10 = editingBuffer.selectionStart;
        editingBuffer.delete$ui_text(i10 - i3, i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) obj;
        return this.lengthBeforeCursor == deleteSurroundingTextInCodePointsCommand.lengthBeforeCursor && this.lengthAfterCursor == deleteSurroundingTextInCodePointsCommand.lengthAfterCursor;
    }

    public final int hashCode() {
        return (this.lengthBeforeCursor * 31) + this.lengthAfterCursor;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=");
        sb.append(this.lengthBeforeCursor);
        sb.append(", lengthAfterCursor=");
        return Animation.CC.m(sb, this.lengthAfterCursor, ')');
    }
}
