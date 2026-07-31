package app.k9mail.feature.migration.qrcode;

import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.core.android.permissions.AndroidPermissionChecker;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.setup.domain.usecase.CreateAccount;
import app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery;
import app.k9mail.feature.account.setup.domain.usecase.GetSpecialFolderOptions;
import app.k9mail.feature.account.setup.domain.usecase.ValidateSpecialFolderOptions;
import app.k9mail.feature.account.setup.navigation.DefaultAccountSetupNavigation;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryValidator;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryViewModel;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountViewModel;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsValidator;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsViewModel;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsViewModel;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormUiModel;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel;
import app.k9mail.feature.migration.launcher.k9.K9MigrationManager;
import app.k9mail.feature.migration.qrcode.domain.usecase.QrCodePayloadReader;
import app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeSettingsWriter;
import app.k9mail.feature.migration.qrcode.payload.QrCodePayloadAdapter;
import app.k9mail.feature.migration.qrcode.payload.QrCodePayloadMapper;
import app.k9mail.feature.migration.qrcode.payload.QrCodePayloadParser;
import app.k9mail.feature.migration.qrcode.payload.QrCodePayloadValidator;
import app.k9mail.feature.migration.qrcode.settings.DefaultUuidGenerator;
import app.k9mail.feature.migration.qrcode.settings.XmlSettingWriter;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.onboarding.main.navigation.DefaultOnboardingNavigation;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import app.k9mail.feature.onboarding.permissions.domain.usecase.CheckPermission;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import app.k9mail.feature.settings.p000import.ui.ImportAppFetcher;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.account.AccountOwnerNameProvider;
import com.fsck.k9.backends.RealOAuth2TokenProviderFactory;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.oauth.AuthStateStorage;
import com.fsck.k9.mail.store.imap.ImapFolderFetcher;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.logging.Logger;
import okhttp3.OkHttpClient;
import okio.Okio;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class QrCodeModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ QrCodeModuleKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new QrCodeScannerViewModel((QrCodePayloadReader) scope.resolve(Reflection.getOrCreateKotlinClass(QrCodePayloadReader.class), null, null), (QrCodeSettingsWriter) scope.resolve(Reflection.getOrCreateKotlinClass(QrCodeSettingsWriter.class), null, null));
            case 1:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountAutoDiscoveryViewModel((AccountAutoDiscoveryValidator) scope2.resolve(Reflection.getOrCreateKotlinClass(AccountAutoDiscoveryValidator.class), null, null), (GetAutoDiscovery) scope2.resolve(Reflection.getOrCreateKotlinClass(GetAutoDiscovery.class), null, null), (AccountDomainContract$AccountStateRepository) scope2.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null), (AccountOAuthContract$ViewModel) scope2.resolve(Reflection.getOrCreateKotlinClass(AccountOAuthContract$ViewModel.class), null, null));
            case 2:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ImapFolderFetcher((DefaultTrustedSocketFactory) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultTrustedSocketFactory.class), null, null), (RealOAuth2TokenProviderFactory) scope3.resolve(Reflection.getOrCreateKotlinClass(RealOAuth2TokenProviderFactory.class), null, null), (String) scope3.resolve(Reflection.getOrCreateKotlinClass(String.class), null, new StringQualifier("ClientInfoAppName")), (String) scope3.resolve(Reflection.getOrCreateKotlinClass(String.class), null, new StringQualifier("ClientInfoAppVersion")));
            case 3:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAccountSetupNavigation();
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetSpecialFolderOptions((ImapFolderFetcher) scope4.resolve(Reflection.getOrCreateKotlinClass(ImapFolderFetcher.class), null, null), (AccountDomainContract$AccountStateRepository) scope4.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null), (AuthStateStorage) scope4.resolve(Reflection.getOrCreateKotlinClass(AuthStateStorage.class), null, null));
            case 5:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new ValidateSpecialFolderOptions();
            case 6:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new SpecialFoldersFormUiModel();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SpecialFoldersViewModel((SpecialFoldersFormUiModel) scope5.resolve(Reflection.getOrCreateKotlinClass(SpecialFoldersFormUiModel.class), null, null), (GetSpecialFolderOptions) scope5.resolve(Reflection.getOrCreateKotlinClass(GetSpecialFolderOptions.class), null, null), (ValidateSpecialFolderOptions) scope5.resolve(Reflection.getOrCreateKotlinClass(ValidateSpecialFolderOptions.class), null, null), (AccountDomainContract$AccountStateRepository) scope5.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DisplayOptionsViewModel((DisplayOptionsValidator) scope6.resolve(Reflection.getOrCreateKotlinClass(DisplayOptionsValidator.class), null, null), (AccountDomainContract$AccountStateRepository) scope6.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null), (AccountOwnerNameProvider) scope6.resolve(Reflection.getOrCreateKotlinClass(AccountOwnerNameProvider.class), null, null));
            case 9:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SyncOptionsViewModel((AccountDomainContract$AccountStateRepository) scope7.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 10:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CreateAccountViewModel((CreateAccount) scope8.resolve(Reflection.getOrCreateKotlinClass(CreateAccount.class), null, null), (AccountDomainContract$AccountStateRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 11:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new OkHttpClient();
            case BasicTextKt.ShiftMeta /* 12 */:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    SchemaInfoUtilKt.LoadingView(SizeKt.FillWholeMaxSize, Operation$State.stringResource(gapComposer, R.string.account_setup_auto_discovery_loading_message), null, gapComposer, 6, 4);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 13:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    SchemaInfoUtilKt.LoadingView(null, Operation$State.stringResource(gapComposer2, R.string.account_setup_create_account_creating), null, gapComposer2, 0, 5);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 14:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    SchemaInfoUtilKt.LoadingView(SizeKt.FillWholeMaxWidth, Operation$State.stringResource(gapComposer3, R.string.account_setup_special_folders_loading_message), null, gapComposer3, 6, 4);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    Object rememberedValue = gapComposer4.rememberedValue();
                    if (rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new KoinModuleKt$$ExternalSyntheticLambda0(11);
                        gapComposer4.updateRememberedValue(rememberedValue);
                    }
                    OperationKt.FeatureLauncherApp(new AppendedSemanticsElement((Function1) rememberedValue, false), null, gapComposer4, 0);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 16:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9MigrationManager();
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new QrCodePayloadAdapter();
            case 18:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new QrCodePayloadParser((QrCodePayloadAdapter) scope9.resolve(Reflection.getOrCreateKotlinClass(QrCodePayloadAdapter.class), null, null));
            case 19:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new QrCodePayloadValidator();
            case 20:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new QrCodePayloadMapper();
            case 21:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new QrCodePayloadReader((QrCodePayloadParser) scope11.resolve(Reflection.getOrCreateKotlinClass(QrCodePayloadParser.class), null, null), (QrCodePayloadMapper) scope11.resolve(Reflection.getOrCreateKotlinClass(QrCodePayloadMapper.class), null, null));
            case 22:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new QrCodeSettingsWriter((Context) scope12.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (XmlSettingWriter) scope12.resolve(Reflection.getOrCreateKotlinClass(XmlSettingWriter.class), null, null));
            case 23:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultUuidGenerator();
            case 24:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new XmlSettingWriter();
            case 25:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultOnboardingNavigation();
            case 26:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new NoOpOnboardingMigrationManager();
            case 27:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CheckPermission((AndroidPermissionChecker) scope14.resolve(Reflection.getOrCreateKotlinClass(AndroidPermissionChecker.class), null, null));
            case 28:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new PermissionsViewModel((CheckPermission) scope15.resolve(Reflection.getOrCreateKotlinClass(CheckPermission.class), null, null));
            default:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ImportAppFetcher(Okio.androidContext(scope16), (Logger) scope16.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
        }
    }
}
