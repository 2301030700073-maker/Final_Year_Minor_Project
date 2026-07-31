package com.fsck.k9.mailstore;

import android.app.NotificationManager;
import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.core.app.NotificationManagerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.provider.K9AppNotificationIconProvider;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.message.extractors.AttachmentCounter;
import com.fsck.k9.message.extractors.AttachmentInfoExtractor;
import com.fsck.k9.message.extractors.BasicPartInfoExtractor;
import com.fsck.k9.message.extractors.TextPartFinder;
import com.fsck.k9.message.html.DisplayHtmlFactory;
import com.fsck.k9.message.html.HtmlProcessorFactory;
import com.fsck.k9.message.quote.QuoteDateFormatter;
import com.fsck.k9.message.quote.TextQuoteCreator;
import com.fsck.k9.notification.AuthenticationErrorNotificationController;
import com.fsck.k9.notification.CertificateErrorNotificationController;
import com.fsck.k9.notification.K9NotificationActionCreator;
import com.fsck.k9.notification.K9NotificationResourceProvider;
import com.fsck.k9.notification.NewMailNotificationController;
import com.fsck.k9.notification.NewMailNotificationManager;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationConfigurationConverter;
import com.fsck.k9.notification.NotificationContentCreator;
import com.fsck.k9.notification.NotificationController;
import com.fsck.k9.notification.NotificationHelper;
import com.fsck.k9.notification.NotificationLightDecoder;
import com.fsck.k9.notification.NotificationRepository;
import com.fsck.k9.notification.NotificationSettingsUpdater;
import com.fsck.k9.notification.NotificationVibrationDecoder;
import com.fsck.k9.notification.RealBackgroundWorkNotificationController;
import com.fsck.k9.notification.SendFailedNotificationController;
import com.fsck.k9.notification.SingleMessageNotificationCreator;
import com.fsck.k9.notification.SummaryNotificationCreator;
import com.fsck.k9.notification.SyncNotificationController;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.storage.notifications.K9NotificationStoreProvider;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.cache.TimeLimitedCache;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinModuleKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AttachmentCounter();
            case 1:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SaveMessageDataCreator();
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultMessageListRepository((MessageStoreManager) scope2.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null));
            case 3:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultOutboxFolderManager((Logger) scope3.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (DefaultLegacyAccountManager) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (LocalStoreProvider) scope3.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null), new TimeLimitedCache());
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageViewInfoExtractorFactory((AttachmentInfoExtractor) scope4.resolve(Reflection.getOrCreateKotlinClass(AttachmentInfoExtractor.class), null, null), (HtmlProcessorFactory) scope4.resolve(Reflection.getOrCreateKotlinClass(HtmlProcessorFactory.class), null, null), (K9CoreResourceProvider) scope4.resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null));
            case 5:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidStorageFilesProviderFactory((Context) scope5.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 6:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new SpecialFolderSelectionStrategy();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9BackendStorageFactory((Preferences) scope6.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (DefaultLegacyAccountManager) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (DefaultFolderRepository) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (MessageStoreManager) scope6.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null), (DefaultSpecialFolderUpdater$Factory) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultSpecialFolderUpdater$Factory.class), null, null), (SaveMessageDataCreator) scope6.resolve(Reflection.getOrCreateKotlinClass(SaveMessageDataCreator.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AttachmentInfoExtractor((Context) scope7.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 9:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new TextPartFinder();
            case 10:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new BasicPartInfoExtractor();
            case 11:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new HtmlProcessorFactory((InMemoryFeatureFlagProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), (DefaultCssClassNameProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, null), (DisplayHtmlFactory) scope8.resolve(Reflection.getOrCreateKotlinClass(DisplayHtmlFactory.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DisplayHtmlFactory((DefaultCssClassNameProvider) scope9.resolve(Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, null), (List) scope9.resolve(Reflection.getOrCreateKotlinClass(List.class), null, new StringQualifier(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(List.class).getQualifiedName(), "<", Reflection.getOrCreateKotlinClass(CssStyleProvider$Factory.class).getQualifiedName(), ">"))));
            case 13:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new QuoteDateFormatter((GeneralSettingsManager) scope10.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 14:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new TextQuoteCreator((QuoteDateFormatter) scope11.resolve(Reflection.getOrCreateKotlinClass(QuoteDateFormatter.class), null, null), (K9CoreResourceProvider) scope11.resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationRepository((K9NotificationStoreProvider) scope12.resolve(Reflection.getOrCreateKotlinClass(K9NotificationStoreProvider.class), null, null), (LocalStoreProvider) scope12.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null), (MessageStoreManager) scope12.resolve(Reflection.getOrCreateKotlinClass(MessageStoreManager.class), null, null), (NotificationContentCreator) scope12.resolve(Reflection.getOrCreateKotlinClass(NotificationContentCreator.class), null, null), (GeneralSettingsManager) scope12.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 16:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationLightDecoder();
            case 17:
                return new NotificationManagerCompat((Context) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, Context.class, (Qualifier) null, (ParametersHolder) null));
            case 18:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationVibrationDecoder();
            case 19:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationConfigurationConverter();
            case 20:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationSettingsUpdater((Preferences) scope14.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (NotificationChannelManager) scope14.resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null), (NotificationConfigurationConverter) scope14.resolve(Reflection.getOrCreateKotlinClass(NotificationConfigurationConverter.class), null, null));
            case 21:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new RealBackgroundWorkNotificationController((Context) scope15.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (K9NotificationResourceProvider) scope15.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (NotificationChannelManager) scope15.resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null));
            case 22:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationHelper((Context) scope16.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (NotificationManagerCompat) scope16.resolve(Reflection.getOrCreateKotlinClass(NotificationManagerCompat.class), null, null), (NotificationChannelManager) scope16.resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null), (K9NotificationResourceProvider) scope16.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (GeneralSettingsManager) scope16.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (Logger) scope16.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 23:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                LegacyAccountDtoManager legacyAccountDtoManager = (LegacyAccountDtoManager) scope17.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
                ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                newSingleThreadExecutor.getClass();
                Object systemService = ((Context) scope17.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getSystemService("notification");
                systemService.getClass();
                return new NotificationChannelManager(legacyAccountDtoManager, newSingleThreadExecutor, (NotificationManager) systemService, (K9NotificationResourceProvider) scope17.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (NotificationLightDecoder) scope17.resolve(Reflection.getOrCreateKotlinClass(NotificationLightDecoder.class), null, null));
            case 24:
                Scope scope18 = (Scope) obj;
                scope18.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CertificateErrorNotificationController((NotificationHelper) scope18.resolve(Reflection.getOrCreateKotlinClass(NotificationHelper.class), null, null), (K9NotificationActionCreator) scope18.resolve(Reflection.getOrCreateKotlinClass(K9NotificationActionCreator.class), null, null), (K9NotificationResourceProvider) scope18.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (GeneralSettingsManager) scope18.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 25:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NotificationController((CertificateErrorNotificationController) scope19.resolve(Reflection.getOrCreateKotlinClass(CertificateErrorNotificationController.class), null, null), (AuthenticationErrorNotificationController) scope19.resolve(Reflection.getOrCreateKotlinClass(AuthenticationErrorNotificationController.class), null, null), (SyncNotificationController) scope19.resolve(Reflection.getOrCreateKotlinClass(SyncNotificationController.class), null, null), (SendFailedNotificationController) scope19.resolve(Reflection.getOrCreateKotlinClass(SendFailedNotificationController.class), null, null), (NewMailNotificationController) scope19.resolve(Reflection.getOrCreateKotlinClass(NewMailNotificationController.class), null, null));
            case 26:
                Scope scope20 = (Scope) obj;
                scope20.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AuthenticationErrorNotificationController((NotificationHelper) scope20.resolve(Reflection.getOrCreateKotlinClass(NotificationHelper.class), null, null), (K9NotificationActionCreator) scope20.resolve(Reflection.getOrCreateKotlinClass(K9NotificationActionCreator.class), null, null), (K9NotificationResourceProvider) scope20.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (GeneralSettingsManager) scope20.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
            case 27:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SyncNotificationController((NotificationHelper) scope21.resolve(Reflection.getOrCreateKotlinClass(NotificationHelper.class), null, null), (K9NotificationActionCreator) scope21.resolve(Reflection.getOrCreateKotlinClass(K9NotificationActionCreator.class), null, null), (K9NotificationResourceProvider) scope21.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (DefaultOutboxFolderManager) scope21.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null), (K9AppNotificationIconProvider) scope21.resolve(Reflection.getOrCreateKotlinClass(K9AppNotificationIconProvider.class), null, null));
            case 28:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SendFailedNotificationController((NotificationHelper) scope22.resolve(Reflection.getOrCreateKotlinClass(NotificationHelper.class), null, null), (K9NotificationActionCreator) scope22.resolve(Reflection.getOrCreateKotlinClass(K9NotificationActionCreator.class), null, null), (K9NotificationResourceProvider) scope22.resolve(Reflection.getOrCreateKotlinClass(K9NotificationResourceProvider.class), null, null), (GeneralSettingsManager) scope22.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (DefaultOutboxFolderManager) scope22.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null));
            default:
                Scope scope23 = (Scope) obj;
                scope23.getClass();
                ((ParametersHolder) obj2).getClass();
                return new NewMailNotificationController((NotificationManagerCompat) scope23.resolve(Reflection.getOrCreateKotlinClass(NotificationManagerCompat.class), null, null), (NewMailNotificationManager) scope23.resolve(Reflection.getOrCreateKotlinClass(NewMailNotificationManager.class), null, null), (SummaryNotificationCreator) scope23.resolve(Reflection.getOrCreateKotlinClass(SummaryNotificationCreator.class), null, null), (SingleMessageNotificationCreator) scope23.resolve(Reflection.getOrCreateKotlinClass(SingleMessageNotificationCreator.class), null, null));
        }
    }
}
