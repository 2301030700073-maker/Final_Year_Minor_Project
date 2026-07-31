package app.k9mail.feature.account.edit.ui.server.settings.save;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.TestTagKt;
import androidx.core.util.DebugUtils;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.oauth.AccountOAuthModuleKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.server.validation.ui.ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$$ExternalSyntheticLambda3;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SaveServerSettingsScreenKt {

    /* renamed from: lambda$-933224993, reason: not valid java name */
    public static final ComposableLambdaImpl f23lambda$933224993 = new ComposableLambdaImpl(-933224993, new AccountOAuthModuleKt$$ExternalSyntheticLambda1(1), false);
    public static final ComposableLambdaImpl lambda$1868006988 = new ComposableLambdaImpl(1868006988, new WelcomeContentKt$$ExternalSyntheticLambda9(4), false);
    public static final ComposableLambdaImpl lambda$1143731368 = new ComposableLambdaImpl(1143731368, new WelcomeContentKt$$ExternalSyntheticLambda9(5), false);

    public static final void SaveServerSettingsContent(SaveServerSettingsContract$State saveServerSettingsContract$State, PaddingValues paddingValues, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        saveServerSettingsContract$State.getClass();
        paddingValues.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-934260835);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(saveServerSettingsContract$State) : gapComposer.changedInstance(saveServerSettingsContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.ResponsiveWidthContainer(OffsetKt.padding(TestTagKt.testTag(companion, "SaveServerSettingsContent"), paddingValues).then(companion), Expect_jvmKt.rememberComposableLambda(-1746268899, new MovableContentKt$$ExternalSyntheticLambda0(4, saveServerSettingsContract$State), gapComposer), gapComposer, 48, 0);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(saveServerSettingsContract$State, paddingValues, modifier2, i, 19);
        }
    }

    public static final void SaveServerSettingsScreen(String str, Function0 function0, Function0 function02, BaseSaveServerSettingsViewModel baseSaveServerSettingsViewModel, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        str.getClass();
        function0.getClass();
        function02.getClass();
        baseSaveServerSettingsViewModel.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(859614712);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | (gapComposer.changedInstance(baseSaveServerSettingsViewModel) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            int i3 = i2 >> 9;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(baseSaveServerSettingsViewModel.state, gapComposer);
            boolean z = (((i3 & 14) ^ 6) > 4 && gapComposer.changedInstance(baseSaveServerSettingsViewModel)) || (i3 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(baseSaveServerSettingsViewModel, 1);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            Updater.LaunchedEffect(gapComposer, baseSaveServerSettingsViewModel.effect, new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(baseSaveServerSettingsViewModel, null, function0, function02, 1));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            boolean changed = gapComposer.changed(function1);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(1, null, function1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer.changed(function1);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(2, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer, 0, 1);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-312047948, new ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0(str, function1, 1), gapComposer);
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-1349164525, new CreateAccountScreenKt$$ExternalSyntheticLambda2(function1, collectAsStateWithLifecycle), gapComposer);
            ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(-2065177364, new CreateAccountScreenKt$$ExternalSyntheticLambda3(collectAsStateWithLifecycle, 1), gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(companion, rememberComposableLambda, rememberComposableLambda2, null, null, null, rememberComposableLambda3, gapComposer, 1573302, 56);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(str, function0, function02, baseSaveServerSettingsViewModel, modifier2, i, 3);
        }
    }
}
