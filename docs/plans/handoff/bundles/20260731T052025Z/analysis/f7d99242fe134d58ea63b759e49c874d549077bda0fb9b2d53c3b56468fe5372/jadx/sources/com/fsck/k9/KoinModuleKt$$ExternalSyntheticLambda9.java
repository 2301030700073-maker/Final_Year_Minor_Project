package com.fsck.k9;

import android.app.AlarmManager;
import android.content.ContentResolver;
import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.WorkerParameters;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.featureflag.K9FeatureFlagFactory;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.account.AccountActivator;
import com.fsck.k9.account.AccountOwnerNameProvider;
import com.fsck.k9.account.AccountRemover;
import com.fsck.k9.account.AccountRemoverWorker;
import com.fsck.k9.account.AccountServerSettingsUpdater;
import com.fsck.k9.account.AccountStateLoader;
import com.fsck.k9.account.DefaultBackgroundAccountRemover;
import com.fsck.k9.account.DefaultDeletePolicyProvider;
import com.fsck.k9.activity.MessageLoaderHelperFactory;
import com.fsck.k9.activity.setup.AccountSetupCompositionViewModel;
import com.fsck.k9.autocrypt.AutocryptDraftStateHeaderParser;
import com.fsck.k9.autocrypt.AutocryptTransferMessageCreator;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.backend.imap.BackendIdleRefreshManager;
import com.fsck.k9.backends.AndroidAlarmManager;
import com.fsck.k9.backends.DefaultImapBackendFactory;
import com.fsck.k9.backends.DefaultPop3BackendFactory;
import com.fsck.k9.backends.RealOAuth2TokenProviderFactory;
import com.fsck.k9.contacts.ContactImageBitmapDecoderFactory;
import com.fsck.k9.contacts.ContactLetterBitmapConfig;
import com.fsck.k9.contacts.ContactLetterBitmapCreator;
import com.fsck.k9.contacts.ContactLetterExtractor;
import com.fsck.k9.contacts.ContactPhotoLoader;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.crypto.openpgp.OpenPgpEncryptionExtractor;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.mail.store.imap.IdleRefreshManager;
import com.fsck.k9.mailstore.K9BackendStorageFactory;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.MessageViewInfoExtractorFactory;
import com.fsck.k9.notification.BackgroundWorkNotificationController;
import com.fsck.k9.power.AndroidPowerManager;
import com.fsck.k9.preferences.K9StoragePersister;
import com.fsck.k9.preferences.UnifiedInboxConfigurator;
import com.fsck.k9.resources.K9AutocryptStringProvider;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.featureflag.NoOpFeatureFlagOverrides;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import net.thunderbird.feature.account.avatar.data.DefaultAvatarImageRepository;
import net.thunderbird.feature.mail.message.composer.html.MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
import net.thunderbird.feature.mail.message.reader.impl.html.DefaultMessageReaderHtmlSettingsProvider;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinModuleKt$$ExternalSyntheticLambda9 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda9(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                return ((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null)).getContentResolver();
            case 1:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultMessagingListenerProvider(IntOffsetKt.listOf(scope.resolve(Reflection.getOrCreateKotlinClass(MessagingController.AnonymousClass8.class), null, null)));
            case 2:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return EmptyList.INSTANCE;
            case 3:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new OpenPgpEncryptionExtractor();
            case 4:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9StoragePersister((Context) scope2.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (Logger) scope2.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 5:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new InMemoryFeatureFlagProvider((K9FeatureFlagFactory) scope3.resolve(Reflection.getOrCreateKotlinClass(K9FeatureFlagFactory.class), null, null), (NoOpFeatureFlagOverrides) scope3.resolve(Reflection.getOrCreateKotlinClass(NoOpFeatureFlagOverrides.class), null, null));
            case 6:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountOwnerNameProvider((Preferences) scope4.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountStateLoader((LegacyAccountDtoManager) scope5.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountServerSettingsUpdater((LegacyAccountDtoManager) scope6.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null));
            case 9:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountActivator((Context) scope7.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (Preferences) scope7.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (MessagingController) scope7.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null));
            case 10:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDeletePolicyProvider();
            case 11:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountRemover((LocalStoreProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null), (MessagingController) scope8.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null), (BackendManager) scope8.resolve(Reflection.getOrCreateKotlinClass(BackendManager.class), null, null), (LocalKeyStoreManager) scope8.resolve(Reflection.getOrCreateKotlinClass(LocalKeyStoreManager.class), null, null), (Preferences) scope8.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (UnifiedInboxConfigurator) scope8.resolve(Reflection.getOrCreateKotlinClass(UnifiedInboxConfigurator.class), null, null), (DefaultAvatarImageRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarImageRepository.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope9 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope9.getClass();
                parametersHolder.getClass();
                return new AccountRemoverWorker((AccountRemover) scope9.resolve(Reflection.getOrCreateKotlinClass(AccountRemover.class), null, null), (BackgroundWorkNotificationController) scope9.resolve(Reflection.getOrCreateKotlinClass(BackgroundWorkNotificationController.class), null, null), (Context) scope9.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (WorkerParameters) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(WorkerParameters.class)));
            case 13:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultBackgroundAccountRemover((Context) scope10.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 14:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageLoaderHelperFactory((MessageViewInfoExtractorFactory) scope11.resolve(Reflection.getOrCreateKotlinClass(MessageViewInfoExtractorFactory.class), null, null), (DefaultMessageReaderHtmlSettingsProvider) scope11.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageReaderHtmlSettingsProvider.class), null, null), (MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1) scope11.resolve(Reflection.getOrCreateKotlinClass(MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Scope scope12 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope12.getClass();
                parametersHolder2.getClass();
                return new AccountSetupCompositionViewModel((DefaultLegacyAccountManager) scope12.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (StringsResourceManager) scope12.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null), (EmailAddressValidator) scope12.resolve(Reflection.getOrCreateKotlinClass(EmailAddressValidator.class), null, null), (String) parametersHolder2.elementAt(0, Reflection.getOrCreateKotlinClass(String.class)));
            case 16:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AutocryptTransferMessageCreator((K9AutocryptStringProvider) scope13.resolve(Reflection.getOrCreateKotlinClass(K9AutocryptStringProvider.class), null, null), (GeneralSettingsManager) scope13.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AutocryptDraftStateHeaderParser();
            case 18:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new BackendManager(MapsKt__MapsKt.plus(MapsKt__MapsKt.mapOf(new Pair("imap", scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultImapBackendFactory.class), null, null)), new Pair("pop3", scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultPop3BackendFactory.class), null, null))), (Map) scope14.resolve(Reflection.getOrCreateKotlinClass(Map.class), null, new StringQualifier("developmentBackends"))), (DefaultLegacyAccountManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null));
            case 19:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultImapBackendFactory((DefaultLegacyAccountManager) scope15.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (AndroidPowerManager) scope15.resolve(Reflection.getOrCreateKotlinClass(AndroidPowerManager.class), null, null), (IdleRefreshManager) scope15.resolve(Reflection.getOrCreateKotlinClass(IdleRefreshManager.class), null, null), (K9BackendStorageFactory) scope15.resolve(Reflection.getOrCreateKotlinClass(K9BackendStorageFactory.class), null, null), (DefaultTrustedSocketFactory) scope15.resolve(Reflection.getOrCreateKotlinClass(DefaultTrustedSocketFactory.class), null, null), (Context) scope15.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (String) scope15.resolve(Reflection.getOrCreateKotlinClass(String.class), null, new StringQualifier("ClientInfoAppName")), (String) scope15.resolve(Reflection.getOrCreateKotlinClass(String.class), null, new StringQualifier("ClientInfoAppVersion")));
            case 20:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidAlarmManager((Context) scope16.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (AlarmManager) scope16.resolve(Reflection.getOrCreateKotlinClass(AlarmManager.class), null, null));
            case 21:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new BackendIdleRefreshManager((AndroidAlarmManager) scope17.resolve(Reflection.getOrCreateKotlinClass(AndroidAlarmManager.class), null, null));
            case 22:
                Scope scope18 = (Scope) obj;
                scope18.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultPop3BackendFactory((DefaultLegacyAccountManager) scope18.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (K9BackendStorageFactory) scope18.resolve(Reflection.getOrCreateKotlinClass(K9BackendStorageFactory.class), null, null), (DefaultTrustedSocketFactory) scope18.resolve(Reflection.getOrCreateKotlinClass(DefaultTrustedSocketFactory.class), null, null));
            case 23:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new RealOAuth2TokenProviderFactory((Context) scope19.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 24:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new ContactLetterExtractor();
            case 25:
                Scope scope20 = (Scope) obj;
                scope20.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ContactLetterBitmapConfig((Context) scope20.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (ThemeManager) scope20.resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null), (DefaultMessageListPreferencesManager) scope20.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null));
            case 26:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ContactLetterBitmapCreator((ContactLetterExtractor) scope21.resolve(Reflection.getOrCreateKotlinClass(ContactLetterExtractor.class), null, null), (ContactLetterBitmapConfig) scope21.resolve(Reflection.getOrCreateKotlinClass(ContactLetterBitmapConfig.class), null, null));
            case 27:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ContactPhotoLoader((ContentResolver) scope22.resolve(Reflection.getOrCreateKotlinClass(ContentResolver.class), null, null), (ContactRepository) scope22.resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null));
            case 28:
                Scope scope23 = (Scope) obj;
                scope23.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ContactPictureLoader((Context) scope23.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (ContactLetterBitmapCreator) scope23.resolve(Reflection.getOrCreateKotlinClass(ContactLetterBitmapCreator.class), null, null));
            default:
                Scope scope24 = (Scope) obj;
                scope24.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ContactImageBitmapDecoderFactory((ContactPhotoLoader) scope24.resolve(Reflection.getOrCreateKotlinClass(ContactPhotoLoader.class), null, null));
        }
    }
}
