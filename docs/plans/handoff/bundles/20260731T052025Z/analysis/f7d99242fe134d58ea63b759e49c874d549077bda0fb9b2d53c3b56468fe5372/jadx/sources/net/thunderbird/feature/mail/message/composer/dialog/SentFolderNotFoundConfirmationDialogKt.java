package net.thunderbird.feature.mail.message.composer.dialog;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import com.fsck.k9.R;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.funding.FeatureFundingModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.thundermail.ui.component.ThundermailButtonPanelKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SentFolderNotFoundConfirmationDialogKt {
    public static final ComposableLambdaImpl lambda$246239164 = new ComposableLambdaImpl(246239164, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(8), false);

    public static final void SentFolderNotFoundConfirmationDialog(Function0 function0, Function0 function02, Function0 function03, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        function03.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(728574191);
        int i2 = i | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | (gapComposer.changedInstance(function03) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.startReplaceGroup(-1810706034);
            String stringResource = Operation$State.stringResource(gapComposer, R.string.sent_folder_not_found_dialog_title);
            String stringResource2 = Operation$State.stringResource(gapComposer, R.string.sent_folder_not_found_dialog_supporting_text);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            PaddingValuesImpl m213PaddingValuesYgX7TsA$default = OffsetKt.m213PaddingValuesYgX7TsA$default(2, 8.0f);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            TopAppBarKt.m844BasicDialogFItCLgY(stringResource, function03, Expect_jvmKt.rememberComposableLambda(-886506261, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(8, function0), gapComposer), Expect_jvmKt.rememberComposableLambda(-739192108, new ThundermailButtonPanelKt$$ExternalSyntheticLambda0(function03, function02, 2), gapComposer), companion, stringResource2, m213PaddingValuesYgX7TsA$default, false, 0L, null, gapComposer, ((i2 >> 6) & 112) | 28032, 896);
            gapComposer.end(false);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(function0, function02, function03, modifier2, i, 17);
        }
    }
}
