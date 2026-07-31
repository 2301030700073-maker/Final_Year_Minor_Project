package com.fsck.k9;

import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent;
import app.k9mail.feature.migration.launcher.k9.K9MigrationManager;
import app.k9mail.feature.settings.p000import.ui.AuthViewModel;
import app.k9mail.feature.settings.p000import.ui.ImportAppFetcher;
import app.k9mail.feature.settings.p000import.ui.PickAppViewModel;
import app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel;
import app.k9mail.feature.telemetry.noop.NoOpTelemetryManager;
import app.k9mail.feature.widget.message.list.MessageListLoader;
import app.k9mail.feature.widget.message.list.MessageListWidgetManager;
import app.k9mail.feature.widget.unread.UnreadWidgetDataProvider;
import app.k9mail.feature.widget.unread.UnreadWidgetMigrations;
import app.k9mail.feature.widget.unread.UnreadWidgetRepository;
import app.k9mail.feature.widget.unread.UnreadWidgetUpdater;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import app.k9mail.provider.K9AppNameProvider;
import app.k9mail.provider.K9AppNotificationIconProvider;
import app.k9mail.provider.K9FeatureThemeProvider;
import app.k9mail.provider.K9ThemeProvider;
import app.k9mail.widget.K9MessageListWidgetConfig;
import app.k9mail.widget.K9UnreadWidgetConfig;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.account.AccountActivator;
import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.AndroidKeyStoreDirectoryProvider;
import com.fsck.k9.helper.Contacts;
import com.fsck.k9.helper.DefaultTrustedSocketFactory;
import com.fsck.k9.helper.MessageHelper;
import com.fsck.k9.mail.ssl.LocalKeyStore;
import com.fsck.k9.mail.ssl.TrustManagerFactory;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.preferences.K9StoragePersister;
import com.fsck.k9.preferences.SettingsImporter;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.GlobalScope;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.AccountDefaultsProvider;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.feature.account.storage.legacy.LegacyAccountStorageHandler;
import okio.Okio;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

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
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return GlobalScope.INSTANCE;
            case 1:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SettingsImportViewModel((ContentResolver) scope.resolve(Reflection.getOrCreateKotlinClass(ContentResolver.class), null, null), (SettingsImporter) scope.resolve(Reflection.getOrCreateKotlinClass(SettingsImporter.class), null, null), (AccountActivator) scope.resolve(Reflection.getOrCreateKotlinClass(AccountActivator.class), null, null), (K9MigrationManager) scope.resolve(Reflection.getOrCreateKotlinClass(K9MigrationManager.class), null, null), (ImportAppFetcher) scope.resolve(Reflection.getOrCreateKotlinClass(ImportAppFetcher.class), null, null), (Logger) scope.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AuthViewModel((Application) scope2.resolve(Reflection.getOrCreateKotlinClass(Application.class), null, null), (LegacyAccountDtoManager) scope2.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (GetOAuthRequestIntent) scope2.resolve(Reflection.getOrCreateKotlinClass(GetOAuthRequestIntent.class), null, null), (Logger) scope2.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 3:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new PickAppViewModel((ImportAppFetcher) scope3.resolve(Reflection.getOrCreateKotlinClass(ImportAppFetcher.class), null, null));
            case 4:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new NoOpTelemetryManager();
            case 5:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListWidgetManager((Context) scope4.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (DefaultMessageListRepository) scope4.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListRepository.class), null, null), (K9MessageListWidgetConfig) scope4.resolve(Reflection.getOrCreateKotlinClass(K9MessageListWidgetConfig.class), null, null));
            case 6:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListLoader((DefaultLegacyAccountManager) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (DefaultMessageListRepository) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListRepository.class), null, null), (MessageHelper) scope5.resolve(Reflection.getOrCreateKotlinClass(MessageHelper.class), null, null), (DefaultMessageListPreferencesManager) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null), (DefaultOutboxFolderManager) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UnreadWidgetRepository((Context) scope6.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (UnreadWidgetDataProvider) scope6.resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetDataProvider.class), null, null), (UnreadWidgetMigrations) scope6.resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetMigrations.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UnreadWidgetDataProvider((Context) scope7.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (Preferences) scope7.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (DefaultMessageCountsProvider) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageCountsProvider.class), null, null), (DefaultFolderProvider) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderProvider.class), null, null), (DefaultFolderRepository) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (FolderNameFormatter) scope7.resolve(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, null), (K9CoreResourceProvider) scope7.resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null), (Logger) scope7.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 9:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UnreadWidgetUpdater((Context) scope8.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (K9UnreadWidgetConfig) scope8.resolve(Reflection.getOrCreateKotlinClass(K9UnreadWidgetConfig.class), null, null));
            case 10:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessagingController.AnonymousClass8(1, (UnreadWidgetUpdater) scope9.resolve(Reflection.getOrCreateKotlinClass(UnreadWidgetUpdater.class), null, null), (Logger) scope9.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 11:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UnreadWidgetMigrations((Preferences) scope10.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (DefaultFolderRepository) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                LegacyAccountDtoManager legacyAccountDtoManager = (LegacyAccountDtoManager) scope11.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                return new DefaultDisplayFolderRepository((MessageStoreManager) scope11.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null), (MessagingControllerRegistry) scope11.resolve(Reflection.getOrCreateKotlinClass(MessagingControllerRegistry.class), null, null), (DefaultOutboxFolderManager) scope11.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null), legacyAccountDtoManager);
            case 13:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9AppNameProvider(Okio.androidContext(scope12));
            case 14:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9ThemeProvider();
            case OffsetKt.Horizontal /* 15 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9FeatureThemeProvider();
            case 16:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9AppNotificationIconProvider();
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9MessageListWidgetConfig();
            case 18:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9UnreadWidgetConfig();
            case 19:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new LocalStoreProvider();
            case 20:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new Contacts();
            case 21:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LocalKeyStore((AndroidKeyStoreDirectoryProvider) scope13.resolve(Reflection.getOrCreateKotlinClass(AndroidKeyStoreDirectoryProvider.class), null, null));
            case 22:
                TrustManagerFactory trustManagerFactory = new TrustManagerFactory((LocalKeyStore) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, LocalKeyStore.class, (Qualifier) null, (ParametersHolder) null));
                try {
                    trustManagerFactory.initialize();
                    return trustManagerFactory;
                } catch (KeyStoreException | NoSuchAlgorithmException e) {
                    Log.e(e, "Failed to initialize X509 Trust Manager!", new Object[0]);
                    throw new IllegalStateException(e);
                }
            case 23:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LocalKeyStoreManager((LocalKeyStore) scope14.resolve(Reflection.getOrCreateKotlinClass(LocalKeyStore.class), null, null));
            case 24:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultTrustedSocketFactory((Context) scope15.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (TrustManagerFactory) scope15.resolve(Reflection.getOrCreateKotlinClass(TrustManagerFactory.class), null, null));
            case 25:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new EmailAddressValidator();
            case 26:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new Preferences((K9StoragePersister) scope16.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), (LocalStoreProvider) scope16.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null), (LegacyAccountStorageHandler) scope16.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountStorageHandler.class), null, null), (AccountDefaultsProvider) scope16.resolve(Reflection.getOrCreateKotlinClass(AccountDefaultsProvider.class), null, null));
            case 27:
                return ((Preferences) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Preferences.class, (Qualifier) null, (ParametersHolder) null)).getStorage();
            case 28:
                return ((Preferences) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Preferences.class, (Qualifier) null, (ParametersHolder) null)).createStorageEditor();
            default:
                return ((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null)).getResources();
        }
    }
}
