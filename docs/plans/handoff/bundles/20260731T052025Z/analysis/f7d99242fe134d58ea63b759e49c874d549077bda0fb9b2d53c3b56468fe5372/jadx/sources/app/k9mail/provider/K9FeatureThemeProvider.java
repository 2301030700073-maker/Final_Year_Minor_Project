package app.k9mail.provider;

import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import okhttp3.CacheControl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9FeatureThemeProvider implements FeatureThemeProvider {
    public final void WithTheme(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1912604315);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            CacheControl.Companion.K9MailTheme2(false, Expect_jvmKt.rememberComposableLambda(-426419031, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, 9), gapComposer), gapComposer, 48, 1);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 13, this, composableLambdaImpl);
        }
    }

    public final void WithTheme$1(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2127621513);
        if (gapComposer.shouldExecute(i & 1, (i & 19) != 18)) {
            CacheControl.Companion.K9MailTheme2(true, Expect_jvmKt.rememberComposableLambda(1266732237, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, 8), gapComposer), gapComposer, 54, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, 4, this, composableLambdaImpl);
        }
    }
}
