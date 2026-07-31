package androidx.compose.foundation.text.input.internal;

import androidx.compose.ui.text.input.EditCommand;
import com.google.zxing.PlanarYUVLuminanceSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HandwritingGesture_androidKt$compoundEditCommand$1 implements EditCommand {
    public final /* synthetic */ EditCommand[] $editCommands;

    public HandwritingGesture_androidKt$compoundEditCommand$1(EditCommand[] editCommandArr) {
        this.$editCommands = editCommandArr;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void applyTo(PlanarYUVLuminanceSource planarYUVLuminanceSource) {
        for (EditCommand editCommand : this.$editCommands) {
            editCommand.applyTo(planarYUVLuminanceSource);
        }
    }
}
