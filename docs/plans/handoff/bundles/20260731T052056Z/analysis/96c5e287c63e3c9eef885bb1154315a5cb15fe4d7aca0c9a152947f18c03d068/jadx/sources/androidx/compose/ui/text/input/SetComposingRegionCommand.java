package androidx.compose.ui.text.input;

import androidx.compose.animation.core.Animation;
import com.caverock.androidsvg.SVG;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SetComposingRegionCommand implements EditCommand {
    public final int end;
    public final int start;

    public SetComposingRegionCommand(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(EditingBuffer editingBuffer) {
        boolean z = editingBuffer.compositionStart != -1;
        SVG.PathDefinition pathDefinition = (SVG.PathDefinition) editingBuffer.gapBuffer;
        if (z) {
            editingBuffer.compositionStart = -1;
            editingBuffer.compositionEnd = -1;
        }
        int coerceIn = RegexKt.coerceIn(this.start, 0, pathDefinition.getLength());
        int coerceIn2 = RegexKt.coerceIn(this.end, 0, pathDefinition.getLength());
        if (coerceIn != coerceIn2) {
            if (coerceIn < coerceIn2) {
                editingBuffer.setComposition$ui_text(coerceIn, coerceIn2);
            } else {
                editingBuffer.setComposition$ui_text(coerceIn2, coerceIn);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) obj;
        return this.start == setComposingRegionCommand.start && this.end == setComposingRegionCommand.end;
    }

    public final int hashCode() {
        return (this.start * 31) + this.end;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SetComposingRegionCommand(start=");
        sb.append(this.start);
        sb.append(", end=");
        return Animation.CC.m(sb, this.end, ')');
    }
}
