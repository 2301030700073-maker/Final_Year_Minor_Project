package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultBasicAlertDialogOverride {
    public static final DefaultBasicAlertDialogOverride INSTANCE = new DefaultBasicAlertDialogOverride();

    public final void BasicAlertDialog(MenuHostHelper menuHostHelper, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1565826668);
        int i2 = (gapComposer.changed(menuHostHelper) ? 4 : 2) | i;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            DebugUtils.Dialog((Function0) menuHostHelper.mOnInvalidateMenuCallback, (DialogProperties) menuHostHelper.mMenuProviders, Expect_jvmKt.rememberComposableLambda(1163527043, new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i3, menuHostHelper), gapComposer), gapComposer, 384);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 13, this, menuHostHelper);
        }
    }
}
