package net.newpipe.app.screen.settings;

import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.TabKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.RendererCapabilities;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import net.newpipe.app.navigation.NavDisplayKt$$ExternalSyntheticLambda1;
import net.newpipe.app.navigation.NavModuleKt$$ExternalSyntheticLambda1;
import net.newpipe.app.navigation.Navigator;
import net.newpipe.app.screen.settings.model.SettingsCategory;
import net.newpipe.app.screen.settings.model.SettingsCategoryType;
import net.newpipe.app.viewmodel.settings.SettingsViewModel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.StringResource;
import org.koin.compose.KoinApplicationKt;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda2;
import org.koin.core.scope.Scope;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SettingsHomeScreenKt {

    /* renamed from: lambda$-1607639693, reason: not valid java name */
    public static final ComposableLambdaImpl f15lambda$1607639693 = new ComposableLambdaImpl(-1607639693, false, new NavModuleKt$$ExternalSyntheticLambda1(7, (byte) 0));

    public static final void SettingsHomeScreen(Navigator navigator, SettingsViewModel settingsViewModel, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-246139261);
        int i2 = i | 18;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer.startDefaults();
            int i3 = i & 1;
            Object obj = Composer.Companion.Empty;
            if (i3 == 0 || gapComposer.getDefaultsInvalid()) {
                Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj) {
                    rememberedValue = currentKoinScope.resolve(Reflection.getOrCreateKotlinClass(Navigator.class), null);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                navigator = (Navigator) rememberedValue;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) gapComposer.consume(LocalViewModelStoreOwner.LocalViewModelStoreOwner);
                if (viewModelStoreOwner == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                settingsViewModel = (SettingsViewModel) UStringsKt.resolveViewModel(Reflection.getOrCreateKotlinClass(SettingsViewModel.class), viewModelStoreOwner.getViewModelStore(), viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE, KoinApplicationKt.currentKoinScope(gapComposer));
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            MutableState collectAsStateWithLifecycle = CloseableKt.collectAsStateWithLifecycle(settingsViewModel.categories, gapComposer);
            gapComposer.startReplaceGroup(-316620069);
            List<SettingsCategoryType> list = (List) collectAsStateWithLifecycle.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            for (SettingsCategoryType settingsCategoryType : list) {
                StringResource title = settingsCategoryType.getTitle();
                DrawableResource icon = settingsCategoryType.getIcon();
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == obj) {
                    rememberedValue2 = new UtilsKt$$ExternalSyntheticLambda0(6);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                arrayList.add(new SettingsCategory(title, icon, (Function0) rememberedValue2));
            }
            gapComposer.end(false);
            boolean changedInstance = gapComposer.changedInstance(navigator);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == obj) {
                rememberedValue3 = new NavDisplayKt$$ExternalSyntheticLambda1(navigator, 3);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            SettingsHomeScreenContent(arrayList, (Function0) rememberedValue3, null, gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda2(i, navigator, settingsViewModel, 20);
        }
    }

    public static final void SettingsHomeScreenContent(ArrayList arrayList, Function0 function0, Function0 function02, Composer composer, int i) {
        Function0 function03;
        Function0 function04;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-535364444);
        int i2 = i | (gapComposer.changed(arrayList) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | RendererCapabilities.MODE_SUPPORT_MASK;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new UtilsKt$$ExternalSyntheticLambda0(6);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                function04 = (Function0) rememberedValue;
            } else {
                gapComposer.skipToGroupEnd();
                function04 = function02;
            }
            gapComposer.endDefaults();
            BadgeKt.m134ScaffoldTvnljyQ(null, Expect_jvmKt.rememberComposableLambda(841268320, new TextKt$$ExternalSyntheticLambda2(function0, function04, 21), gapComposer), null, null, null, 0, 0L, 0L, null, Expect_jvmKt.rememberComposableLambda(149953525, new TabKt$$ExternalSyntheticLambda1(arrayList, 11), gapComposer), gapComposer, 805306416);
            function03 = function04;
        } else {
            gapComposer.skipToGroupEnd();
            function03 = function02;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new KoinApplicationKt$$ExternalSyntheticLambda2(arrayList, function0, function03, i, 7);
        }
    }
}
