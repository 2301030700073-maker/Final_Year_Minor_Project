package androidx.compose.ui.text.input;

import com.fsck.k9.message.html.EmailSection;
import com.google.zxing.PlanarYUVLuminanceSource;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeleteAllCommand implements EditCommand {
    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        planarYUVLuminanceSource.replace$ui_text(0, "", ((EmailSection.Builder) planarYUVLuminanceSource.yuvData).getLength());
    }

    public final boolean equals(Object obj) {
        return obj instanceof DeleteAllCommand;
    }

    public final int hashCode() {
        return Reflection.getOrCreateKotlinClass(DeleteAllCommand.class).hashCode();
    }

    public final String toString() {
        return "DeleteAllCommand()";
    }
}
