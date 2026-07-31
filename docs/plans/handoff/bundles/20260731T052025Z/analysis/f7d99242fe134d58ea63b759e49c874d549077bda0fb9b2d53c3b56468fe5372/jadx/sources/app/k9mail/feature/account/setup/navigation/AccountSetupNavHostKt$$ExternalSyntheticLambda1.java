package app.k9mail.feature.account.setup.navigation;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.navigation.NavHostController;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.account.server.validation.ui.BaseServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.IncomingServerValidationViewModel;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import net.thunderbird.core.common.provider.BrandNameProvider;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupNavHostKt$$ExternalSyntheticLambda1 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ NavHostController f$1;

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda1(NavHostController navHostController, MutableState mutableState) {
        this.$r8$classId = 2;
        this.f$1 = navHostController;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj5 = Composer.Companion.Empty;
        final MutableState mutableState = this.f$0;
        final NavHostController navHostController = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj3);
                boolean changed = gapComposer.changed(mutableState) | gapComposer.changedInstance(navHostController);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == obj5) {
                    final int i2 = 0;
                    rememberedValue = new Function1() { // from class: app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj6) {
                            int i3 = i2;
                            Unit unit2 = Unit.INSTANCE;
                            MutableState mutableState2 = mutableState;
                            NavHostController navHostController2 = navHostController;
                            switch (i3) {
                                case 0:
                                    IncomingServerSettingsContract$State incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) obj6;
                                    incomingServerSettingsContract$State.getClass();
                                    mutableState2.setValue(Boolean.valueOf(incomingServerSettingsContract$State.protocolType == IncomingProtocolType.IMAP));
                                    NavHostController.navigate$default(navHostController2, "incoming-server/validation");
                                    break;
                                default:
                                    navHostController2.navigate("display-options", new AccountSetupNavHostKt$$ExternalSyntheticLambda30(((Boolean) obj6).booleanValue(), mutableState2, 0));
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function1 function1 = (Function1) rememberedValue;
                boolean changedInstance = gapComposer.changedInstance(navHostController);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == obj5) {
                    rememberedValue2 = new NavController$$ExternalSyntheticLambda0(navHostController, 14);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function0 function0 = (Function0) rememberedValue2;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    SchemaInfoUtilKt.IncomingServerSettingsScreen(function1, function0, (IncomingServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(IncomingServerSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null), null, gapComposer, 512);
                    break;
                }
            case 1:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj3);
                boolean changed2 = gapComposer2.changed(mutableState) | gapComposer2.changedInstance(navHostController);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (changed2 || rememberedValue3 == obj5) {
                    rememberedValue3 = new Regex$$ExternalSyntheticLambda1(10, navHostController, mutableState);
                    gapComposer2.updateRememberedValue(rememberedValue3);
                }
                Function0 function02 = (Function0) rememberedValue3;
                boolean changedInstance2 = gapComposer2.changedInstance(navHostController);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (changedInstance2 || rememberedValue4 == obj5) {
                    rememberedValue4 = new NavController$$ExternalSyntheticLambda0(navHostController, 17);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function03 = (Function0) rememberedValue4;
                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                if (current2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    BaseServerValidationViewModel baseServerValidationViewModel = (BaseServerValidationViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(IncomingServerValidationViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), null);
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer2);
                    boolean changed3 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changed3 || rememberedValue5 == obj5) {
                        rememberedValue5 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                    }
                    Validate.ServerValidationScreen(function02, function03, baseServerValidationViewModel, (BrandNameProvider) rememberedValue5, null, null, gapComposer2, 512, 48);
                    break;
                }
            default:
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                GapComposer gapComposer3 = (GapComposer) ((Composer) obj3);
                boolean changedInstance3 = gapComposer3.changedInstance(navHostController) | gapComposer3.changed(mutableState);
                Object rememberedValue6 = gapComposer3.rememberedValue();
                if (changedInstance3 || rememberedValue6 == obj5) {
                    final int i3 = 1;
                    rememberedValue6 = new Function1() { // from class: app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj6) {
                            int i32 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            MutableState mutableState2 = mutableState;
                            NavHostController navHostController2 = navHostController;
                            switch (i32) {
                                case 0:
                                    IncomingServerSettingsContract$State incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) obj6;
                                    incomingServerSettingsContract$State.getClass();
                                    mutableState2.setValue(Boolean.valueOf(incomingServerSettingsContract$State.protocolType == IncomingProtocolType.IMAP));
                                    NavHostController.navigate$default(navHostController2, "incoming-server/validation");
                                    break;
                                default:
                                    navHostController2.navigate("display-options", new AccountSetupNavHostKt$$ExternalSyntheticLambda30(((Boolean) obj6).booleanValue(), mutableState2, 0));
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer3.updateRememberedValue(rememberedValue6);
                }
                Function1 function12 = (Function1) rememberedValue6;
                boolean changedInstance4 = gapComposer3.changedInstance(navHostController);
                Object rememberedValue7 = gapComposer3.rememberedValue();
                if (changedInstance4 || rememberedValue7 == obj5) {
                    rememberedValue7 = new NavController$$ExternalSyntheticLambda0(navHostController, 18);
                    gapComposer3.updateRememberedValue(rememberedValue7);
                }
                Function0 function04 = (Function0) rememberedValue7;
                ViewModelStoreOwner current3 = LocalViewModelStoreOwner.getCurrent(gapComposer3);
                if (current3 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    break;
                } else {
                    SpecialFoldersViewModel specialFoldersViewModel = (SpecialFoldersViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SpecialFoldersViewModel.class), current3.getViewModelStore(), Cookie.Companion.defaultExtras(current3), null, KoinApplicationKt.currentKoinScope(gapComposer3), null);
                    Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer3);
                    boolean changed4 = gapComposer3.changed((Object) null) | gapComposer3.changed(currentKoinScope2);
                    Object rememberedValue8 = gapComposer3.rememberedValue();
                    if (changed4 || rememberedValue8 == obj5) {
                        rememberedValue8 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer3);
                    }
                    SpecialFoldersScreenKt.SpecialFoldersScreen(function12, function04, specialFoldersViewModel, (BrandNameProvider) rememberedValue8, null, gapComposer3, 512);
                    break;
                }
        }
        return null;
    }

    public /* synthetic */ AccountSetupNavHostKt$$ExternalSyntheticLambda1(int i, MutableState mutableState, NavHostController navHostController) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
        this.f$1 = navHostController;
    }
}
