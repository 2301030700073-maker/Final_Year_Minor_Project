package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.window.DialogProperties;
import com.google.android.exoplayer2.RendererCapabilities;
import kotlin.jvm.functions.Function0;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultBasicAlertDialogOverride {
    public static final DefaultBasicAlertDialogOverride INSTANCE = new DefaultBasicAlertDialogOverride();

    public final void BasicAlertDialog(ProcessFinisher processFinisher, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1565826668);
        int i2 = 4;
        int i3 = (gapComposer.changed(processFinisher) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            Jsoup.Dialog((Function0) processFinisher.context, (DialogProperties) processFinisher.config, Expect_jvmKt.rememberComposableLambda(1163527043, new Updater$$ExternalSyntheticLambda0(processFinisher, i2), gapComposer), gapComposer, RendererCapabilities.MODE_SUPPORT_MASK, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda2(i, this, processFinisher, 7);
        }
    }
}
