package app.k9mail.feature.account.setup.ui.options.sync;

import android.content.res.Resources;
import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
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
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.AccountSyncOptions;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
import app.k9mail.feature.account.setup.domain.entity.EmailCheckFrequency;
import app.k9mail.feature.account.setup.domain.entity.EmailDisplayCount;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.bumptech.glide.GlideBuilder$1;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import com.mikepenz.fastadapter.VerboseLogger;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.util.Iterator;
import java.util.WeakHashMap;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.common.provider.BrandNameProvider;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SyncOptionsScreenKt {
    public static final ComposableLambdaImpl lambda$975864938 = new ComposableLambdaImpl(975864938, new WelcomeContentKt$$ExternalSyntheticLambda9(15), false);
    public static final ComposableLambdaImpl lambda$1556554214 = new ComposableLambdaImpl(1556554214, new WelcomeContentKt$$ExternalSyntheticLambda9(16), false);

    public static final void SyncOptionsContent(SyncOptionsContract$State syncOptionsContract$State, Function1 function1, PaddingValues paddingValues, String str, Modifier modifier, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        syncOptionsContract$State.getClass();
        function1.getClass();
        paddingValues.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1803887990);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(syncOptionsContract$State) : gapComposer.changedInstance(syncOptionsContract$State) ? 4 : 2) | i;
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
            Resources resources = (Resources) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalResources);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.ResponsiveWidthContainer(OffsetKt.padding(OffsetKt.consumeWindowInsets(TestTagKt.testTag(companion, "SyncOptionsContent"), paddingValues), paddingValues).then(companion), Expect_jvmKt.rememberComposableLambda(-57040138, new TextFieldCursorKt$$ExternalSyntheticLambda0(str, syncOptionsContract$State, function1, resources, 6), gapComposer), gapComposer, 48, 0);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) syncOptionsContract$State, (Function) function1, (Object) paddingValues, (Object) str, modifier2, i, 7);
        }
    }

    public static final void SyncOptionsScreen(Function0 function0, Function0 function02, SyncOptionsViewModel syncOptionsViewModel, BrandNameProvider brandNameProvider, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        function0.getClass();
        function02.getClass();
        syncOptionsViewModel.getClass();
        brandNameProvider.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1361587389);
        int i2 = i | (gapComposer.changedInstance(function0) ? 4 : 2) | (gapComposer.changedInstance(function02) ? 32 : 16) | (gapComposer.changedInstance(syncOptionsViewModel) ? 256 : 128) | (gapComposer.changed(brandNameProvider) ? 2048 : 1024) | 24576;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            int i4 = i2 >> 6;
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(syncOptionsViewModel.state, gapComposer);
            boolean z = (((i4 & 14) ^ 6) > 4 && gapComposer.changedInstance(syncOptionsViewModel)) || (i4 & 6) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = new AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1(syncOptionsViewModel, 10);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            Updater.LaunchedEffect(gapComposer, syncOptionsViewModel.effect, new SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2(syncOptionsViewModel, null, function02, function0, 0));
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            boolean changed = gapComposer.changed(function1);
            Object rememberedValue2 = gapComposer.rememberedValue();
            int i5 = 7;
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(7, null, function1);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
            boolean changed2 = gapComposer.changed(function1);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new AboutFragment$$ExternalSyntheticLambda2(9, function1);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            DebugUtils.BackHandler(false, (Function0) rememberedValue3, gapComposer, 0, 1);
            WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
            AndroidWindowInsets androidWindowInsets = FlowRowOverflow.current(gapComposer).navigationBars;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ScaffoldKt.Scaffold(OffsetKt.windowInsetsPadding(companion, androidWindowInsets), null, Expect_jvmKt.rememberComposableLambda(-1157440226, new Updater$$ExternalSyntheticLambda0(i5, function1), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(-564565193, new SyncOptionsScreenKt$$ExternalSyntheticLambda2(collectAsStateWithLifecycle, function1, brandNameProvider, i3), gapComposer), gapComposer, 1573248, 58);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CoilImageKt$$ExternalSyntheticLambda15(function0, function02, syncOptionsViewModel, brandNameProvider, modifier2, i, 7);
        }
    }

    public static final SyncOptionsContract$State toSyncOptionsState(AccountState accountState) {
        Object obj;
        Object obj2;
        AccountSyncOptions accountSyncOptions = accountState.syncOptions;
        EmailDisplayCount emailDisplayCount = EmailDisplayCount.DEFAULT;
        GlideBuilder$1 glideBuilder$1 = EmailDisplayCount.Companion;
        EmailCheckFrequency emailCheckFrequency = EmailCheckFrequency.DEFAULT;
        VerboseLogger verboseLogger = EmailCheckFrequency.Companion;
        if (accountSyncOptions == null) {
            verboseLogger.getClass();
            glideBuilder$1.getClass();
            return new SyncOptionsContract$State(emailCheckFrequency, emailDisplayCount, true);
        }
        int i = accountSyncOptions.checkFrequencyInMinutes;
        verboseLogger.getClass();
        Iterator<E> it = Okio.toImmutableList(EmailCheckFrequency.$ENTRIES).iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            if (((EmailCheckFrequency) obj2).minutes == i) {
                break;
            }
        }
        EmailCheckFrequency emailCheckFrequency2 = (EmailCheckFrequency) obj2;
        if (emailCheckFrequency2 != null) {
            emailCheckFrequency = emailCheckFrequency2;
        }
        int i2 = accountSyncOptions.messageDisplayCount;
        glideBuilder$1.getClass();
        Iterator<E> it2 = Okio.toImmutableList(EmailDisplayCount.$ENTRIES).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((EmailDisplayCount) next).count == i2) {
                obj = next;
                break;
            }
        }
        EmailDisplayCount emailDisplayCount2 = (EmailDisplayCount) obj;
        if (emailDisplayCount2 != null) {
            emailDisplayCount = emailDisplayCount2;
        }
        return new SyncOptionsContract$State(emailCheckFrequency, emailDisplayCount, accountSyncOptions.showNotification);
    }
}
