package app.k9mail.feature.account.edit.ui.server.settings;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Operation$State;
import app.k9mail.feature.account.edit.navigation.AccountEditRoute;
import app.k9mail.feature.account.edit.ui.server.settings.modify.ModifyIncomingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.modify.ModifyOutgoingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.BaseSaveServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveIncomingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveOutgoingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsScreenKt;
import app.k9mail.feature.account.server.validation.ui.IncomingServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.OutgoingServerValidationViewModel;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
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
public final /* synthetic */ class EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ NavHostController f$1;
    public final /* synthetic */ Function0 f$2;
    public final /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0 f$3;

    public /* synthetic */ EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12(String str, NavHostController navHostController, Function0 function0, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = navHostController;
        this.f$2 = function0;
        this.f$3 = diskLruCache$$ExternalSyntheticLambda0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = this.f$3;
        final Function0 function0 = this.f$2;
        final NavHostController navHostController = this.f$1;
        final String str = this.f$0;
        final int i2 = 1;
        NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
        switch (i) {
            case 0:
                navGraphBuilder.getClass();
                final int i3 = 0;
                OAuthBearer.composable$default(navGraphBuilder, "modify", new ComposableLambdaImpl(525674706, new Function4() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i4 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        NavHostController navHostController2 = navHostController;
                        String str2 = str;
                        switch (i4) {
                            case 0:
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                GapComposer gapComposer = (GapComposer) ((Composer) obj4);
                                boolean changed = gapComposer.changed(str2);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    rememberedValue = new PathPart$$ExternalSyntheticLambda0(str2, 4);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function0 function02 = (Function0) rememberedValue;
                                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                                if (current == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    ModifyIncomingServerSettingsViewModel modifyIncomingServerSettingsViewModel = (ModifyIncomingServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ModifyIncomingServerSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                                    boolean changedInstance = gapComposer.changedInstance(navHostController2);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new DiskLruCache$$ExternalSyntheticLambda0(21, navHostController2);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    SchemaInfoUtilKt.IncomingServerSettingsScreen((Function1) rememberedValue2, function0, modifyIncomingServerSettingsViewModel, null, gapComposer, 512);
                                    break;
                                }
                            default:
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                GapComposer gapComposer2 = (GapComposer) ((Composer) obj4);
                                boolean changed2 = gapComposer2.changed(str2);
                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new PathPart$$ExternalSyntheticLambda0(str2, 8);
                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                }
                                Function0 function03 = (Function0) rememberedValue3;
                                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                                if (current2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    ModifyOutgoingServerSettingsViewModel modifyOutgoingServerSettingsViewModel = (ModifyOutgoingServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ModifyOutgoingServerSettingsViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), function03);
                                    boolean changedInstance2 = gapComposer2.changedInstance(navHostController2);
                                    Object rememberedValue4 = gapComposer2.rememberedValue();
                                    if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                        rememberedValue4 = new NavController$$ExternalSyntheticLambda0(navHostController2, 7);
                                        gapComposer2.updateRememberedValue(rememberedValue4);
                                    }
                                    Operation$State.OutgoingServerSettingsScreen((Function0) rememberedValue4, function0, modifyOutgoingServerSettingsViewModel, null, gapComposer2, 512);
                                    break;
                                }
                        }
                        return null;
                    }
                }, true));
                OAuthBearer.composable$default(navGraphBuilder, "validate", new ComposableLambdaImpl(-448816581, new Function4() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i4 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        Object obj6 = Composer.Companion.Empty;
                        NavHostController navHostController2 = navHostController;
                        String str2 = str;
                        switch (i4) {
                            case 0:
                                Composer composer = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource = Operation$State.stringResource(composer, R.string.account_server_settings_incoming_top_bar_title);
                                GapComposer gapComposer = (GapComposer) composer;
                                boolean changed = gapComposer.changed(str2);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == obj6) {
                                    rememberedValue = new PathPart$$ExternalSyntheticLambda0(str2, 6);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function0 function02 = (Function0) rememberedValue;
                                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                                if (current == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    IncomingServerValidationViewModel incomingServerValidationViewModel = (IncomingServerValidationViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(IncomingServerValidationViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                                    boolean changed2 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changed2 || rememberedValue2 == obj6) {
                                        rememberedValue2 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                                    }
                                    BrandNameProvider brandNameProvider = (BrandNameProvider) rememberedValue2;
                                    boolean changedInstance = gapComposer.changedInstance(navHostController2);
                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue3 == obj6) {
                                        rememberedValue3 = new NavController$$ExternalSyntheticLambda0(navHostController2, 3);
                                        gapComposer.updateRememberedValue(rememberedValue3);
                                    }
                                    Function0 function03 = (Function0) rememberedValue3;
                                    boolean changedInstance2 = gapComposer.changedInstance(navHostController2);
                                    Object rememberedValue4 = gapComposer.rememberedValue();
                                    if (changedInstance2 || rememberedValue4 == obj6) {
                                        rememberedValue4 = new NavController$$ExternalSyntheticLambda0(navHostController2, 4);
                                        gapComposer.updateRememberedValue(rememberedValue4);
                                    }
                                    Validate.ServerValidationScreen(function03, (Function0) rememberedValue4, incomingServerValidationViewModel, brandNameProvider, null, stringResource, gapComposer, 512, 16);
                                    break;
                                }
                            default:
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource2 = Operation$State.stringResource(composer2, R.string.account_server_settings_outgoing_top_bar_title);
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                boolean changed3 = gapComposer2.changed(str2);
                                Object rememberedValue5 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue5 == obj6) {
                                    rememberedValue5 = new PathPart$$ExternalSyntheticLambda0(str2, 9);
                                    gapComposer2.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function04 = (Function0) rememberedValue5;
                                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                                if (current2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    OutgoingServerValidationViewModel outgoingServerValidationViewModel = (OutgoingServerValidationViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(OutgoingServerValidationViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), function04);
                                    Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer2);
                                    boolean changed4 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope2);
                                    Object rememberedValue6 = gapComposer2.rememberedValue();
                                    if (changed4 || rememberedValue6 == obj6) {
                                        rememberedValue6 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                                    }
                                    BrandNameProvider brandNameProvider2 = (BrandNameProvider) rememberedValue6;
                                    boolean changedInstance3 = gapComposer2.changedInstance(navHostController2);
                                    Object rememberedValue7 = gapComposer2.rememberedValue();
                                    if (changedInstance3 || rememberedValue7 == obj6) {
                                        rememberedValue7 = new NavController$$ExternalSyntheticLambda0(navHostController2, 8);
                                        gapComposer2.updateRememberedValue(rememberedValue7);
                                    }
                                    Function0 function05 = (Function0) rememberedValue7;
                                    boolean changedInstance4 = gapComposer2.changedInstance(navHostController2);
                                    Object rememberedValue8 = gapComposer2.rememberedValue();
                                    if (changedInstance4 || rememberedValue8 == obj6) {
                                        rememberedValue8 = new NavController$$ExternalSyntheticLambda0(navHostController2, 5);
                                        gapComposer2.updateRememberedValue(rememberedValue8);
                                    }
                                    Validate.ServerValidationScreen(function05, (Function0) rememberedValue8, outgoingServerValidationViewModel, brandNameProvider2, null, stringResource2, gapComposer2, 512, 16);
                                    break;
                                }
                        }
                        return null;
                    }
                }, true));
                OAuthBearer.composable$default(navGraphBuilder, "save", new ComposableLambdaImpl(-3279270, new Function4() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i4 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        NavHostController navHostController2 = navHostController;
                        final String str2 = str;
                        final DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda02 = diskLruCache$$ExternalSyntheticLambda0;
                        switch (i4) {
                            case 0:
                                Composer composer = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource = Operation$State.stringResource(composer, R.string.account_server_settings_incoming_top_bar_title);
                                GapComposer gapComposer = (GapComposer) composer;
                                boolean changed = gapComposer.changed(diskLruCache$$ExternalSyntheticLambda02) | gapComposer.changed(str2);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    final int i5 = 0;
                                    rememberedValue = new Function0() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object invoke() {
                                            int i6 = i5;
                                            Unit unit3 = Unit.INSTANCE;
                                            String str3 = str2;
                                            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda03 = diskLruCache$$ExternalSyntheticLambda02;
                                            switch (i6) {
                                                case 0:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.IncomingServerSettings(str3));
                                                    break;
                                                default:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.OutgoingServerSettings(str3));
                                                    break;
                                            }
                                            return unit3;
                                        }
                                    };
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function0 function02 = (Function0) rememberedValue;
                                boolean changedInstance = gapComposer.changedInstance(navHostController2);
                                Object rememberedValue2 = gapComposer.rememberedValue();
                                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                    rememberedValue2 = new NavController$$ExternalSyntheticLambda0(navHostController2, 2);
                                    gapComposer.updateRememberedValue(rememberedValue2);
                                }
                                Function0 function03 = (Function0) rememberedValue2;
                                boolean changed2 = gapComposer.changed(str2);
                                Object rememberedValue3 = gapComposer.rememberedValue();
                                if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new PathPart$$ExternalSyntheticLambda0(str2, 5);
                                    gapComposer.updateRememberedValue(rememberedValue3);
                                }
                                Function0 function04 = (Function0) rememberedValue3;
                                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                                if (current == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    SaveServerSettingsScreenKt.SaveServerSettingsScreen(stringResource, function02, function03, (BaseSaveServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SaveIncomingServerSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function04), null, gapComposer, 4096);
                                    break;
                                }
                            default:
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource2 = Operation$State.stringResource(composer2, R.string.account_server_settings_outgoing_top_bar_title);
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                boolean changed3 = gapComposer2.changed(diskLruCache$$ExternalSyntheticLambda02) | gapComposer2.changed(str2);
                                Object rememberedValue4 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue4 == neverEqualPolicy) {
                                    final int i6 = 1;
                                    rememberedValue4 = new Function0() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object invoke() {
                                            int i62 = i6;
                                            Unit unit3 = Unit.INSTANCE;
                                            String str3 = str2;
                                            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda03 = diskLruCache$$ExternalSyntheticLambda02;
                                            switch (i62) {
                                                case 0:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.IncomingServerSettings(str3));
                                                    break;
                                                default:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.OutgoingServerSettings(str3));
                                                    break;
                                            }
                                            return unit3;
                                        }
                                    };
                                    gapComposer2.updateRememberedValue(rememberedValue4);
                                }
                                Function0 function05 = (Function0) rememberedValue4;
                                boolean changedInstance2 = gapComposer2.changedInstance(navHostController2);
                                Object rememberedValue5 = gapComposer2.rememberedValue();
                                if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = new NavController$$ExternalSyntheticLambda0(navHostController2, 6);
                                    gapComposer2.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function06 = (Function0) rememberedValue5;
                                boolean changed4 = gapComposer2.changed(str2);
                                Object rememberedValue6 = gapComposer2.rememberedValue();
                                if (changed4 || rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = new PathPart$$ExternalSyntheticLambda0(str2, 7);
                                    gapComposer2.updateRememberedValue(rememberedValue6);
                                }
                                Function0 function07 = (Function0) rememberedValue6;
                                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                                if (current2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    SaveServerSettingsScreenKt.SaveServerSettingsScreen(stringResource2, function05, function06, (BaseSaveServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SaveOutgoingServerSettingsViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), function07), null, gapComposer2, 4096);
                                    break;
                                }
                        }
                        return null;
                    }
                }, true));
                break;
            default:
                navGraphBuilder.getClass();
                OAuthBearer.composable$default(navGraphBuilder, "modify", new ComposableLambdaImpl(927134942, new Function4() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i4 = i2;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        NavHostController navHostController2 = navHostController;
                        String str2 = str;
                        switch (i4) {
                            case 0:
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                GapComposer gapComposer = (GapComposer) ((Composer) obj4);
                                boolean changed = gapComposer.changed(str2);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    rememberedValue = new PathPart$$ExternalSyntheticLambda0(str2, 4);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function0 function02 = (Function0) rememberedValue;
                                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                                if (current == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    ModifyIncomingServerSettingsViewModel modifyIncomingServerSettingsViewModel = (ModifyIncomingServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ModifyIncomingServerSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                                    boolean changedInstance = gapComposer.changedInstance(navHostController2);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new DiskLruCache$$ExternalSyntheticLambda0(21, navHostController2);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    SchemaInfoUtilKt.IncomingServerSettingsScreen((Function1) rememberedValue2, function0, modifyIncomingServerSettingsViewModel, null, gapComposer, 512);
                                    break;
                                }
                            default:
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                GapComposer gapComposer2 = (GapComposer) ((Composer) obj4);
                                boolean changed2 = gapComposer2.changed(str2);
                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new PathPart$$ExternalSyntheticLambda0(str2, 8);
                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                }
                                Function0 function03 = (Function0) rememberedValue3;
                                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                                if (current2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    ModifyOutgoingServerSettingsViewModel modifyOutgoingServerSettingsViewModel = (ModifyOutgoingServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ModifyOutgoingServerSettingsViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), function03);
                                    boolean changedInstance2 = gapComposer2.changedInstance(navHostController2);
                                    Object rememberedValue4 = gapComposer2.rememberedValue();
                                    if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                        rememberedValue4 = new NavController$$ExternalSyntheticLambda0(navHostController2, 7);
                                        gapComposer2.updateRememberedValue(rememberedValue4);
                                    }
                                    Operation$State.OutgoingServerSettingsScreen((Function0) rememberedValue4, function0, modifyOutgoingServerSettingsViewModel, null, gapComposer2, 512);
                                    break;
                                }
                        }
                        return null;
                    }
                }, true));
                OAuthBearer.composable$default(navGraphBuilder, "validate", new ComposableLambdaImpl(-47356345, new Function4() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i4 = i2;
                        Unit unit2 = Unit.INSTANCE;
                        Object obj6 = Composer.Companion.Empty;
                        NavHostController navHostController2 = navHostController;
                        String str2 = str;
                        switch (i4) {
                            case 0:
                                Composer composer = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource = Operation$State.stringResource(composer, R.string.account_server_settings_incoming_top_bar_title);
                                GapComposer gapComposer = (GapComposer) composer;
                                boolean changed = gapComposer.changed(str2);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == obj6) {
                                    rememberedValue = new PathPart$$ExternalSyntheticLambda0(str2, 6);
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function0 function02 = (Function0) rememberedValue;
                                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                                if (current == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    IncomingServerValidationViewModel incomingServerValidationViewModel = (IncomingServerValidationViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(IncomingServerValidationViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function02);
                                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                                    boolean changed2 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changed2 || rememberedValue2 == obj6) {
                                        rememberedValue2 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                                    }
                                    BrandNameProvider brandNameProvider = (BrandNameProvider) rememberedValue2;
                                    boolean changedInstance = gapComposer.changedInstance(navHostController2);
                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue3 == obj6) {
                                        rememberedValue3 = new NavController$$ExternalSyntheticLambda0(navHostController2, 3);
                                        gapComposer.updateRememberedValue(rememberedValue3);
                                    }
                                    Function0 function03 = (Function0) rememberedValue3;
                                    boolean changedInstance2 = gapComposer.changedInstance(navHostController2);
                                    Object rememberedValue4 = gapComposer.rememberedValue();
                                    if (changedInstance2 || rememberedValue4 == obj6) {
                                        rememberedValue4 = new NavController$$ExternalSyntheticLambda0(navHostController2, 4);
                                        gapComposer.updateRememberedValue(rememberedValue4);
                                    }
                                    Validate.ServerValidationScreen(function03, (Function0) rememberedValue4, incomingServerValidationViewModel, brandNameProvider, null, stringResource, gapComposer, 512, 16);
                                    break;
                                }
                            default:
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource2 = Operation$State.stringResource(composer2, R.string.account_server_settings_outgoing_top_bar_title);
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                boolean changed3 = gapComposer2.changed(str2);
                                Object rememberedValue5 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue5 == obj6) {
                                    rememberedValue5 = new PathPart$$ExternalSyntheticLambda0(str2, 9);
                                    gapComposer2.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function04 = (Function0) rememberedValue5;
                                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                                if (current2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    OutgoingServerValidationViewModel outgoingServerValidationViewModel = (OutgoingServerValidationViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(OutgoingServerValidationViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), function04);
                                    Scope currentKoinScope2 = KoinApplicationKt.currentKoinScope(gapComposer2);
                                    boolean changed4 = gapComposer2.changed((Object) null) | gapComposer2.changed(currentKoinScope2);
                                    Object rememberedValue6 = gapComposer2.rememberedValue();
                                    if (changed4 || rememberedValue6 == obj6) {
                                        rememberedValue6 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope2, (Qualifier) null, (ParametersHolder) null, gapComposer2);
                                    }
                                    BrandNameProvider brandNameProvider2 = (BrandNameProvider) rememberedValue6;
                                    boolean changedInstance3 = gapComposer2.changedInstance(navHostController2);
                                    Object rememberedValue7 = gapComposer2.rememberedValue();
                                    if (changedInstance3 || rememberedValue7 == obj6) {
                                        rememberedValue7 = new NavController$$ExternalSyntheticLambda0(navHostController2, 8);
                                        gapComposer2.updateRememberedValue(rememberedValue7);
                                    }
                                    Function0 function05 = (Function0) rememberedValue7;
                                    boolean changedInstance4 = gapComposer2.changedInstance(navHostController2);
                                    Object rememberedValue8 = gapComposer2.rememberedValue();
                                    if (changedInstance4 || rememberedValue8 == obj6) {
                                        rememberedValue8 = new NavController$$ExternalSyntheticLambda0(navHostController2, 5);
                                        gapComposer2.updateRememberedValue(rememberedValue8);
                                    }
                                    Validate.ServerValidationScreen(function05, (Function0) rememberedValue8, outgoingServerValidationViewModel, brandNameProvider2, null, stringResource2, gapComposer2, 512, 16);
                                    break;
                                }
                        }
                        return null;
                    }
                }, true));
                OAuthBearer.composable$default(navGraphBuilder, "save", new ComposableLambdaImpl(398180966, new Function4() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i4 = i2;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        NavHostController navHostController2 = navHostController;
                        final String str2 = str;
                        final DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda02 = diskLruCache$$ExternalSyntheticLambda0;
                        switch (i4) {
                            case 0:
                                Composer composer = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource = Operation$State.stringResource(composer, R.string.account_server_settings_incoming_top_bar_title);
                                GapComposer gapComposer = (GapComposer) composer;
                                boolean changed = gapComposer.changed(diskLruCache$$ExternalSyntheticLambda02) | gapComposer.changed(str2);
                                Object rememberedValue = gapComposer.rememberedValue();
                                if (changed || rememberedValue == neverEqualPolicy) {
                                    final int i5 = 0;
                                    rememberedValue = new Function0() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object invoke() {
                                            int i62 = i5;
                                            Unit unit3 = Unit.INSTANCE;
                                            String str3 = str2;
                                            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda03 = diskLruCache$$ExternalSyntheticLambda02;
                                            switch (i62) {
                                                case 0:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.IncomingServerSettings(str3));
                                                    break;
                                                default:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.OutgoingServerSettings(str3));
                                                    break;
                                            }
                                            return unit3;
                                        }
                                    };
                                    gapComposer.updateRememberedValue(rememberedValue);
                                }
                                Function0 function02 = (Function0) rememberedValue;
                                boolean changedInstance = gapComposer.changedInstance(navHostController2);
                                Object rememberedValue2 = gapComposer.rememberedValue();
                                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                    rememberedValue2 = new NavController$$ExternalSyntheticLambda0(navHostController2, 2);
                                    gapComposer.updateRememberedValue(rememberedValue2);
                                }
                                Function0 function03 = (Function0) rememberedValue2;
                                boolean changed2 = gapComposer.changed(str2);
                                Object rememberedValue3 = gapComposer.rememberedValue();
                                if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                    rememberedValue3 = new PathPart$$ExternalSyntheticLambda0(str2, 5);
                                    gapComposer.updateRememberedValue(rememberedValue3);
                                }
                                Function0 function04 = (Function0) rememberedValue3;
                                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                                if (current == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    SaveServerSettingsScreenKt.SaveServerSettingsScreen(stringResource, function02, function03, (BaseSaveServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SaveIncomingServerSettingsViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function04), null, gapComposer, 4096);
                                    break;
                                }
                            default:
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScopeImpl) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                String stringResource2 = Operation$State.stringResource(composer2, R.string.account_server_settings_outgoing_top_bar_title);
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                boolean changed3 = gapComposer2.changed(diskLruCache$$ExternalSyntheticLambda02) | gapComposer2.changed(str2);
                                Object rememberedValue4 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue4 == neverEqualPolicy) {
                                    final int i6 = 1;
                                    rememberedValue4 = new Function0() { // from class: app.k9mail.feature.account.edit.ui.server.settings.EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object invoke() {
                                            int i62 = i6;
                                            Unit unit3 = Unit.INSTANCE;
                                            String str3 = str2;
                                            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda03 = diskLruCache$$ExternalSyntheticLambda02;
                                            switch (i62) {
                                                case 0:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.IncomingServerSettings(str3));
                                                    break;
                                                default:
                                                    diskLruCache$$ExternalSyntheticLambda03.invoke(new AccountEditRoute.OutgoingServerSettings(str3));
                                                    break;
                                            }
                                            return unit3;
                                        }
                                    };
                                    gapComposer2.updateRememberedValue(rememberedValue4);
                                }
                                Function0 function05 = (Function0) rememberedValue4;
                                boolean changedInstance2 = gapComposer2.changedInstance(navHostController2);
                                Object rememberedValue5 = gapComposer2.rememberedValue();
                                if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
                                    rememberedValue5 = new NavController$$ExternalSyntheticLambda0(navHostController2, 6);
                                    gapComposer2.updateRememberedValue(rememberedValue5);
                                }
                                Function0 function06 = (Function0) rememberedValue5;
                                boolean changed4 = gapComposer2.changed(str2);
                                Object rememberedValue6 = gapComposer2.rememberedValue();
                                if (changed4 || rememberedValue6 == neverEqualPolicy) {
                                    rememberedValue6 = new PathPart$$ExternalSyntheticLambda0(str2, 7);
                                    gapComposer2.updateRememberedValue(rememberedValue6);
                                }
                                Function0 function07 = (Function0) rememberedValue6;
                                ViewModelStoreOwner current2 = LocalViewModelStoreOwner.getCurrent(gapComposer2);
                                if (current2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    break;
                                } else {
                                    SaveServerSettingsScreenKt.SaveServerSettingsScreen(stringResource2, function05, function06, (BaseSaveServerSettingsViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SaveOutgoingServerSettingsViewModel.class), current2.getViewModelStore(), Cookie.Companion.defaultExtras(current2), null, KoinApplicationKt.currentKoinScope(gapComposer2), function07), null, gapComposer2, 4096);
                                    break;
                                }
                        }
                        return null;
                    }
                }, true));
                break;
        }
        return unit;
    }
}
