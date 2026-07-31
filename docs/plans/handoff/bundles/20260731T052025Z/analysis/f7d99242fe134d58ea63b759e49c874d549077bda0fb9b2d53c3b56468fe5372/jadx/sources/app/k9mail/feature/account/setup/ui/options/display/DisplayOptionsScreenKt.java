package app.k9mail.feature.account.setup.ui.options.display;

import android.content.res.Resources;
import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.text.TextFieldCursorKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.core.util.DebugUtils;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.AccountDisplayOptions;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.setup.domain.usecase.ValidateAccountName$ValidateAccountNameError$BlankAccountName;
import app.k9mail.feature.account.setup.domain.usecase.ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName;
import app.k9mail.feature.account.setup.domain.usecase.ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.util.WeakHashMap;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.core.validation.input.StringInputField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DisplayOptionsScreenKt {

    /* renamed from: lambda$-601351087, reason: not valid java name */
    public static final ComposableLambdaImpl f27lambda$601351087 = new ComposableLambdaImpl(-601351087, new WelcomeContentKt$$ExternalSyntheticLambda9(13), false);
    public static final ComposableLambdaImpl lambda$1191111253 = new ComposableLambdaImpl(1191111253, new WelcomeContentKt$$ExternalSyntheticLambda9(14), false);

    public static final void DisplayOptionsContent(DisplayOptionsContract$State displayOptionsContract$State, Function1 function1, PaddingValues paddingValues, String str, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        displayOptionsContract$State.getClass();
        function1.getClass();
        paddingValues.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(866379973);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(displayOptionsContract$State) : gapComposer.changedInstance(displayOptionsContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(str) ? 2048 : 1024;
        }
        int i3 = i2 | 24576;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            ScaffoldKt.ResponsiveWidthContainer(OffsetKt.windowInsetsPadding(OffsetKt.consumeWindowInsets(OffsetKt.padding(TestTagKt.testTag(SizeKt.FillWholeMaxSize, "DisplayOptionsContent"), paddingValues), paddingValues), OffsetKt.imeLambda), Expect_jvmKt.rememberComposableLambda(-1710974139, new TextFieldCursorKt$$ExternalSyntheticLambda0(str, displayOptionsContract$State, (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources), function1, 5), gapComposer), gapComposer, 48, 0);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) displayOptionsContract$State, (Function) function1, (Object) paddingValues, (Object) str, modifier2, i, 6);
        }
    }

    public static final void DisplayOptionsScreen(Function0 function0, Function0 function02, DisplayOptionsViewModel displayOptionsViewModel, BrandNameProvider brandNameProvider, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        displayOptionsViewModel.getClass();
        brandNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1159447468);
        int i2 = i | (gapComposer.changedInstance(function0) ? 4 : 2) | (gapComposer.changedInstance(function02) ? 32 : 16) | (gapComposer.changedInstance(displayOptionsViewModel) ? 256 : 128) | (gapComposer.changed(brandNameProvider) ? 2048 : 1024) | 24576;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            int i4 = 6;
            int i5 = i2 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(displayOptionsViewModel.state, gapComposer);
            boolean z = (((i5 & 14) ^ 6) > 4 && gapComposer.changedInstance(displayOptionsViewModel)) || (i5 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(displayOptionsViewModel, 9);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            Updater.LaunchedEffect(gapComposer, displayOptionsViewModel.effect, new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(displayOptionsViewModel, null, function02, function0, 4));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            boolean changed = gapComposer.changed(function1);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(6, null, function1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer.changed(function1);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new AboutFragment$$ExternalSyntheticLambda2(6, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer, 0, 1);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = FlowRowOverflow.current(gapComposer).navigationBars;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(companion, androidWindowInsets), null, Expect_jvmKt.rememberComposableLambda(-1092151079, new Updater$$ExternalSyntheticLambda0(i4, function1), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(-1807984928, new SyncOptionsScreenKt$$ExternalSyntheticLambda2(collectAsStateWithLifecycle, function1, brandNameProvider, i3), gapComposer), gapComposer, 1573248, 58);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(function0, function02, displayOptionsViewModel, brandNameProvider, modifier2, i, 6);
        }
    }

    public static final DisplayOptionsContract$State toDisplayOptionsState(AccountState accountState) {
        AccountDisplayOptions accountDisplayOptions = accountState.displayOptions;
        if (accountDisplayOptions == null) {
            String str = accountState.emailAddress;
            return new DisplayOptionsContract$State(new StringInputField(str != null ? str : "", 6), new StringInputField(null, 7), new StringInputField(null, 7));
        }
        StringInputField stringInputField = new StringInputField(accountDisplayOptions.accountName, 6);
        StringInputField stringInputField2 = new StringInputField(accountDisplayOptions.displayName, 6);
        String str2 = accountDisplayOptions.emailSignature;
        return new DisplayOptionsContract$State(stringInputField, stringInputField2, new StringInputField(str2 != null ? str2 : "", 6));
    }

    public static final String toResourceString(ValidationError validationError, Resources resources) {
        validationError.getClass();
        resources.getClass();
        if (validationError instanceof ValidateAccountName$ValidateAccountNameError$BlankAccountName) {
            String string = resources.getString(R.string.account_setup_options_account_name_error_blank);
            string.getClass();
            return string;
        }
        if (validationError instanceof ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName) {
            String string2 = resources.getString(R.string.account_setup_options_your_name_error_required);
            string2.getClass();
            return string2;
        }
        if (!(validationError instanceof ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature)) {
            Regex$$ExternalSyntheticBUOutline0.m$2(validationError, "Unknown error: ");
            return null;
        }
        String string3 = resources.getString(R.string.account_setup_options_email_signature_error_blank);
        string3.getClass();
        return string3;
    }
}
