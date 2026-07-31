package com.fsck.k9.ui;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.core.ui.compose.common.window.FoldableStateObserver;
import app.k9mail.legacy.message.controller.MessagingControllerMailChecker;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.mailstore.AndroidStorageFilesProviderFactory;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.message.extractors.BasicPartInfoExtractor;
import com.fsck.k9.message.extractors.TextPartFinder;
import com.fsck.k9.message.html.DisplayHtml;
import com.fsck.k9.message.quote.QuoteDateFormatter;
import com.fsck.k9.preferences.DefaultDrawerConfigManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StoragePersister;
import com.fsck.k9.resources.K9AutocryptStringProvider;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.fsck.k9.storage.K9SchemaDefinitionFactory;
import com.fsck.k9.storage.messages.K9MessageStoreFactory;
import com.fsck.k9.storage.notifications.K9NotificationStoreProvider;
import com.fsck.k9.ui.helper.DisplayHtmlUiFactory;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messageview.LinkTextHandler;
import com.fsck.k9.ui.settings.AboutContract$State;
import com.fsck.k9.ui.settings.AboutViewModel;
import com.fsck.k9.ui.settings.AboutViewModelKt;
import com.fsck.k9.ui.share.ShareIntentBuilder;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider;
import net.thunderbird.app.common.appVersion.DefaultAppVersionProvider;
import net.thunderbird.app.common.core.logging.DefaultLogLevelManager;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.composite.CompositeLogSink;
import net.thunderbird.core.logging.config.DebugLogConfigurator;
import net.thunderbird.core.logging.config.PlatformInitializer;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangePublisher;
import net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager;
import net.thunderbird.core.preference.display.DefaultDisplaySettingsPreferenceManager;
import net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager;
import net.thunderbird.core.preference.display.inboxSettings.DefaultDisplayInboxSettingsPreferenceManager;
import net.thunderbird.core.preference.display.miscSettings.DefaultDisplayMiscSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;
import net.thunderbird.core.preference.network.DefaultNetworkSettingsPreferenceManager;
import net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager;
import net.thunderbird.core.preference.privacy.DefaultPrivacySettingsPreferenceManager;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.core.ui.account.AccountFallbackImageProvider;
import net.thunderbird.feature.mail.message.composer.html.MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.impl.html.DefaultMessageReaderHtmlSettingsProvider;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
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
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DisplayHtmlUiFactory((DefaultCssClassNameProvider) scope.resolve(Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, null), (List) scope.resolve(Reflection.getOrCreateKotlinClass(List.class), null, new StringQualifier(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(List.class).getQualifiedName(), "<", Reflection.getOrCreateKotlinClass(CssStyleProvider$Factory.class).getQualifiedName(), ">"))), (DefaultMessageReaderHtmlSettingsProvider) scope.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageReaderHtmlSettingsProvider.class), null, null), (MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1) scope.resolve(Reflection.getOrCreateKotlinClass(MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1.class), null, null));
            case 1:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultPrivacySettingsPreferenceManager((Logger) scope2.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope2.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope2.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (PreferenceChangeBroker) scope2.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 2:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultNotificationPreferenceManager((Logger) scope3.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope3.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope3.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (PreferenceChangeBroker) scope3.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 3:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDisplayCoreSettingsPreferenceManager((Logger) scope4.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope4.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope4.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (PreferenceChangeBroker) scope4.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 4:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDisplayInboxSettingsPreferenceManager((Logger) scope5.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope5.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope5.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (PreferenceChangeBroker) scope5.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 5:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDisplayVisualSettingsPreferenceManager((Logger) scope6.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope6.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope6.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (DefaultMessageListPreferencesManager) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null), (PreferenceChangeBroker) scope6.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 6:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDisplaySettingsPreferenceManager((Logger) scope7.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (DefaultDisplayCoreSettingsPreferenceManager) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayCoreSettingsPreferenceManager.class), null, null), (DefaultDisplayInboxSettingsPreferenceManager) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayInboxSettingsPreferenceManager.class), null, null), (DisplayVisualSettingsPreferenceManager) scope7.resolve(Reflection.getOrCreateKotlinClass(DisplayVisualSettingsPreferenceManager.class), null, null), (DefaultDisplayMiscSettingsPreferenceManager) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayMiscSettingsPreferenceManager.class), null, null));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDisplayMiscSettingsPreferenceManager((Logger) scope8.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope8.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope8.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (PreferenceChangeBroker) scope8.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultInteractionSettingsPreferenceManager((Logger) scope9.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope9.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope9.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (PreferenceChangeBroker) scope9.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 9:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultMessageListPreferencesManager((Logger) scope10.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (InMemoryStorage) scope10.resolve(Reflection.getOrCreateKotlinClass(InMemoryStorage.class), null, null), (K9StorageEditor) scope10.resolve(Reflection.getOrCreateKotlinClass(K9StorageEditor.class), null, null), (PreferenceChangeBroker) scope10.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 10:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultNetworkSettingsPreferenceManager((Logger) scope11.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope11.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope11.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (PreferenceChangeBroker) scope11.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case 11:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDebuggingSettingsPreferenceManager((Logger) scope12.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (K9StoragePersister) scope12.resolve(Reflection.getOrCreateKotlinClass(K9StoragePersister.class), null, null), ((Preferences) scope12.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null)).createStorageEditor(), (DefaultLogLevelManager) scope12.resolve(Reflection.getOrCreateKotlinClass(DefaultLogLevelManager.class), null, null), (AndroidPlatformConfigProvider) scope12.resolve(Reflection.getOrCreateKotlinClass(AndroidPlatformConfigProvider.class), null, null), (PreferenceChangeBroker) scope12.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangeBroker.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new PlatformInitializer();
            case 13:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DebugLogConfigurator((CompositeLogSink) scope13.resolve(Reflection.getOrCreateKotlinClass(CompositeLogSink.class), null, new StringQualifier("syncDebug")), (FileLogSink) scope13.resolve(Reflection.getOrCreateKotlinClass(FileLogSink.class), null, new StringQualifier("syncDebug")), (PlatformInitializer) scope13.resolve(Reflection.getOrCreateKotlinClass(PlatformInitializer.class), null, null));
            case 14:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultGeneralSettingsManager((Preferences) scope14.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (CoroutineScope) scope14.resolve(Reflection.getOrCreateKotlinClass(CoroutineScope.class), null, new StringQualifier("AppCoroutineScope")), (PreferenceChangePublisher) scope14.resolve(Reflection.getOrCreateKotlinClass(PreferenceChangePublisher.class), null, null), (DefaultPrivacySettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultPrivacySettingsPreferenceManager.class), null, null), (DefaultNotificationPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultNotificationPreferenceManager.class), null, null), (DefaultDisplaySettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplaySettingsPreferenceManager.class), null, null), (DefaultDisplayCoreSettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayCoreSettingsPreferenceManager.class), null, null), (DefaultDisplayInboxSettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayInboxSettingsPreferenceManager.class), null, null), (DisplayVisualSettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DisplayVisualSettingsPreferenceManager.class), null, null), (DefaultMessageListPreferencesManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null), (DefaultDisplayMiscSettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayMiscSettingsPreferenceManager.class), null, null), (DefaultNetworkSettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultNetworkSettingsPreferenceManager.class), null, null), (DefaultDebuggingSettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultDebuggingSettingsPreferenceManager.class), null, null), (DefaultInteractionSettingsPreferenceManager) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultInteractionSettingsPreferenceManager.class), null, null), (DebugLogConfigurator) scope14.resolve(Reflection.getOrCreateKotlinClass(DebugLogConfigurator.class), null, null), (AndroidPlatformConfigProvider) scope14.resolve(Reflection.getOrCreateKotlinClass(AndroidPlatformConfigProvider.class), null, null), (Logger) scope14.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultDrawerConfigManager((CoroutineScope) scope15.resolve(Reflection.getOrCreateKotlinClass(CoroutineScope.class), null, new StringQualifier("AppCoroutineScope")), (DefaultDisplayInboxSettingsPreferenceManager) scope15.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayInboxSettingsPreferenceManager.class), null, null), (DisplayVisualSettingsPreferenceManager) scope15.resolve(Reflection.getOrCreateKotlinClass(DisplayVisualSettingsPreferenceManager.class), null, null));
            case 16:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9CoreResourceProvider((Context) scope16.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 17:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9AutocryptStringProvider((Context) scope17.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 18:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9SchemaDefinitionFactory();
            case 19:
                Scope scope18 = (Scope) obj;
                scope18.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9MessageStoreFactory((LocalStoreProvider) scope18.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null), (AndroidStorageFilesProviderFactory) scope18.resolve(Reflection.getOrCreateKotlinClass(AndroidStorageFilesProviderFactory.class), null, null), (BasicPartInfoExtractor) scope18.resolve(Reflection.getOrCreateKotlinClass(BasicPartInfoExtractor.class), null, null), (GeneralSettingsManager) scope18.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (DefaultLocalMessageUidPrefixProvider) scope18.resolve(Reflection.getOrCreateKotlinClass(DefaultLocalMessageUidPrefixProvider.class), null, null));
            case 20:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9NotificationStoreProvider((LocalStoreProvider) scope19.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null));
            case 21:
                return (MessagingControllerMailChecker) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, MessagingController.class, (Qualifier) null, (ParametersHolder) null);
            case 22:
                Scope scope20 = (Scope) obj;
                scope20.getClass();
                ((ParametersHolder) obj2).getClass();
                DefaultAppVersionProvider defaultAppVersionProvider = (DefaultAppVersionProvider) scope20.resolve(Reflection.getOrCreateKotlinClass(DefaultAppVersionProvider.class), null, null);
                String str = "?";
                Context context = defaultAppVersionProvider.context;
                try {
                    String str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                    if (str2 != null) {
                        str = str2;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    defaultAppVersionProvider.logger.error("DefaultAppVersionProvider", e, new UtcOffsetJvmKt$$ExternalSyntheticLambda0(28));
                }
                return new AboutViewModel(new AboutContract$State(str, AboutViewModelKt.USED_LIBRARIES));
            case 23:
                DisplayHtmlUiFactory displayHtmlUiFactory = (DisplayHtmlUiFactory) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, DisplayHtmlUiFactory.class, (Qualifier) null, (ParametersHolder) null);
                return new DisplayHtml(displayHtmlUiFactory.messageReaderHtmlSettingsProvider.create(), displayHtmlUiFactory.cssClassNameProvider, displayHtmlUiFactory.cssStyleProviders);
            case 24:
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                ((Scope) obj).getClass();
                parametersHolder.getClass();
                Resources resources = ((Context) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(Context.class))).getResources();
                resources.getClass();
                return new SizeFormatter(resources);
            case 25:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ShareIntentBuilder((K9CoreResourceProvider) scope21.resolve(Reflection.getOrCreateKotlinClass(K9CoreResourceProvider.class), null, null), (TextPartFinder) scope21.resolve(Reflection.getOrCreateKotlinClass(TextPartFinder.class), null, null), (QuoteDateFormatter) scope21.resolve(Reflection.getOrCreateKotlinClass(QuoteDateFormatter.class), null, null));
            case 26:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LinkTextHandler((Context) scope22.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (ClipboardManager) scope22.resolve(Reflection.getOrCreateKotlinClass(ClipboardManager.class), null, null));
            case 27:
                Scope scope23 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope23.getClass();
                parametersHolder2.getClass();
                return new FoldableStateObserver((Activity) parametersHolder2.elementAt(0, Reflection.getOrCreateKotlinClass(Activity.class)), (Logger) scope23.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 28:
                return ((InMemoryFeatureFlagProvider) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, InMemoryFeatureFlagProvider.class, (Qualifier) null, (ParametersHolder) null)).m1030providedj3aFNw("enable_message_list_new_state").isEnabled() ? MessageListFragment.Factory : MessageListFragment.Factory.INSTANCE;
            default:
                Scope scope24 = (Scope) obj;
                scope24.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountFallbackImageProvider();
        }
    }
}
