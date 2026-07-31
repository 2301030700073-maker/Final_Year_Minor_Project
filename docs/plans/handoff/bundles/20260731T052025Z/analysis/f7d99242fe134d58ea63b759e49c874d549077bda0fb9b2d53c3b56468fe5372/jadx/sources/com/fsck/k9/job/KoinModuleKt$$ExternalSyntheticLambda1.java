package com.fsck.k9.job;

import android.app.AlarmManager;
import android.content.Context;
import android.os.Build;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import androidx.work.WorkerFactory;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.controller.push.AccountPushControllerFactory;
import com.fsck.k9.controller.push.AlarmPermissionManager;
import com.fsck.k9.controller.push.AlarmPermissionManagerApi21;
import com.fsck.k9.controller.push.AlarmPermissionManagerApi31;
import com.fsck.k9.controller.push.AutoSyncManager;
import com.fsck.k9.controller.push.BootCompleteManager;
import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.controller.push.PushServiceManager;
import com.fsck.k9.helper.AndroidKeyStoreDirectoryProvider;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.helper.MessageHelper;
import com.fsck.k9.helper.RealContactNameProvider;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.MessageRepository;
import com.fsck.k9.mailstore.SaveMessageDataCreator;
import com.fsck.k9.mailstore.SpecialLocalFoldersCreator;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.message.extractors.MessageFulltextCreator;
import com.fsck.k9.message.extractors.MessagePreviewCreator;
import com.fsck.k9.notification.K9NotificationStrategy;
import com.fsck.k9.notification.NotificationController;
import com.fsck.k9.notification.PushNotificationManager;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.storage.messages.K9MessageStoreFactory;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Clock;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.android.network.ConnectivityManagerBase;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalDeleteOperationDecider;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import net.thunderbird.feature.notification.impl.DefaultNotificationManager;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.openintents.openpgp.OpenPgpApiManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new WorkManagerConfigurationProvider((WorkerFactory) scope.resolve(Reflection.getOrCreateKotlinClass(WorkerFactory.class), null, null));
            case 1:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                Context context = (Context) scope2.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null);
                NotificationController notificationController = (NotificationController) scope2.resolve(Reflection.getOrCreateKotlinClass(NotificationController.class), null, null);
                K9NotificationStrategy k9NotificationStrategy = (K9NotificationStrategy) scope2.resolve(Reflection.getOrCreateKotlinClass(K9NotificationStrategy.class), null, null);
                LocalStoreProvider localStoreProvider = (LocalStoreProvider) scope2.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null);
                BackendManager backendManager = (BackendManager) scope2.resolve(Reflection.getOrCreateKotlinClass(BackendManager.class), null, null);
                Preferences preferences = (Preferences) scope2.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
                MessageStoreManager messageStoreManager = (MessageStoreManager) scope2.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null);
                SaveMessageDataCreator saveMessageDataCreator = (SaveMessageDataCreator) scope2.resolve(Reflection.getOrCreateKotlinClass(SaveMessageDataCreator.class), null, null);
                return new MessagingController(context, notificationController, k9NotificationStrategy, localStoreProvider, backendManager, preferences, messageStoreManager, saveMessageDataCreator, (DefaultLocalDeleteOperationDecider) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultLocalDeleteOperationDecider.class), null, null), (DefaultLocalMessageUidPrefixProvider) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultLocalMessageUidPrefixProvider.class), null, null), (List) scope2.resolve(Reflection.getOrCreateKotlinClass(List.class), null, new StringQualifier("controllerExtensions")), (InMemoryFeatureFlagProvider) scope2.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), (Logger) scope2.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, new StringQualifier("syncDebug")), (DefaultNotificationManager) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultNotificationManager.class), null, null), (DefaultOutboxFolderManager) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null));
            case 2:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessagingControllerWrapper((MessagingController) scope3.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null), (LegacyAccountDtoManager) scope3.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null));
            case 3:
                return (MessagingControllerRegistry) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, MessagingController.class, (Qualifier) null, (ParametersHolder) null);
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultMessageCountsProvider((MessageStoreManager) scope4.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null), (MessagingControllerRegistry) scope4.resolve(Reflection.getOrCreateKotlinClass(MessagingControllerRegistry.class), null, null), (DefaultOutboxFolderManager) scope4.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null), (LegacyAccountDtoManager) scope4.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null));
            case 5:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new PushServiceManager((Context) scope5.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 6:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new BootCompleteManager((Context) scope6.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AutoSyncManager((Context) scope7.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (GeneralSettingsManager) scope7.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountPushControllerFactory((LegacyAccountDtoManager) scope8.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (BackendManager) scope8.resolve(Reflection.getOrCreateKotlinClass(BackendManager.class), null, null), (MessagingController) scope8.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null), (DefaultFolderRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (Logger) scope8.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 9:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new PushController((LegacyAccountDtoManager) scope9.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (GeneralSettingsManager) scope9.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (BackendManager) scope9.resolve(Reflection.getOrCreateKotlinClass(BackendManager.class), null, null), (PushServiceManager) scope9.resolve(Reflection.getOrCreateKotlinClass(PushServiceManager.class), null, null), (BootCompleteManager) scope9.resolve(Reflection.getOrCreateKotlinClass(BootCompleteManager.class), null, null), (AutoSyncManager) scope9.resolve(Reflection.getOrCreateKotlinClass(AutoSyncManager.class), null, null), (AlarmPermissionManager) scope9.resolve(Reflection.getOrCreateKotlinClass(AlarmPermissionManager.class), null, null), (PushNotificationManager) scope9.resolve(Reflection.getOrCreateKotlinClass(PushNotificationManager.class), null, null), (ConnectivityManagerBase) scope9.resolve(Reflection.getOrCreateKotlinClass(ConnectivityManagerBase.class), null, null), (AccountPushControllerFactory) scope9.resolve(Reflection.getOrCreateKotlinClass(AccountPushControllerFactory.class), null, null), (DefaultFolderRepository) scope9.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null));
            case 10:
                Scope scope10 = (Scope) obj;
                return Build.VERSION.SDK_INT >= 31 ? new AlarmPermissionManagerApi31((Context) ViewSizeResolver.CC.m(scope10, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null), (AlarmManager) scope10.resolve(Reflection.getOrCreateKotlinClass(AlarmManager.class), null, null)) : new AlarmPermissionManagerApi21();
            case 11:
                Scope scope11 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope11.getClass();
                parametersHolder.getClass();
                return new OpenPgpApiManager((Context) scope11.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (LifecycleOwner) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(LifecycleOwner.class)));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ClipboardManager((Context) scope12.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 13:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageHelper((K9CoreResourceProvider) scope13.resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null), (ContactRepository) scope13.resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null), (DefaultMessageListPreferencesManager) scope13.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null));
            case 14:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidKeyStoreDirectoryProvider((Context) scope14.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Object systemService = ((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null)).getSystemService("alarm");
                systemService.getClass();
                return (AlarmManager) systemService;
            case 16:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new RealContactNameProvider((ContactRepository) scope15.resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null));
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9WorkerFactory();
            case 18:
                WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null));
                instance$1.getClass();
                return instance$1;
            case 19:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9JobManager((WorkManagerImpl) scope16.resolve(Reflection.getOrCreateKotlinClass(WorkManagerImpl.class), null, null), (LegacyAccountDtoManager) scope16.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (MailSyncWorkerManager) scope16.resolve(Reflection.getOrCreateKotlinClass(MailSyncWorkerManager.class), null, null), (FileLogLimitWorkManager) scope16.resolve(Reflection.getOrCreateKotlinClass(FileLogLimitWorkManager.class), null, null));
            case 20:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MailSyncWorkerManager((WorkManagerImpl) scope17.resolve(Reflection.getOrCreateKotlinClass(WorkManagerImpl.class), null, null), (Clock) scope17.resolve(Reflection.getOrCreateKotlinClass(Clock.class), null, null), (Logger) scope17.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, new StringQualifier("syncDebug")), (GeneralSettingsManager) scope17.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 21:
                Scope scope18 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope18.getClass();
                parametersHolder2.getClass();
                return new MailSyncWorker((MessagingController) scope18.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null), (Preferences) scope18.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (GeneralSettingsManager) scope18.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (Context) scope18.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (WorkerParameters) parametersHolder2.elementAt(0, Reflection.getOrCreateKotlinClass(WorkerParameters.class)));
            case 22:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FileLogLimitWorkManager((WorkManagerImpl) scope19.resolve(Reflection.getOrCreateKotlinClass(WorkManagerImpl.class), null, null));
            case 23:
                Scope scope20 = (Scope) obj;
                ParametersHolder parametersHolder3 = (ParametersHolder) obj2;
                scope20.getClass();
                parametersHolder3.getClass();
                return new SyncDebugWorker((Context) scope20.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (Logger) scope20.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (FileLogSink) scope20.resolve(Reflection.getOrCreateKotlinClass(FileLogSink.class), null, new StringQualifier("syncDebug")), (CompositeLogSink) scope20.resolve(Reflection.getOrCreateKotlinClass(CompositeLogSink.class), null, new StringQualifier("syncDebug")), (WorkerParameters) parametersHolder3.elementAt(0, Reflection.getOrCreateKotlinClass(WorkerParameters.class)), (GeneralSettingsManager) scope20.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 24:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SpecialLocalFoldersCreator((Preferences) scope21.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (LocalStoreProvider) scope21.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null), (DefaultOutboxFolderManager) scope21.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null));
            case 25:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageStoreManager((LegacyAccountDtoManager) scope22.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (K9MessageStoreFactory) scope22.resolve(Reflection.getOrCreateKotlinClass(K9MessageStoreFactory.class), null, null));
            case 26:
                Scope scope23 = (Scope) obj;
                scope23.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageRepository((MessageStoreManager) scope23.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null));
            case 27:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessagePreviewCreator();
            case 28:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageFulltextCreator();
            default:
                Scope scope24 = (Scope) obj;
                scope24.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultFolderRepository((DefaultLegacyAccountManager) scope24.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (MessageStoreManager) scope24.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null), (DefaultOutboxFolderManager) scope24.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null));
        }
    }
}
