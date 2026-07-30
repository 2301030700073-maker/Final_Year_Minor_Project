package androidx.compose.ui.text.input;

import ch.qos.logback.core.CoreConstants;

/* compiled from: EditCommand.kt */
/* loaded from: classes.dex */
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {
    private final int lengthAfterCursor;
    private final int lengthBeforeCursor;

    public DeleteSurroundingTextInCodePointsCommand(int i, int i2) {
        this.lengthBeforeCursor = i;
        this.lengthAfterCursor = i2;
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException(("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i + " and " + i2 + " respectively.").toString());
        }
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer editingBuffer) {
        boolean isSurrogatePair;
        boolean isSurrogatePair2;
        int i = this.lengthBeforeCursor;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 < i) {
                int i5 = i4 + 1;
                if (editingBuffer.getSelectionStart$ui_text_release() > i5) {
                    isSurrogatePair2 = EditCommandKt.isSurrogatePair(editingBuffer.get$ui_text_release((editingBuffer.getSelectionStart$ui_text_release() - i5) - 1), editingBuffer.get$ui_text_release(editingBuffer.getSelectionStart$ui_text_release() - i5));
                    i4 = isSurrogatePair2 ? i4 + 2 : i5;
                    i3++;
                } else {
                    i4 = editingBuffer.getSelectionStart$ui_text_release();
                    break;
                }
            } else {
                break;
            }
        }
        int i6 = this.lengthAfterCursor;
        int i7 = 0;
        while (true) {
            if (i2 >= i6) {
                break;
            }
            int i8 = i7 + 1;
            if (editingBuffer.getSelectionEnd$ui_text_release() + i8 < editingBuffer.getLength$ui_text_release()) {
                isSurrogatePair = EditCommandKt.isSurrogatePair(editingBuffer.get$ui_text_release((editingBuffer.getSelectionEnd$ui_text_release() + i8) - 1), editingBuffer.get$ui_text_release(editingBuffer.getSelectionEnd$ui_text_release() + i8));
                i7 = isSurrogatePair ? i7 + 2 : i8;
                i2++;
            } else {
                i7 = editingBuffer.getLength$ui_text_release() - editingBuffer.getSelectionEnd$ui_text_release();
                break;
            }
        }
        editingBuffer.delete$ui_text_release(editingBuffer.getSelectionEnd$ui_text_release(), editingBuffer.getSelectionEnd$ui_text_release() + i7);
        editingBuffer.delete$ui_text_release(editingBuffer.getSelectionStart$ui_text_release() - i4, editingBuffer.getSelectionStart$ui_text_release());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) obj;
        return this.lengthBeforeCursor == deleteSurroundingTextInCodePointsCommand.lengthBeforeCursor && this.lengthAfterCursor == deleteSurroundingTextInCodePointsCommand.lengthAfterCursor;
    }

    public int hashCode() {
        return (this.lengthBeforeCursor * 31) + this.lengthAfterCursor;
    }

    public String toString() {
        return "DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=" + this.lengthBeforeCursor + ", lengthAfterCursor=" + this.lengthAfterCursor + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
