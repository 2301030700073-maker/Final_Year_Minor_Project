package app.k9mail.feature.account.setup.ui.specialfolders;

import android.content.res.Resources;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.migration.qrcode.QrCodeModuleKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.mail.folders.RemoteFolder;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.util.WeakHashMap;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SpecialFoldersScreenKt {

    /* renamed from: lambda$-314538883, reason: not valid java name */
    public static final ComposableLambdaImpl f28lambda$314538883 = new ComposableLambdaImpl(-314538883, new QrCodeModuleKt$$ExternalSyntheticLambda1(14), false);
    public static final ComposableLambdaImpl lambda$446464532 = new ComposableLambdaImpl(446464532, new WelcomeContentKt$$ExternalSyntheticLambda9(17), false);
    public static final ComposableLambdaImpl lambda$1100856701 = new ComposableLambdaImpl(1100856701, new WelcomeContentKt$$ExternalSyntheticLambda9(18), false);
    public static final ComposableLambdaImpl lambda$293360567 = new ComposableLambdaImpl(293360567, new WelcomeContentKt$$ExternalSyntheticLambda9(19), false);

    public static final void SpecialFoldersContent(SpecialFoldersContract$State specialFoldersContract$State, Function1 function1, PaddingValues paddingValues, String str, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        specialFoldersContract$State.getClass();
        function1.getClass();
        paddingValues.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(136816753);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(specialFoldersContract$State) : gapComposer.changedInstance(specialFoldersContract$State) ? 4 : 2) | i;
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
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.ResponsiveWidthContainer(OffsetKt.padding(TestTagKt.testTag(companion, "SpecialFoldersContent"), paddingValues).then(companion), Expect_jvmKt.rememberComposableLambda(-777607695, new ArchiveOperations$$ExternalSyntheticLambda2(str, (Object) specialFoldersContract$State, (Function) function1, 5), gapComposer), gapComposer, 48, 0);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) specialFoldersContract$State, (Function) function1, (Object) paddingValues, (Object) str, modifier2, i, 8);
        }
    }

    public static final void SpecialFoldersErrorView(SpecialFoldersContract$Failure$LoadFoldersFailed specialFoldersContract$Failure$LoadFoldersFailed, Function0 function0, Composer composer, int i) {
        int i2;
        String stringResource;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1486301680);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(specialFoldersContract$Failure$LoadFoldersFailed) : gapComposer.changedInstance(specialFoldersContract$Failure$LoadFoldersFailed) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer.skipToGroupEnd();
        } else {
            if (specialFoldersContract$Failure$LoadFoldersFailed == null) {
                throw ViewSizeResolver.CC.m(gapComposer, 1888199244, false);
            }
            gapComposer.startReplaceGroup(-1595249793);
            String str = specialFoldersContract$Failure$LoadFoldersFailed.messageFromServer;
            if (str == null) {
                gapComposer.startReplaceGroup(-1595249794);
                gapComposer.end(false);
                stringResource = null;
            } else {
                gapComposer.startReplaceGroup(-1595249793);
                stringResource = Operation$State.stringResource(R.string.account_common_error_server_message, new Object[]{str}, gapComposer);
                gapComposer.end(false);
            }
            String str2 = stringResource;
            gapComposer.end(false);
            String stringResource2 = Operation$State.stringResource(gapComposer, R.string.account_setup_special_folders_error_message);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            ActionBar.ErrorView(stringResource2, OffsetKt.m218padding3ABfNKs(fillElement, 16.0f), str2, function0, null, gapComposer, (i2 << 6) & 7168, 16);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 11, specialFoldersContract$Failure$LoadFoldersFailed, function0);
        }
    }

    public static final void SpecialFoldersFormContent(SpecialFoldersContract$FormState specialFoldersContract$FormState, Function1 function1, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-79394807);
        int i2 = i | (gapComposer.changed(specialFoldersContract$FormState) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            modifier2 = modifier;
            Modifier then = OffsetKt.windowInsetsPadding(Modifier.Companion.$$INSTANCE, OffsetKt.imeLambda).then(modifier2);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            boolean z = false;
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
            boolean z2 = (i2 & 14) == 4;
            if ((i2 & 112) == 32) {
                z = true;
            }
            boolean changedInstance = z2 | z | gapComposer.changedInstance(resources);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SimpleActor$$ExternalSyntheticLambda0(specialFoldersContract$FormState, function1, resources, 27);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ActionBar.LazyColumn(196608, 462, null, null, arrangement$SpacedAligned, null, null, gapComposer, horizontal, then, (Function1) rememberedValue, false);
        } else {
            modifier2 = modifier;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(specialFoldersContract$FormState, function1, modifier2, i, 12);
        }
    }

    public static final void SpecialFoldersScreen(Function1 function1, Function0 function0, SpecialFoldersViewModel specialFoldersViewModel, BrandNameProvider brandNameProvider, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function1.getClass();
        function0.getClass();
        specialFoldersViewModel.getClass();
        brandNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-574998903);
        int i2 = 2;
        int i3 = i | (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(specialFoldersViewModel) ? 256 : 128) | (gapComposer.changed(brandNameProvider) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            int i4 = i3 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(specialFoldersViewModel.state, gapComposer);
            boolean z = (((i4 & 14) ^ 6) > 4 && gapComposer.changedInstance(specialFoldersViewModel)) || (i4 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(specialFoldersViewModel, 11);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function12 = (Function1) rememberedValue;
            Updater.LaunchedEffect(gapComposer, specialFoldersViewModel.effect, new CreateAccountScreenKt$CreateAccountScreen$$inlined$observe$2(specialFoldersViewModel, null, function1, function0));
            collectAsStateWithLifecycle.getClass();
            function12.getClass();
            boolean changed = gapComposer.changed(function12);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(8, null, function12);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer.changed(function12);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new AboutFragment$$ExternalSyntheticLambda2(13, function12);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer, 0, 1);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = FlowRowOverflow.current(gapComposer).navigationBars;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(companion, androidWindowInsets), null, Expect_jvmKt.rememberComposableLambda(-849922716, new CreateAccountScreenKt$$ExternalSyntheticLambda2(i2, collectAsStateWithLifecycle, function12), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(-1427203459, new SyncOptionsScreenKt$$ExternalSyntheticLambda2(collectAsStateWithLifecycle, function12, brandNameProvider, i2), gapComposer), gapComposer, 1573248, 58);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(function1, function0, specialFoldersViewModel, brandNameProvider, modifier2, i, 8);
        }
    }

    public static final String toResourceString(SpecialFolderOption specialFolderOption, Resources resources) {
        String string;
        specialFolderOption.getClass();
        resources.getClass();
        if (specialFolderOption instanceof SpecialFolderOption.None) {
            string = resources.getString(R.string.account_setup_special_folders_folder_none);
            string.getClass();
            if (((SpecialFolderOption.None) specialFolderOption).isAutomatic) {
                string = resources.getString(R.string.account_setup_special_folders_folder_automatic, string);
            }
        } else if (specialFolderOption instanceof SpecialFolderOption.Regular) {
            string = ((SpecialFolderOption.Regular) specialFolderOption).remoteFolder.displayName;
        } else {
            if (!(specialFolderOption instanceof SpecialFolderOption.Special)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            SpecialFolderOption.Special special = (SpecialFolderOption.Special) specialFolderOption;
            boolean z = special.isAutomatic;
            RemoteFolder remoteFolder = special.remoteFolder;
            string = z ? resources.getString(R.string.account_setup_special_folders_folder_automatic, remoteFolder.displayName) : remoteFolder.displayName;
        }
        string.getClass();
        return string;
    }
}
