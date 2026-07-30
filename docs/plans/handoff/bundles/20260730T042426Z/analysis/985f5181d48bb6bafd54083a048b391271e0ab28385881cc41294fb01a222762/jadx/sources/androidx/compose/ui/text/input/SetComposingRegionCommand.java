package androidx.compose.ui.text.input;

import ch.qos.logback.core.CoreConstants;
import kotlin.ranges.RangesKt;

/* compiled from: EditCommand.kt */
/* loaded from: classes.dex */
public final class SetComposingRegionCommand implements EditCommand {
    private final int end;
    private final int start;

    public SetComposingRegionCommand(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public void applyTo(EditingBuffer editingBuffer) {
        if (editingBuffer.hasComposition$ui_text_release()) {
            editingBuffer.commitComposition$ui_text_release();
        }
        int coerceIn = RangesKt.coerceIn(this.start, 0, editingBuffer.getLength$ui_text_release());
        int coerceIn2 = RangesKt.coerceIn(this.end, 0, editingBuffer.getLength$ui_text_release());
        if (coerceIn != coerceIn2) {
            if (coerceIn < coerceIn2) {
                editingBuffer.setComposition$ui_text_release(coerceIn, coerceIn2);
            } else {
                editingBuffer.setComposition$ui_text_release(coerceIn2, coerceIn);
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) obj;
        return this.start == setComposingRegionCommand.start && this.end == setComposingRegionCommand.end;
    }

    public int hashCode() {
        return (this.start * 31) + this.end;
    }

    public String toString() {
        return "SetComposingRegionCommand(start=" + this.start + ", end=" + this.end + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
