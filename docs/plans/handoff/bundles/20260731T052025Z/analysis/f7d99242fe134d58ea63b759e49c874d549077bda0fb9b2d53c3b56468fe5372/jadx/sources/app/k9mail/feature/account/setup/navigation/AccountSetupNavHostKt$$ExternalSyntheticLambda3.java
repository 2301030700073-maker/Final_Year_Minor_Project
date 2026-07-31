package app.k9mail.feature.account.setup.navigation;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.navigation.NavHostController;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsViewModel;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsViewModel;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsViewModel;
import app.k9mail.feature.onboarding.main.navigation.OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1;
import app.k9mail.feature.settings.p000import.ui.SettingsImportAction;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;
import net.thunderbird.core.common.provider.BrandNameProvider;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupNavHostKt$$ExternalSyntheticLambda3 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavHostController f$0;

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda3(NavHostController navHostController, int i) {
        this.$r8$classId = i;
        this.f$0 = navHostController;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj5 = Composer.Companion.Empty;
        NavHostController navHostController = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj3);
                boolean changedInstance = gapComposer.changedInstance(navHostController);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj5) {
                    rememberedValue = new NavController$$ExternalSyntheticLambda0(navHostController, 15);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function0 = (Function0) rememberedValue;
                boolean changedInstance2 = gapComposer.changedInstance(navHostController);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue2 == obj5) {
                    rememberedValue2 = new NavController$$ExternalSyntheticLambda0(navHostController, 16);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function0 function02 = (Function0) rememberedValue2;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    Operation$State.OutgoingServerSettingsScreen(function0, function02, (OutgoingServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(OutgoingServerSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null), null, gapComposer, 512);
                    break;
                }
            case 1:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj3);
                boolean changedInstance3 = gapComposer2.changedInstance(navHostController);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (changedInstance3 || rememberedValue3 == obj5) {
                    rememberedValue3 = new NavController$$ExternalSyntheticLambda0(navHostController, 11);
                    gapComposer2.updateRememberedValue(rememberedValue3);
                }
                Function0 function03 = (Function0) rememberedValue3;
                boolean changedInstance4 = gapComposer2.changedInstance(navHostController);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (changedInstance4 || rememberedValue4 == obj5) {
                    rememberedValue4 = new NavController$$ExternalSyntheticLambda0(navHostController, 12);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function04 = (Function0) rememberedValue4;
                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                if (current2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    DisplayOptionsViewModel displayOptionsViewModel = (DisplayOptionsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(DisplayOptionsViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), null);
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer2);
                    boolean changed = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changed || rememberedValue5 == obj5) {
                        rememberedValue5 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                    }
                    DisplayOptionsScreenKt.DisplayOptionsScreen(function03, function04, displayOptionsViewModel, (BrandNameProvider) rememberedValue5, null, gapComposer2, 512);
                    break;
                }
            case 2:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer3 = (GapComposer) ((Composer) obj3);
                boolean changedInstance5 = gapComposer3.changedInstance(navHostController);
                Object rememberedValue6 = gapComposer3.rememberedValue();
                if (changedInstance5 || rememberedValue6 == obj5) {
                    rememberedValue6 = new NavController$$ExternalSyntheticLambda0(navHostController, 9);
                    gapComposer3.updateRememberedValue(rememberedValue6);
                }
                Function0 function05 = (Function0) rememberedValue6;
                boolean changedInstance6 = gapComposer3.changedInstance(navHostController);
                Object rememberedValue7 = gapComposer3.rememberedValue();
                if (changedInstance6 || rememberedValue7 == obj5) {
                    rememberedValue7 = new NavController$$ExternalSyntheticLambda0(navHostController, 10);
                    gapComposer3.updateRememberedValue(rememberedValue7);
                }
                Function0 function06 = (Function0) rememberedValue7;
                ViewModelStoreOwner current3 = LocalViewModelStoreOwner.getCurrent(gapComposer3);
                if (current3 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    SyncOptionsViewModel syncOptionsViewModel = (SyncOptionsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SyncOptionsViewModel.class), current3.getViewModelStore(), Cookie.Companion.defaultExtras(current3), null, KoinApplicationKt.currentKoinScope(gapComposer3), null);
                    Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer3);
                    boolean changed2 = gapComposer3.changed((Object) null) | gapComposer3.changed(currentKoinScope2);
                    Object rememberedValue8 = gapComposer3.rememberedValue();
                    if (changed2 || rememberedValue8 == obj5) {
                        rememberedValue8 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer3);
                    }
                    SyncOptionsScreenKt.SyncOptionsScreen(function05, function06, syncOptionsViewModel, (BrandNameProvider) rememberedValue8, null, gapComposer3, 512);
                    break;
                }
            case 3:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer4 = (GapComposer) ((Composer) obj3);
                boolean changedInstance7 = gapComposer4.changedInstance(navHostController);
                Object rememberedValue9 = gapComposer4.rememberedValue();
                if (changedInstance7 || rememberedValue9 == obj5) {
                    rememberedValue9 = new OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1(navHostController, 0);
                    gapComposer4.updateRememberedValue(rememberedValue9);
                }
                Function0 function07 = (Function0) ((KFunction) rememberedValue9);
                boolean changedInstance8 = gapComposer4.changedInstance(navHostController);
                Object rememberedValue10 = gapComposer4.rememberedValue();
                if (changedInstance8 || rememberedValue10 == obj5) {
                    rememberedValue10 = new NavController$$ExternalSyntheticLambda0(navHostController, 26);
                    gapComposer4.updateRememberedValue(rememberedValue10);
                }
                Data.Companion.SettingsImportScreen(SettingsImportAction.Overview, function07, (Function0) rememberedValue10, null, gapComposer4, 6);
                break;
            default:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer5 = (GapComposer) ((Composer) obj3);
                boolean changedInstance9 = gapComposer5.changedInstance(navHostController);
                Object rememberedValue11 = gapComposer5.rememberedValue();
                if (changedInstance9 || rememberedValue11 == obj5) {
                    rememberedValue11 = new OnboardingNavHostKt$OnboardingNavHost$1$1$4$1$1(navHostController, 1);
                    gapComposer5.updateRememberedValue(rememberedValue11);
                }
                Function0 function08 = (Function0) ((KFunction) rememberedValue11);
                boolean changedInstance10 = gapComposer5.changedInstance(navHostController);
                Object rememberedValue12 = gapComposer5.rememberedValue();
                if (changedInstance10 || rememberedValue12 == obj5) {
                    rememberedValue12 = new NavController$$ExternalSyntheticLambda0(navHostController, 25);
                    gapComposer5.updateRememberedValue(rememberedValue12);
                }
                Data.Companion.SettingsImportScreen(SettingsImportAction.ScanQrCode, function08, (Function0) rememberedValue12, null, gapComposer5, 6);
                break;
        }
        return unit;
    }
}
