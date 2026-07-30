package androidx.compose.ui.text.input;

import ch.qos.logback.core.CoreConstants;
import kotlin.ranges.RangesKt;

/* compiled from: EditCommand.kt */
/* loaded from: classes.dex */
public final class SetSelectionCommand implements EditCommand {
    private final int end;
    private final int start;

    public SetSelectionCommand(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer editingBuffer) {
        int coerceIn = RangesKt.coerceIn(this.start, 0, editingBuffer.getLength$ui_text_release());
        int coerceIn2 = RangesKt.coerceIn(this.end, 0, editingBuffer.getLength$ui_text_release());
        if (coerceIn < coerceIn2) {
            editingBuffer.setSelection$ui_text_release(coerceIn, coerceIn2);
        } else {
            editingBuffer.setSelection$ui_text_release(coerceIn2, coerceIn);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetSelectionCommand)) {
            return false;
        }
        SetSelectionCommand setSelectionCommand = (SetSelectionCommand) obj;
        return this.start == setSelectionCommand.start && this.end == setSelectionCommand.end;
    }

    public int hashCode() {
        return (this.start * 31) + this.end;
    }

    public String toString() {
        return "SetSelectionCommand(start=" + this.start + ", end=" + this.end + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
