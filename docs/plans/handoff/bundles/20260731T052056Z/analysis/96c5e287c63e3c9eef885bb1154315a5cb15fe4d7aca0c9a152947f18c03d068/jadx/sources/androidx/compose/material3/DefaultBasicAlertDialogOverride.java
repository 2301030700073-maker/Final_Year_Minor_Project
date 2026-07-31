package androidx.compose.material3;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.window.DialogProperties;
import coil3.ImageLoader$Builder;
import coil3.util.UtilsKt;
import kotlin.jvm.functions.Function0;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultBasicAlertDialogOverride {
    public static final DefaultBasicAlertDialogOverride INSTANCE = new DefaultBasicAlertDialogOverride();

    public final void BasicAlertDialog(ImageLoader$Builder imageLoader$Builder, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(1565826668);
        int i2 = (gapComposer.changed(imageLoader$Builder) ? 4 : 2) | i;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            gapComposer2 = gapComposer;
            UtilsKt.Dialog((Function0) imageLoader$Builder.application, (DialogProperties) imageLoader$Builder.componentRegistry, Expect_jvmKt.rememberComposableLambda(1163527043, new CardKt$Card$1(i3, imageLoader$Builder), gapComposer), gapComposer2, 384, 0);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(this, imageLoader$Builder, i, 13);
        }
    }
}
