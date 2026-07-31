package app.k9mail.feature.account.oauth;

import androidx.collection.internal.Lock;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.transition.Transition;
import androidx.work.Configuration;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.autodiscovery.api.AutoDiscovery;
import app.k9mail.autodiscovery.autoconfig.AutoconfigDiscovery;
import app.k9mail.autodiscovery.autoconfig.AutoconfigUrlConfig;
import app.k9mail.autodiscovery.autoconfig.MxLookupAutoconfigDiscovery;
import app.k9mail.autodiscovery.service.RealAutoDiscoveryRegistry;
import app.k9mail.autodiscovery.service.RealAutoDiscoveryService;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.oauth.data.AuthorizationRepository;
import app.k9mail.feature.account.oauth.data.AuthorizationStateRepository;
import app.k9mail.feature.account.oauth.domain.usecase.CheckIsGoogleSignIn;
import app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn;
import app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel;
import app.k9mail.feature.account.oauth.ui.view.SignInViewKt;
import app.k9mail.feature.account.server.certificate.data.InMemoryServerCertificateErrorRepository;
import app.k9mail.feature.account.server.certificate.domain.usecase.AddServerCertificateException;
import app.k9mail.feature.account.server.certificate.domain.usecase.FormatServerCertificateError;
import app.k9mail.feature.account.server.certificate.ui.DefaultFingerprintFormatter;
import app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorViewModel;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsValidator;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsValidator;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsViewModel;
import app.k9mail.feature.account.server.validation.domain.usecase.ValidateServerSettings;
import app.k9mail.feature.account.server.validation.ui.IncomingServerValidationViewModel;
import app.k9mail.feature.account.server.validation.ui.OutgoingServerValidationViewModel;
import app.k9mail.feature.account.setup.domain.usecase.CreateAccount;
import app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryValidator;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsValidator;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.GlideBuilder$1;
import com.bumptech.glide.load.Option;
import com.fsck.k9.R;
import com.fsck.k9.backends.RealOAuth2TokenProviderFactory;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.oauth.AuthStateStorage;
import com.fsck.k9.mail.ssl.LocalKeyStore;
import com.google.zxing.BinaryBitmap;
import com.jcraft.jzlib.Adler32;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import net.openid.appauth.AuthorizationService;
import net.thunderbird.app.common.account.AccountCreator;
import net.thunderbird.core.common.oauth.InMemoryOAuthConfigurationProvider;
import net.thunderbird.core.logging.Logger;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okio.AsyncTimeout;
import okio.Okio;
import okio.Path;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountOAuthModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AccountOAuthModuleKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        InteractionMode interactionMode = InteractionMode.Create;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AuthorizationService(Okio.androidApplication(scope));
            case 1:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    SchemaInfoUtilKt.LoadingView(null, Operation$State.stringResource(gapComposer, R.string.account_edit_save_server_settings_loading_message), null, gapComposer, 0, 5);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AuthorizationRepository((AuthorizationService) scope2.resolve(Reflection.getOrCreateKotlinClass(AuthorizationService.class), null, null));
            case 3:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AuthorizationStateRepository();
            case 4:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetOAuthRequestIntent((AuthorizationRepository) scope3.resolve(Reflection.getOrCreateKotlinClass(AuthorizationRepository.class), null, null), (InMemoryOAuthConfigurationProvider) scope3.resolve(Reflection.getOrCreateKotlinClass(InMemoryOAuthConfigurationProvider.class), null, null));
            case 5:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FinishOAuthSignIn((AuthorizationRepository) scope4.resolve(Reflection.getOrCreateKotlinClass(AuthorizationRepository.class), null, null));
            case 6:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new CheckIsGoogleSignIn();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountOAuthViewModel((GetOAuthRequestIntent) scope5.resolve(Reflection.getOrCreateKotlinClass(GetOAuthRequestIntent.class), null, null), (FinishOAuthSignIn) scope5.resolve(Reflection.getOrCreateKotlinClass(FinishOAuthSignIn.class), null, null), (CheckIsGoogleSignIn) scope5.resolve(Reflection.getOrCreateKotlinClass(CheckIsGoogleSignIn.class), null, null), (Logger) scope5.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    IconKt.m344Iconww6aTOc(MathKt.painterResource(R.drawable.account_oauth_ic_google_logo, gapComposer2, 0), "Google logo", OffsetKt.m218padding3ABfNKs(Modifier.Companion.$$INSTANCE, 8.0f), Color.Unspecified, gapComposer2, 3512);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 9:
                ((Integer) obj2).getClass();
                SignInViewKt.GoogleSignInSupportText((Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 10:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                InMemoryServerCertificateErrorRepository inMemoryServerCertificateErrorRepository = new InMemoryServerCertificateErrorRepository();
                inMemoryServerCertificateErrorRepository.serverCertificateError = null;
                return inMemoryServerCertificateErrorRepository;
            case 11:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AddServerCertificateException((LocalKeyStore) scope6.resolve(Reflection.getOrCreateKotlinClass(LocalKeyStore.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new FormatServerCertificateError();
            case 13:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultServerNameFormatter();
            case 14:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultFingerprintFormatter();
            case OffsetKt.Horizontal /* 15 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ServerCertificateErrorViewModel((InMemoryServerCertificateErrorRepository) scope7.resolve(Reflection.getOrCreateKotlinClass(InMemoryServerCertificateErrorRepository.class), null, null), (AddServerCertificateException) scope7.resolve(Reflection.getOrCreateKotlinClass(AddServerCertificateException.class), null, null), (FormatServerCertificateError) scope7.resolve(Reflection.getOrCreateKotlinClass(FormatServerCertificateError.class), null, null));
            case 16:
                ((Integer) obj2).getClass();
                OperationKt.WarningTitle((Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new IncomingServerSettingsValidator();
            case 18:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new OutgoingServerSettingsValidator();
            case 19:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new IncomingServerSettingsViewModel(new IncomingServerSettingsContract$State(null, null, 4095), interactionMode, (IncomingServerSettingsValidator) scope8.resolve(Reflection.getOrCreateKotlinClass(IncomingServerSettingsValidator.class), null, null), (AccountDomainContract$AccountStateRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 20:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new OutgoingServerSettingsViewModel(new OutgoingServerSettingsContract$State(null, null, null, 127), interactionMode, (OutgoingServerSettingsValidator) scope9.resolve(Reflection.getOrCreateKotlinClass(OutgoingServerSettingsValidator.class), null, null), (AccountDomainContract$AccountStateRepository) scope9.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 21:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ValidateServerSettings((AuthStateStorage) scope10.resolve(Reflection.getOrCreateKotlinClass(AuthStateStorage.class), null, null), new Dispatcher((DefaultTrustedSocketFactory) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultTrustedSocketFactory.class), null, null), (RealOAuth2TokenProviderFactory) scope10.resolve(Reflection.getOrCreateKotlinClass(RealOAuth2TokenProviderFactory.class), null, null), (String) scope10.resolve(Reflection.getOrCreateKotlinClass(String.class), null, new StringQualifier("ClientInfoAppName")), (String) scope10.resolve(Reflection.getOrCreateKotlinClass(String.class), null, new StringQualifier("ClientInfoAppVersion")), 21), new Configuration.Builder(29, (DefaultTrustedSocketFactory) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultTrustedSocketFactory.class), null, null)), new BinaryBitmap(5, (DefaultTrustedSocketFactory) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultTrustedSocketFactory.class), null, null), (RealOAuth2TokenProviderFactory) scope10.resolve(Reflection.getOrCreateKotlinClass(RealOAuth2TokenProviderFactory.class), null, null)));
            case 22:
                Scope scope11 = (Scope) obj;
                return new IncomingServerValidationViewModel((AccountDomainContract$AccountStateRepository) scope11.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null), (ValidateServerSettings) ViewSizeResolver.CC.m(scope11, (ParametersHolder) obj2, ValidateServerSettings.class, (Qualifier) null, (ParametersHolder) null), (AuthorizationStateRepository) scope11.resolve(Reflection.getOrCreateKotlinClass(AuthorizationStateRepository.class), null, null), (InMemoryServerCertificateErrorRepository) scope11.resolve(Reflection.getOrCreateKotlinClass(InMemoryServerCertificateErrorRepository.class), null, null), (AccountOAuthContract$ViewModel) scope11.resolve(Reflection.getOrCreateKotlinClass(AccountOAuthContract$ViewModel.class), null, null), true);
            case 23:
                Scope scope12 = (Scope) obj;
                return new OutgoingServerValidationViewModel((AccountDomainContract$AccountStateRepository) scope12.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null), (ValidateServerSettings) ViewSizeResolver.CC.m(scope12, (ParametersHolder) obj2, ValidateServerSettings.class, (Qualifier) null, (ParametersHolder) null), (AuthorizationStateRepository) scope12.resolve(Reflection.getOrCreateKotlinClass(AuthorizationStateRepository.class), null, null), (InMemoryServerCertificateErrorRepository) scope12.resolve(Reflection.getOrCreateKotlinClass(InMemoryServerCertificateErrorRepository.class), null, null), (AccountOAuthContract$ViewModel) scope12.resolve(Reflection.getOrCreateKotlinClass(AccountOAuthContract$ViewModel.class), null, null), false);
            case 24:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                List list = (List) scope13.resolve(Reflection.getOrCreateKotlinClass(List.class), null, new StringQualifier("extraAutoDiscoveries"));
                OkHttpClient okHttpClient = (OkHttpClient) scope13.resolve(Reflection.getOrCreateKotlinClass(OkHttpClient.class), null, null);
                AutoconfigUrlConfig autoconfigUrlConfig = RealAutoDiscoveryRegistry.defaultAutoconfigUrlConfig;
                AutoconfigDiscovery autoconfigDiscovery = new AutoconfigDiscovery(new Transition.AnonymousClass1(autoconfigUrlConfig), new Base64Util(9, new Configuration.Builder(6, okHttpClient), new Adler32(new Lock())));
                AutoconfigDiscovery autoconfigDiscovery2 = new AutoconfigDiscovery(new VerboseLogger(), new Base64Util(9, new Configuration.Builder(6, okHttpClient), new Adler32(new Lock())));
                Option.AnonymousClass1 anonymousClass1 = new Option.AnonymousClass1();
                return new RealAutoDiscoveryRegistry(CollectionsKt.plus((Collection) IntOffsetKt.listOf((Object[]) new AutoDiscovery[]{autoconfigDiscovery, autoconfigDiscovery2, new MxLookupAutoconfigDiscovery(new Path.Companion(new GlideBuilder$1()), anonymousClass1, new AsyncTimeout.Companion(anonymousClass1), new Configuration.Builder(7, new VerboseLogger(), autoconfigUrlConfig), new Base64Util(9, new Configuration.Builder(6, okHttpClient), new Adler32(new Lock())))}), (Iterable) list));
            case 25:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new RealAutoDiscoveryService((RealAutoDiscoveryRegistry) scope14.resolve(Reflection.getOrCreateKotlinClass(RealAutoDiscoveryRegistry.class), null, null));
            case 26:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetAutoDiscovery((RealAutoDiscoveryService) scope15.resolve(Reflection.getOrCreateKotlinClass(RealAutoDiscoveryService.class), null, null), (InMemoryOAuthConfigurationProvider) scope15.resolve(Reflection.getOrCreateKotlinClass(InMemoryOAuthConfigurationProvider.class), null, null));
            case 27:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CreateAccount((AccountCreator) scope16.resolve(Reflection.getOrCreateKotlinClass(AccountCreator.class), null, null));
            case 28:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountAutoDiscoveryValidator();
            default:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DisplayOptionsValidator();
        }
    }

    public /* synthetic */ AccountOAuthModuleKt$$ExternalSyntheticLambda1(int i, int i2) {
        this.$r8$classId = i2;
    }
}
