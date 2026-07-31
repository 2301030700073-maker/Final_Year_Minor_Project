package app.k9mail.feature.account.setup.ui.autodiscovery;

import android.content.res.Resources;
import androidx.appcompat.app.ActionBar;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.core.util.DebugUtils;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.core.ui.compose.designsystem.template.LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.ui.WizardNavigationBarKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidatePassword$ValidatePasswordError$EmptyPassword;
import app.k9mail.feature.account.setup.domain.usecase.ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;
import app.k9mail.feature.account.setup.domain.usecase.ValidateEmailAddress$ValidateEmailAddressError;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;
import app.k9mail.feature.migration.qrcode.QrCodeModuleKt$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda2;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import com.skydoves.landscapist.ImageLoadKt$$ExternalSyntheticLambda0;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda14;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.core.validation.input.BooleanInputField;
import net.thunderbird.core.validation.input.StringInputField;
import net.thunderbird.feature.thundermail.ui.component.ThundermailButtonPanelKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AutoDiscoveryStringMapperKt {
    public static final ComposableLambdaImpl lambda$223280969 = new ComposableLambdaImpl(223280969, new QrCodeModuleKt$$ExternalSyntheticLambda1(12), false);

    public static final void AccountAutoDiscoveryContent(AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State, Function1 function1, Function0 function0, Function0 function02, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, String str, PaddingValues paddingValues, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        accountAutoDiscoveryContract$State.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        accountOAuthContract$ViewModel.getClass();
        paddingValues.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(727641218);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(accountAutoDiscoveryContract$State) : gapComposer.changedInstance(accountAutoDiscoveryContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (32768 & i) == 0 ? gapComposer.changed(accountOAuthContract$ViewModel) : gapComposer.changedInstance(accountOAuthContract$ViewModel) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(str) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 1048576 : 524288;
        }
        int i3 = i2 | 12582912;
        if (gapComposer.shouldExecute(i3 & 1, (4793491 & i3) != 4793490)) {
            ScaffoldKt.ResponsiveWidthContainer(TestTagKt.testTag(OffsetKt.windowInsetsPadding(OffsetKt.consumeWindowInsets(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), paddingValues), OffsetKt.imeLambda), "AccountAutoDiscoveryContent"), Expect_jvmKt.rememberComposableLambda(1606098690, new AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0(ImageKt.rememberScrollState(gapComposer), function1, accountAutoDiscoveryContract$State, str, function0, function02, accountOAuthContract$ViewModel), gapComposer), gapComposer, 48, 0);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(accountAutoDiscoveryContract$State, function1, function0, function02, accountOAuthContract$ViewModel, str, paddingValues, modifier2, i);
        }
    }

    public static final void AccountAutoDiscoveryScreen(Function1 function1, Function0 function0, Function0 function02, Function0 function03, AccountAutoDiscoveryViewModel accountAutoDiscoveryViewModel, BrandNameProvider brandNameProvider, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function1.getClass();
        function0.getClass();
        function02.getClass();
        function03.getClass();
        accountAutoDiscoveryViewModel.getClass();
        brandNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1983279780);
        int i2 = i | (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | (gapComposer.changedInstance(function03) ? 2048 : 1024) | (gapComposer.changedInstance(accountAutoDiscoveryViewModel) ? 16384 : 8192) | (gapComposer.changed(brandNameProvider) ? 131072 : 65536) | 1572864;
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            int i3 = i2 >> 12;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(accountAutoDiscoveryViewModel.state, gapComposer);
            boolean z = (((i3 & 14) ^ 6) > 4 && gapComposer.changedInstance(accountAutoDiscoveryViewModel)) || (i3 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(accountAutoDiscoveryViewModel, 7);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function12 = (Function1) rememberedValue;
            Updater.LaunchedEffect(gapComposer, accountAutoDiscoveryViewModel.effect, new CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(accountAutoDiscoveryViewModel, null, function0, function1, 1));
            collectAsStateWithLifecycle.getClass();
            function12.getClass();
            boolean changed = gapComposer.changed(function12);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new AboutFragment$$ExternalSyntheticLambda2(3, function12);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue2, gapComposer, 0, 1);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1933202712, new ImageLoadKt$$ExternalSyntheticLambda0(collectAsStateWithLifecycle, function12, function02, function03, accountAutoDiscoveryViewModel, brandNameProvider), gapComposer);
            modifier2 = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(modifier2, null, null, null, null, null, rememberComposableLambda, gapComposer, 1572870, 62);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda2(function1, function0, function02, function03, accountAutoDiscoveryViewModel, brandNameProvider, modifier2, i);
        }
    }

    public static final void AutoDiscoveryContent(AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State, Function1 function1, Function0 function0, Function0 function02, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        accountAutoDiscoveryContract$State.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        accountOAuthContract$ViewModel.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1938450695);
        int i2 = i | (gapComposer.changedInstance(accountAutoDiscoveryContract$State) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function02) ? 2048 : 1024) | (gapComposer.changed(accountOAuthContract$ViewModel) ? 16384 : 8192) | 196608;
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            modifier2 = Modifier.Companion.$$INSTANCE;
            OAuthBearer.ContentLoadingErrorView(accountAutoDiscoveryContract$State, lambda$223280969, Expect_jvmKt.rememberComposableLambda(-881094664, new BufferedChannel$$ExternalSyntheticLambda1(14, (Object) resources, function1), gapComposer), fillElement.then(modifier2), null, Expect_jvmKt.rememberComposableLambda(-937920814, new WizardNavigationBarKt$$ExternalSyntheticLambda0(function1, function0, function02, accountOAuthContract$ViewModel, resources), gapComposer), gapComposer, 197048 | (i2 & 14));
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda14(accountAutoDiscoveryContract$State, function1, function0, function02, accountOAuthContract$ViewModel, modifier2, i, 1);
        }
    }

    public static final void ContentView(AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State, Function1 function1, Function0 function0, Function0 function02, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, Resources resources, Modifier modifier, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        Modifier modifier2;
        int i3;
        Modifier.Companion companion;
        boolean z;
        boolean z2;
        accountAutoDiscoveryContract$State.getClass();
        StringInputField stringInputField = accountAutoDiscoveryContract$State.emailAddress;
        BooleanInputField booleanInputField = accountAutoDiscoveryContract$State.configurationApproved;
        AutoDiscoveryResult.Settings settings = accountAutoDiscoveryContract$State.autoDiscoverySettings;
        AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep = accountAutoDiscoveryContract$State.configStep;
        function1.getClass();
        function0.getClass();
        function02.getClass();
        accountOAuthContract$ViewModel.getClass();
        resources.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-786304118);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer2.changed(accountAutoDiscoveryContract$State) : gapComposer2.changedInstance(accountAutoDiscoveryContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function02) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= (32768 & i) == 0 ? gapComposer2.changed(accountOAuthContract$ViewModel) : gapComposer2.changedInstance(accountOAuthContract$ViewModel) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changedInstance(resources) ? 131072 : 65536;
        }
        int i4 = i2 | 1572864;
        if (gapComposer2.shouldExecute(i4 & 1, (599187 & i4) != 599186)) {
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(fillElement, 32.0f);
            Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
            Modifier then = m218padding3ABfNKs.then(companion2);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m380setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            AccountAutoDiscoveryContract$ConfigStep accountAutoDiscoveryContract$ConfigStep2 = AccountAutoDiscoveryContract$ConfigStep.EMAIL_ADDRESS;
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (accountAutoDiscoveryContract$ConfigStep != accountAutoDiscoveryContract$ConfigStep2) {
                gapComposer2.startReplaceGroup(32580315);
                int i6 = i4 & 112;
                boolean z3 = i6 == 32;
                Object rememberedValue = gapComposer2.rememberedValue();
                if (z3 || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new AboutFragment$$ExternalSyntheticLambda2(2, function1);
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                Data.Companion.AutoDiscoveryResultView(settings, (Function0) rememberedValue, null, gapComposer2, 0);
                if (settings == null || settings.isTrusted) {
                    z2 = false;
                    i3 = 32;
                    gapComposer2.startReplaceGroup(33088002);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(32865050);
                    i3 = 32;
                    boolean z4 = i6 == 32;
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (z4 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(6, function1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    z2 = false;
                    ActionBar.AutoDiscoveryResultApprovalView(booleanInputField, (Function1) rememberedValue2, gapComposer2, 0);
                    gapComposer2.end(false);
                }
                ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
                OffsetKt.Spacer(gapComposer2, SizeKt.m226height3ABfNKs(companion2, 16.0f));
                gapComposer2.end(z2);
            } else {
                i3 = 32;
                gapComposer2.startReplaceGroup(33171330);
                gapComposer2.end(false);
            }
            boolean isBlank = StringsKt.isBlank(stringInputField.value);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-318775464, new ThundermailButtonPanelKt$$ExternalSyntheticLambda0(function0, function02, 1), gapComposer2);
            int i7 = i3;
            CrossfadeKt.AnimatedVisibility(isBlank, null, null, null, null, rememberComposableLambda, gapComposer2, 1572870, 30);
            String str = stringInputField.value;
            ValidationError validationError = stringInputField.error;
            String autoDiscoveryValidationErrorString = validationError != null ? toAutoDiscoveryValidationErrorString(validationError, resources) : null;
            PaddingValuesImpl m213PaddingValuesYgX7TsA$default = OffsetKt.m213PaddingValuesYgX7TsA$default(3, 0.0f);
            Modifier testTag = TestTagKt.testTag(companion2, "account_setup_email_address_input");
            int i8 = i4 & 112;
            boolean z5 = i8 == i7;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (z5 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(3, function1);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            TextInputKt.EmailAddressInput((Function1) rememberedValue3, testTag, str, autoDiscoveryValidationErrorString, false, m213PaddingValuesYgX7TsA$default, gapComposer2, 196656);
            if (accountAutoDiscoveryContract$ConfigStep == AccountAutoDiscoveryContract$ConfigStep.PASSWORD) {
                gapComposer2.startReplaceGroup(34052195);
                ViewSizeResolver.CC.m((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal), companion2, 16.0f, gapComposer2);
                StringInputField stringInputField2 = accountAutoDiscoveryContract$State.password;
                String str2 = stringInputField2.value;
                ValidationError validationError2 = stringInputField2.error;
                String autoDiscoveryValidationErrorString2 = validationError2 != null ? toAutoDiscoveryValidationErrorString(validationError2, resources) : null;
                PaddingValuesImpl m213PaddingValuesYgX7TsA$default2 = OffsetKt.m213PaddingValuesYgX7TsA$default(3, 0.0f);
                Modifier testTag2 = TestTagKt.testTag(companion2, "account_setup_password_input");
                boolean z6 = i8 == 32;
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (z6 || rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(4, function1);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                TextInputKt.PasswordInput(196656, 8, m213PaddingValuesYgX7TsA$default2, gapComposer2, testTag2, str2, autoDiscoveryValidationErrorString2, (Function1) rememberedValue4, false);
                gapComposer2.end(false);
                companion = companion2;
                gapComposer = gapComposer2;
                z = true;
            } else if (accountAutoDiscoveryContract$ConfigStep == AccountAutoDiscoveryContract$ConfigStep.OAUTH) {
                gapComposer2.startReplaceGroup(34605204);
                boolean z7 = settings != null ? settings.isTrusted : false;
                Boolean bool = booleanInputField.value;
                boolean booleanValue = bool != null ? bool.booleanValue() : false;
                ViewSizeResolver.CC.m((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal), companion2, 16.0f, gapComposer2);
                boolean z8 = i8 == 32;
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (z8 || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(5, function1);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                Function1 function12 = (Function1) rememberedValue5;
                companion = companion2;
                z = true;
                gapComposer = gapComposer2;
                Operation$State.AccountOAuthView(function12, accountOAuthContract$ViewModel, null, z7 || booleanValue, gapComposer, (i4 >> 9) & 112, 4);
                gapComposer.end(false);
            } else {
                companion = companion2;
                gapComposer = gapComposer2;
                z = true;
                gapComposer.startReplaceGroup(35110690);
                gapComposer.end(false);
            }
            gapComposer.end(z);
            modifier2 = companion;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda2(accountAutoDiscoveryContract$State, function1, function0, function02, accountOAuthContract$ViewModel, resources, modifier2, i, 3);
        }
    }

    public static final String toAutoDiscoveryValidationErrorString(ValidationError validationError, Resources resources) {
        validationError.getClass();
        resources.getClass();
        if (!(validationError instanceof ValidateEmailAddress$ValidateEmailAddressError)) {
            if (validationError instanceof ValidatePassword$ValidatePasswordError$EmptyPassword) {
                if (!Intrinsics.areEqual((ValidatePassword$ValidatePasswordError$EmptyPassword) validationError, ValidatePassword$ValidatePasswordError$EmptyPassword.INSTANCE)) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                String string = resources.getString(R.string.account_setup_auto_discovery_validation_error_password_required);
                string.getClass();
                return string;
            }
            if (!(validationError instanceof ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired)) {
                Regex$$ExternalSyntheticBUOutline0.m$2(validationError, "Unknown error: ");
                return null;
            }
            if (!Intrinsics.areEqual((ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired) validationError, ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired.INSTANCE)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            String string2 = resources.getString(R.string.account_setup_auto_discovery_result_approval_error_approval_required);
            string2.getClass();
            return string2;
        }
        ValidateEmailAddress$ValidateEmailAddressError validateEmailAddress$ValidateEmailAddressError = (ValidateEmailAddress$ValidateEmailAddressError) validationError;
        if (Intrinsics.areEqual(validateEmailAddress$ValidateEmailAddressError, ValidateEmailAddress$ValidateEmailAddressError.EmptyEmailAddress.INSTANCE)) {
            String string3 = resources.getString(R.string.account_setup_auto_discovery_validation_error_email_address_required);
            string3.getClass();
            return string3;
        }
        if (Intrinsics.areEqual(validateEmailAddress$ValidateEmailAddressError, ValidateEmailAddress$ValidateEmailAddressError.NotAllowed.INSTANCE)) {
            String string4 = resources.getString(R.string.account_setup_auto_discovery_validation_error_email_address_not_allowed);
            string4.getClass();
            return string4;
        }
        if (Intrinsics.areEqual(validateEmailAddress$ValidateEmailAddressError, ValidateEmailAddress$ValidateEmailAddressError.InvalidOrNotSupported.INSTANCE)) {
            String string5 = resources.getString(R.string.account_setup_auto_discovery_validation_error_email_address_not_supported);
            string5.getClass();
            return string5;
        }
        if (!Intrinsics.areEqual(validateEmailAddress$ValidateEmailAddressError, ValidateEmailAddress$ValidateEmailAddressError.InvalidEmailAddress.INSTANCE)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        String string6 = resources.getString(R.string.account_setup_auto_discovery_validation_error_email_address_invalid);
        string6.getClass();
        return string6;
    }
}
