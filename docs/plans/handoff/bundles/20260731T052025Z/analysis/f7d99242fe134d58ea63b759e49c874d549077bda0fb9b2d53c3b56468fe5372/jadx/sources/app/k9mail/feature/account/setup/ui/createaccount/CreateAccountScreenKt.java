package app.k9mail.feature.account.setup.ui.createaccount;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
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
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.migration.qrcode.QrCodeModuleKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.common.provider.BrandNameProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CreateAccountScreenKt {
    public static final ComposableLambdaImpl lambda$1341403986 = new ComposableLambdaImpl(1341403986, new QrCodeModuleKt$$ExternalSyntheticLambda1(13), false);

    /* renamed from: lambda$-2242367, reason: not valid java name */
    public static final ComposableLambdaImpl f26lambda$2242367 = new ComposableLambdaImpl(-2242367, new WelcomeContentKt$$ExternalSyntheticLambda9(11), false);

    /* renamed from: lambda$-1334789093, reason: not valid java name */
    public static final ComposableLambdaImpl f25lambda$1334789093 = new ComposableLambdaImpl(-1334789093, new WelcomeContentKt$$ExternalSyntheticLambda9(12), false);

    public static final void CreateAccountContent(CreateAccountContract$State createAccountContract$State, PaddingValues paddingValues, Modifier modifier, Composer composer, int i) {
        int i2;
        createAccountContract$State.getClass();
        paddingValues.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1404329712);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(createAccountContract$State) : gapComposer.changedInstance(createAccountContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            modifier = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.ResponsiveWidthContainer(TestTagKt.testTag(OffsetKt.padding(modifier, paddingValues), "CreateAccountContent").then(modifier), Expect_jvmKt.rememberComposableLambda(-972005744, new MovableContentKt$$ExternalSyntheticLambda0(5, createAccountContract$State), gapComposer), gapComposer, 48, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(createAccountContract$State, paddingValues, modifier2, i, 24);
        }
    }

    public static final void CreateAccountScreen(Function1 function1, Function0 function0, CreateAccountViewModel createAccountViewModel, BrandNameProvider brandNameProvider, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function1.getClass();
        function0.getClass();
        createAccountViewModel.getClass();
        brandNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-939759442);
        int i2 = i | (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(createAccountViewModel) ? 256 : 128) | (gapComposer.changed(brandNameProvider) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            int i3 = i2 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(createAccountViewModel.state, gapComposer);
            boolean z = (((i3 & 14) ^ 6) > 4 && gapComposer.changedInstance(createAccountViewModel)) || (i3 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(createAccountViewModel, 8);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function12 = (Function1) rememberedValue;
            Updater.LaunchedEffect(gapComposer, createAccountViewModel.effect, new CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(createAccountViewModel, null, function0, function1, 0));
            collectAsStateWithLifecycle.getClass();
            function12.getClass();
            boolean changed = gapComposer.changed(function12);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(5, null, function12);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer.changed(function12);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new AboutFragment$$ExternalSyntheticLambda2(4, function12);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer, 0, 1);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = FlowRowOverflow.current(gapComposer).navigationBars;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(companion, androidWindowInsets), Expect_jvmKt.rememberComposableLambda(1300564594, new CreateAccountScreenKt$$ExternalSyntheticLambda1(brandNameProvider, 0), gapComposer), Expect_jvmKt.rememberComposableLambda(1879330739, new CreateAccountScreenKt$$ExternalSyntheticLambda2(0, collectAsStateWithLifecycle, function12), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(1832888634, new CreateAccountScreenKt$$ExternalSyntheticLambda3(collectAsStateWithLifecycle, 0), gapComposer), gapComposer, 1573296, 56);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(function1, function0, createAccountViewModel, brandNameProvider, modifier2, i, 5);
        }
    }
}
