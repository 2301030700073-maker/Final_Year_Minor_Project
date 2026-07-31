package app.k9mail.feature.account.setup.navigation;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.navigation.NavHostController;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.OutgoingServerValidationViewModel;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.minidns.util.Base64;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupNavHostKt$$ExternalSyntheticLambda4 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda4(NoOpOnboardingMigrationManager noOpOnboardingMigrationManager, NavHostController navHostController, FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2) {
        this.$r8$classId = 1;
        this.f$1 = noOpOnboardingMigrationManager;
        this.f$0 = navHostController;
        this.f$2 = featureLauncherNavHostKt$$ExternalSyntheticLambda2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Object obj5 = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj6 = this.f$2;
        Object obj7 = this.f$1;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                NavHostController navHostController = (NavHostController) obj8;
                Object obj9 = (MutableState) obj7;
                Object obj10 = (MutableState) obj6;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj3);
                boolean changedInstance = gapComposer.changedInstance(navHostController) | gapComposer.changed(obj9) | gapComposer.changed(obj10);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj5) {
                    rememberedValue = new ConnectPlan$$ExternalSyntheticLambda0(navHostController, obj9, obj10, 12);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function0 = (Function0) rememberedValue;
                boolean changedInstance2 = gapComposer.changedInstance(navHostController);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue2 == obj5) {
                    rememberedValue2 = new NavController$$ExternalSyntheticLambda0(navHostController, 13);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function0 function02 = (Function0) rememberedValue2;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    BaseServerValidationViewModel baseServerValidationViewModel = (BaseServerValidationViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(OutgoingServerValidationViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                    boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed || rememberedValue3 == obj5) {
                        rememberedValue3 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                    }
                    Validate.ServerValidationScreen(function0, function02, baseServerValidationViewModel, (BrandNameProvider) rememberedValue3, null, null, gapComposer, 512, 48);
                    break;
                }
            case 1:
                NoOpOnboardingMigrationManager noOpOnboardingMigrationManager = (NoOpOnboardingMigrationManager) obj7;
                NavHostController navHostController2 = (NavHostController) obj8;
                FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2 = (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj6;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj3);
                boolean changedInstance3 = gapComposer2.changedInstance(navHostController2);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (changedInstance3 || rememberedValue4 == obj5) {
                    rememberedValue4 = new NavController$$ExternalSyntheticLambda0(navHostController2, 22);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function03 = (Function0) rememberedValue4;
                boolean changed2 = gapComposer2.changed(featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (changed2 || rememberedValue5 == obj5) {
                    rememberedValue5 = new ImageLoader$Builder$$ExternalSyntheticLambda1(26, featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                Function0 function04 = (Function0) rememberedValue5;
                boolean changedInstance4 = gapComposer2.changedInstance(navHostController2);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changedInstance4 || rememberedValue6 == obj5) {
                    rememberedValue6 = new NavController$$ExternalSyntheticLambda0(navHostController2, 23);
                    gapComposer2.updateRememberedValue(rememberedValue6);
                }
                Function0 function05 = (Function0) rememberedValue6;
                boolean changedInstance5 = gapComposer2.changedInstance(navHostController2);
                Object rememberedValue7 = gapComposer2.rememberedValue();
                if (changedInstance5 || rememberedValue7 == obj5) {
                    rememberedValue7 = new NavController$$ExternalSyntheticLambda0(navHostController2, 24);
                    gapComposer2.updateRememberedValue(rememberedValue7);
                }
                noOpOnboardingMigrationManager.OnboardingMigrationScreen(function03, function04, function05, (Function0) rememberedValue7, gapComposer2, 0);
                break;
            case 2:
                Function1 function1 = (Function1) obj8;
                String str = (String) obj7;
                Function1 function12 = (Function1) obj6;
                SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State = (SetupArchiveFolderDialogContract$State) obj2;
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                setupArchiveFolderDialogContract$State.getClass();
                if ((intValue & 48) == 0) {
                    intValue |= (intValue & 64) == 0 ? ((GapComposer) composer).changed(setupArchiveFolderDialogContract$State) : ((GapComposer) composer).changedInstance(setupArchiveFolderDialogContract$State) ? 32 : 16;
                }
                GapComposer gapComposer3 = (GapComposer) composer;
                if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 145) != 144)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else if (!(setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.ChooseArchiveFolder)) {
                    if (!(setupArchiveFolderDialogContract$State instanceof SetupArchiveFolderDialogContract$State.CreateArchiveFolder)) {
                        gapComposer3.startReplaceGroup(1269606660);
                        ((ThemeSpacings) gapComposer3.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        OffsetKt.Spacer(gapComposer3, SizeKt.m226height3ABfNKs(Modifier.Companion.$$INSTANCE, 4.0f));
                        gapComposer3.end(false);
                        break;
                    } else {
                        gapComposer3.startReplaceGroup(702833051);
                        SetupArchiveFolderDialogContract$State.CreateArchiveFolder createArchiveFolder = (SetupArchiveFolderDialogContract$State.CreateArchiveFolder) setupArchiveFolderDialogContract$State;
                        Hex.CreateNewArchiveFolderDialogContent(str, function12, null, createArchiveFolder.syncingMessage, createArchiveFolder.errorMessage, gapComposer3, 0);
                        gapComposer3.end(false);
                        break;
                    }
                } else {
                    gapComposer3.startReplaceGroup(1269592360);
                    Base64.ChooseArchiveFolderDialogContent((SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) setupArchiveFolderDialogContract$State, function1, null, gapComposer3, (intValue >> 3) & 14);
                    gapComposer3.end(false);
                    break;
                }
            default:
                DrawerContract$State drawerContract$State = (DrawerContract$State) obj8;
                Function1 function13 = (Function1) obj7;
                DisplayAccount displayAccount = (DisplayAccount) obj6;
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                Composer composer2 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                if ((intValue2 & 48) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(booleanValue) ? 32 : 16;
                }
                GapComposer gapComposer4 = (GapComposer) composer2;
                if (!gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else if (!booleanValue) {
                    gapComposer4.startReplaceGroup(-1478975631);
                    Handshake.Companion.FolderContent(drawerContract$State, function13, gapComposer4, 0);
                    gapComposer4.end(false);
                    break;
                } else {
                    gapComposer4.startReplaceGroup(-1479195979);
                    Handshake.Companion.AccountContent(drawerContract$State, function13, displayAccount, gapComposer4, 0);
                    gapComposer4.end(false);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda4(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }
}
