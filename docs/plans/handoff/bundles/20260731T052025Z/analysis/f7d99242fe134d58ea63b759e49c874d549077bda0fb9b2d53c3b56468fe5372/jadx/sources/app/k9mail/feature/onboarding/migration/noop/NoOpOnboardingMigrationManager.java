package app.k9mail.feature.onboarding.migration.noop;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NoOpOnboardingMigrationManager {
    public final void OnboardingMigrationScreen(Function0 function0, Function0 function02, Function0 function03, Function0 function04, Composer composer, int i) {
        function0.getClass();
        function02.getClass();
        function03.getClass();
        function04.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-626063136);
        int i2 = i & 1;
        if (!gapComposer.shouldExecute(i2, i2 != 0)) {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(this, function0, function02, function03, function04, i, 9);
        }
    }
}
