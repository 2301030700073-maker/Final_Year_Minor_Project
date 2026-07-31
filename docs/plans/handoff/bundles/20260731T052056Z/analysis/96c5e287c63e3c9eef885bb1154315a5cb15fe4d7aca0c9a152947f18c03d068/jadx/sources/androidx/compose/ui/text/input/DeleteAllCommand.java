package androidx.compose.ui.text.input;

import com.caverock.androidsvg.SVG;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeleteAllCommand implements EditCommand {
    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(EditingBuffer editingBuffer) {
        editingBuffer.replace$ui_text(0, ((SVG.PathDefinition) editingBuffer.gapBuffer).getLength(), "");
    }

    public final boolean equals(Object obj) {
        return obj instanceof DeleteAllCommand;
    }

    public final int hashCode() {
        return Reflection.factory.getOrCreateKotlinClass(DeleteAllCommand.class).hashCode();
    }

    public final String toString() {
        return "DeleteAllCommand()";
    }
}
