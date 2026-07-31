package com.fsck.k9.power;

import android.content.ContentResolver;
import android.content.Context;
import android.os.PowerManager;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.core.app.NotificationManagerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.provider.K9AppNotificationIconProvider;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.SpecialLocalFoldersCreator;
import com.fsck.k9.notification.BaseNotificationDataCreator;
import com.fsck.k9.notification.K9NotificationActionCreator;
import com.fsck.k9.notification.K9NotificationResourceProvider;
import com.fsck.k9.notification.K9NotificationStrategy;
import com.fsck.k9.notification.LockScreenNotificationCreator;
import com.fsck.k9.notification.NewMailNotificationManager;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationContentCreator;
import com.fsck.k9.notification.NotificationHelper;
import com.fsck.k9.notification.NotificationRepository;
import com.fsck.k9.notification.NotificationSettingsUpdater;
import com.fsck.k9.notification.PushNotificationManager;
import com.fsck.k9.notification.SingleMessageNotificationCreator;
import com.fsck.k9.notification.SingleMessageNotificationDataCreator;
import com.fsck.k9.notification.SummaryNotificationCreator;
import com.fsck.k9.notification.SummaryNotificationDataCreator;
import com.fsck.k9.preferences.AccountSettingsUpgrader;
import com.fsck.k9.preferences.AccountSettingsValidator;
import com.fsck.k9.preferences.AccountSettingsWriter;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.preferences.FilePrefixProvider;
import com.fsck.k9.preferences.FolderSettingsProvider;
import com.fsck.k9.preferences.FolderSettingsUpgrader;
import com.fsck.k9.preferences.GeneralSettingsUpgrader;
import com.fsck.k9.preferences.GeneralSettingsValidator;
import com.fsck.k9.preferences.GeneralSettingsWriter;
import com.fsck.k9.preferences.IdentitySettingsUpgrader;
import com.fsck.k9.preferences.ServerSettingsUpgrader;
import com.fsck.k9.preferences.SettingsExporter;
import com.fsck.k9.preferences.SettingsFileParser;
import com.fsck.k9.preferences.SettingsImporter;
import com.fsck.k9.preferences.UnifiedInboxConfigurator;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Clock;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.PreferenceChangePublisher;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;
import net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;
import okio.Okio;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinModuleKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                Object systemService = ((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null)).getSystemService("power");
                systemService.getClass();
                return (PowerManager) systemService;
            case 1:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NewMailNotificationManager((NotificationContentCreator) scope.resolve(Reflection.getOrCreateKotlinClass(NotificationContentCreator.class), null, null), (NotificationRepository) scope.resolve(Reflection.getOrCreateKotlinClass(NotificationRepository.class), null, null), (BaseNotificationDataCreator) scope.resolve(Reflection.getOrCreateKotlinClass(BaseNotificationDataCreator.class), null, null), (SingleMessageNotificationDataCreator) scope.resolve(Reflection.getOrCreateKotlinClass(SingleMessageNotificationDataCreator.class), null, null), (SummaryNotificationDataCreator) scope.resolve(Reflection.getOrCreateKotlinClass(SummaryNotificationDataCreator.class), null, null), (Clock) scope.resolve(Reflection.getOrCreateKotlinClass(Clock.class), null, null));
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationContentCreator((K9NotificationResourceProvider) scope2.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (ContactRepository) scope2.resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null), (DefaultMessageListPreferencesManager) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null));
            case 3:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new BaseNotificationDataCreator();
            case 4:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SingleMessageNotificationDataCreator((DefaultInteractionSettingsPreferenceManager) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultInteractionSettingsPreferenceManager.class), null, null), (DefaultNotificationPreferenceManager) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultNotificationPreferenceManager.class), null, null));
            case 5:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SummaryNotificationDataCreator((SingleMessageNotificationDataCreator) scope4.resolve(Reflection.getOrCreateKotlinClass(SingleMessageNotificationDataCreator.class), null, null), (GeneralSettingsManager) scope4.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 6:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SingleMessageNotificationCreator((NotificationHelper) scope5.resolve(Reflection.getOrCreateKotlinClass(NotificationHelper.class), null, null), (K9NotificationActionCreator) scope5.resolve(Reflection.getOrCreateKotlinClass(K9NotificationActionCreator.class), null, null), (K9NotificationResourceProvider) scope5.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (LockScreenNotificationCreator) scope5.resolve(Reflection.getOrCreateKotlinClass(LockScreenNotificationCreator.class), null, null), (DefaultNotificationPreferenceManager) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultNotificationPreferenceManager.class), null, null), Okio.androidApplication(scope5));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SummaryNotificationCreator((NotificationHelper) scope6.resolve(Reflection.getOrCreateKotlinClass(NotificationHelper.class), null, null), (K9NotificationActionCreator) scope6.resolve(Reflection.getOrCreateKotlinClass(K9NotificationActionCreator.class), null, null), (LockScreenNotificationCreator) scope6.resolve(Reflection.getOrCreateKotlinClass(LockScreenNotificationCreator.class), null, null), (SingleMessageNotificationCreator) scope6.resolve(Reflection.getOrCreateKotlinClass(SingleMessageNotificationCreator.class), null, null), (K9NotificationResourceProvider) scope6.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LockScreenNotificationCreator((NotificationHelper) scope7.resolve(Reflection.getOrCreateKotlinClass(NotificationHelper.class), null, null), (K9NotificationResourceProvider) scope7.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null));
            case 9:
                Scope scope8 = (Scope) obj;
                return new PushNotificationManager((Context) ViewSizeResolver.CC.m(scope8, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null), (K9CoreResourceProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null), (K9AppNotificationIconProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(K9AppNotificationIconProvider.class), null, null), (NotificationChannelManager) scope8.resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null), (NotificationManagerCompat) scope8.resolve(Reflection.getOrCreateKotlinClass(NotificationManagerCompat.class), null, null), (Logger) scope8.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 10:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9NotificationActionCreator((Context) scope9.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (DefaultFolderProvider) scope9.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null), (MessageStoreManager) scope9.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null), (GeneralSettingsManager) scope9.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 11:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9NotificationResourceProvider((Context) scope10.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9NotificationStrategy((ContactRepository) scope11.resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null), (GeneralSettingsManager) scope11.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 13:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidPowerManager((PowerManager) scope12.resolve(Reflection.getOrCreateKotlinClass(PowerManager.class), null, null));
            case 14:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new SettingsFileParser();
            case OffsetKt.Horizontal /* 15 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new GeneralSettingsValidator();
            case 16:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FolderSettingsProvider((DefaultFolderRepository) scope13.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null));
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new GeneralSettingsUpgrader();
            case 18:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GeneralSettingsWriter((Preferences) scope14.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (DefaultGeneralSettingsManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultGeneralSettingsManager.class), null, null), (PreferenceChangePublisher) scope14.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangePublisher.class), null, null));
            case 19:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountSettingsValidator();
            case 20:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new IdentitySettingsUpgrader((GeneralSettingsManager) scope15.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 21:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FolderSettingsUpgrader((GeneralSettingsManager) scope16.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 22:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ServerSettingsUpgrader((GeneralSettingsManager) scope17.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 23:
                Scope scope18 = (Scope) obj;
                scope18.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountSettingsUpgrader((IdentitySettingsUpgrader) scope18.resolve(Reflection.getOrCreateKotlinClass(IdentitySettingsUpgrader.class), null, null), (FolderSettingsUpgrader) scope18.resolve(Reflection.getOrCreateKotlinClass(FolderSettingsUpgrader.class), null, null), (ServerSettingsUpgrader) scope18.resolve(Reflection.getOrCreateKotlinClass(ServerSettingsUpgrader.class), null, null), (GeneralSettingsManager) scope18.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 24:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SettingsExporter((ContentResolver) scope19.resolve(Reflection.getOrCreateKotlinClass(ContentResolver.class), null, null), (Preferences) scope19.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (FolderSettingsProvider) scope19.resolve(Reflection.getOrCreateKotlinClass(FolderSettingsProvider.class), null, null), (DefaultFolderRepository) scope19.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (NotificationSettingsUpdater) scope19.resolve(Reflection.getOrCreateKotlinClass(NotificationSettingsUpdater.class), null, null), (FilePrefixProvider) scope19.resolve(Reflection.getOrCreateKotlinClass(FilePrefixProvider.class), null, null));
            case 25:
                Scope scope20 = (Scope) obj;
                return new AccountSettingsWriter((Preferences) ViewSizeResolver.CC.m(scope20, (ParametersHolder) obj2, Preferences.class, (Qualifier) null, (ParametersHolder) null), (SpecialLocalFoldersCreator) scope20.resolve(Reflection.getOrCreateKotlinClass(SpecialLocalFoldersCreator.class), null, null), (Clock) scope20.resolve(Reflection.getOrCreateKotlinClass(Clock.class), null, null), (GeneralSettingsManager) scope20.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (ServerSettingsDtoSerializer) scope20.resolve(Reflection.getOrCreateKotlinClass(ServerSettingsDtoSerializer.class), null, null), (Context) scope20.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 26:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UnifiedInboxConfigurator((LegacyAccountDtoManager) scope21.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (GeneralSettingsManager) scope21.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 27:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SettingsImporter((SettingsFileParser) scope22.resolve(Reflection.getOrCreateKotlinClass(SettingsFileParser.class), null, null), (GeneralSettingsValidator) scope22.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsValidator.class), null, null), (AccountSettingsValidator) scope22.resolve(Reflection.getOrCreateKotlinClass(AccountSettingsValidator.class), null, null), (GeneralSettingsUpgrader) scope22.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsUpgrader.class), null, null), (AccountSettingsUpgrader) scope22.resolve(Reflection.getOrCreateKotlinClass(AccountSettingsUpgrader.class), null, null), (GeneralSettingsWriter) scope22.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsWriter.class), null, null), (AccountSettingsWriter) scope22.resolve(Reflection.getOrCreateKotlinClass(AccountSettingsWriter.class), null, null), (UnifiedInboxConfigurator) scope22.resolve(Reflection.getOrCreateKotlinClass(UnifiedInboxConfigurator.class), null, null));
            case 28:
                return (LegacyAccountDtoManager) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Preferences.class, (Qualifier) null, (ParametersHolder) null);
            default:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultPreferenceChangeBroker();
        }
    }
}
