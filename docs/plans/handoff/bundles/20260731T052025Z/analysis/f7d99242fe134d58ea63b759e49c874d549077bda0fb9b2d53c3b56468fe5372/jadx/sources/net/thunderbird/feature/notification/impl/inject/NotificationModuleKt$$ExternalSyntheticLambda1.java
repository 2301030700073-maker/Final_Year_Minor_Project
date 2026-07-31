package net.thunderbird.feature.notification.impl.inject;

import android.app.Application;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Operation$State;
import app.k9mail.legacy.message.controller.MessagingControllerMailChecker;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.mailstore.LocalStore;
import com.jcraft.jzlib.Adler32;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.app.common.feature.NavigationDrawerConfigLoader;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.mail.html.HtmlSettings;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultAvatarDataMapper;
import net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.api.css.GlobalCssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.api.domain.mapper.AttachmentViewInfoMapper;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultCssVariableNameProvider;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultPlainTextMessagePreElementCssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultSignatureCssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.impl.css.LegacyGlobalCssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.impl.ui.MessageReaderViewModel;
import net.thunderbird.feature.navigation.drawer.dropdown.data.UnifiedFolderRepository;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayFoldersForAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDrawerConfig;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAllAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel;
import net.thunderbird.feature.notification.api.NotificationRegistry;
import net.thunderbird.feature.notification.api.dismisser.NotificationDismisser;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;
import net.thunderbird.feature.notification.api.sender.NotificationSender;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import net.thunderbird.feature.notification.impl.DefaultNotificationManager;
import net.thunderbird.feature.notification.impl.DefaultNotificationRegistry;
import net.thunderbird.feature.notification.impl.dismisser.DefaultNotificationDismisser;
import net.thunderbird.feature.notification.impl.intent.action.AlarmPermissionMissingNotificationTapActionIntentCreator;
import net.thunderbird.feature.notification.impl.intent.action.DefaultNotificationActionIntentCreator;
import net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator;
import net.thunderbird.feature.notification.impl.intent.action.UpdateServerSettingsNotificationActionIntentCreator;
import net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier;
import net.thunderbird.feature.notification.impl.receiver.DefaultInAppNotificationStream;
import net.thunderbird.feature.notification.impl.receiver.InAppNotificationNotifier;
import net.thunderbird.feature.notification.impl.sender.DefaultNotificationSender;
import net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator;
import okio.AsyncTimeout;
import okio.Okio;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NotificationModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NotificationModuleKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultNotificationRegistry();
            case 1:
                Scope scope = (Scope) obj;
                if (!((InMemoryFeatureFlagProvider) ViewSizeResolver.CC.m(scope, (ParametersHolder) obj2, InMemoryFeatureFlagProvider.class, (Qualifier) null, (ParametersHolder) null)).m1030providedj3aFNw("use_new_message_reader_css_styles").isEnabled()) {
                    return new LegacyGlobalCssStyleProvider$Factory();
                }
                final DefaultCssClassNameProvider defaultCssClassNameProvider = (DefaultCssClassNameProvider) scope.resolve(Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, null);
                final DefaultCssVariableNameProvider defaultCssVariableNameProvider = (DefaultCssVariableNameProvider) scope.resolve(Reflection.getOrCreateKotlinClass(DefaultCssVariableNameProvider.class), null, null);
                return new GlobalCssStyleProvider$Factory(defaultCssClassNameProvider, defaultCssVariableNameProvider) { // from class: net.thunderbird.feature.mail.message.reader.impl.css.DefaultGlobalCssStyleProvider$Factory
                    public final DefaultCssClassNameProvider cssClassNameProvider;
                    public final DefaultCssVariableNameProvider cssVariableNameProvider;

                    {
                        this.cssClassNameProvider = defaultCssClassNameProvider;
                        this.cssVariableNameProvider = defaultCssVariableNameProvider;
                    }

                    @Override // net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory
                    public final LocalStore.AnonymousClass8 create(HtmlSettings htmlSettings) {
                        return new LocalStore.AnonymousClass8(this.cssClassNameProvider, this.cssVariableNameProvider);
                    }
                };
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                final DefaultCssClassNameProvider defaultCssClassNameProvider2 = (DefaultCssClassNameProvider) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, null);
                return new CssStyleProvider$Factory(defaultCssClassNameProvider2) { // from class: net.thunderbird.feature.mail.message.reader.impl.css.DefaultSignatureCssStyleProvider$Factory
                    public final DefaultCssClassNameProvider cssClassNameProvider;

                    {
                        this.cssClassNameProvider = defaultCssClassNameProvider2;
                    }

                    @Override // net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory
                    public final LocalStore.AnonymousClass8 create(HtmlSettings htmlSettings) {
                        return new LocalStore.AnonymousClass8(this.cssClassNameProvider);
                    }
                };
            case 3:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                final DefaultCssClassNameProvider defaultCssClassNameProvider3 = (DefaultCssClassNameProvider) scope3.resolve(Reflection.getOrCreateKotlinClass(DefaultCssClassNameProvider.class), null, null);
                return new CssStyleProvider$Factory(defaultCssClassNameProvider3) { // from class: net.thunderbird.feature.mail.message.reader.impl.css.DefaultPlainTextMessagePreElementCssStyleProvider$Factory
                    public final DefaultCssClassNameProvider cssClassNameProvider;

                    {
                        this.cssClassNameProvider = defaultCssClassNameProvider3;
                    }

                    @Override // net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory
                    public final LocalStore.AnonymousClass8 create(HtmlSettings htmlSettings) {
                        return new LocalStore.AnonymousClass8(this.cssClassNameProvider, htmlSettings.useFixedWidthFont);
                    }
                };
            case 4:
                return (CssStyleProvider$Factory) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, GlobalCssStyleProvider$Factory.class, (Qualifier) null, (ParametersHolder) null);
            case 5:
                return (CssStyleProvider$Factory) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, DefaultSignatureCssStyleProvider$Factory.class, (Qualifier) null, (ParametersHolder) null);
            case 6:
                return (CssStyleProvider$Factory) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, DefaultPlainTextMessagePreElementCssStyleProvider$Factory.class, (Qualifier) null, (ParametersHolder) null);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageReaderViewModel((AttachmentViewInfoMapper) scope4.resolve(Reflection.getOrCreateKotlinClass(AttachmentViewInfoMapper.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UnifiedFolderRepository((DefaultMessageCountsProvider) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageCountsProvider.class), null, null));
            case 9:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetDrawerConfig((NavigationDrawerConfigLoader) scope6.resolve(Reflection.getOrCreateKotlinClass(NavigationDrawerConfigLoader.class), null, null));
            case 10:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AsyncTimeout.Companion(1);
            case 11:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetDisplayAccounts((LegacyAccountDtoManager) scope8.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (DefaultMessageCountsProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageCountsProvider.class), null, null), (DefaultMessageListRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListRepository.class), null, null), (DefaultInAppNotificationStream) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultInAppNotificationStream.class), null, null), (InMemoryFeatureFlagProvider) scope8.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), (DefaultAvatarDataMapper) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarDataMapper.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetDisplayFoldersForAccount((DefaultDisplayFolderRepository) scope9.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayFolderRepository.class), null, null), (UnifiedFolderRepository) scope9.resolve(Reflection.getOrCreateKotlinClass(UnifiedFolderRepository.class), null, null));
            case 13:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetDisplayTreeFolder((Logger) scope10.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 14:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SyncAccount((LegacyAccountDtoManager) scope11.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (MessagingControllerMailChecker) scope11.resolve(Reflection.getOrCreateKotlinClass(MessagingControllerMailChecker.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SyncAllAccounts((MessagingControllerMailChecker) scope12.resolve(Reflection.getOrCreateKotlinClass(MessagingControllerMailChecker.class), null, null));
            case 16:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DrawerViewModel((GetDrawerConfig) scope13.resolve(Reflection.getOrCreateKotlinClass(GetDrawerConfig.class), null, null), (GetDisplayAccounts) scope13.resolve(Reflection.getOrCreateKotlinClass(GetDisplayAccounts.class), null, null), (GetDisplayFoldersForAccount) scope13.resolve(Reflection.getOrCreateKotlinClass(GetDisplayFoldersForAccount.class), null, null), (GetDisplayTreeFolder) scope13.resolve(Reflection.getOrCreateKotlinClass(GetDisplayTreeFolder.class), null, null), (SyncAccount) scope13.resolve(Reflection.getOrCreateKotlinClass(SyncAccount.class), null, null), (SyncAllAccounts) scope13.resolve(Reflection.getOrCreateKotlinClass(SyncAllAccounts.class), null, null));
            case 17:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 18:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 19:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 20:
                BannerInlineListScrollState bannerInlineListScrollState = (BannerInlineListScrollState) obj2;
                ((SaveableHolder) obj).getClass();
                bannerInlineListScrollState.getClass();
                return IntOffsetKt.listOf((Object[]) new Float[]{Float.valueOf(bannerInlineListScrollState.bannerInlineListHeight$delegate.getFloatValue()), Float.valueOf(bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue()), Float.valueOf(bannerInlineListScrollState.contentOffset$delegate.getFloatValue()), Float.valueOf(bannerInlineListScrollState.accumulatedContentOffset$delegate.getFloatValue())});
            case 21:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new InAppNotificationNotifier((Logger) scope14.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (NotificationRegistry) scope14.resolve(Reflection.getOrCreateKotlinClass(NotificationRegistry.class), null, null));
            case 22:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultNotificationSender((Logger) scope15.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (InMemoryFeatureFlagProvider) scope15.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), (NotificationNotifier) scope15.resolve(Reflection.getOrCreateKotlinClass(NotificationNotifier.class), null, new TypeQualifier(Reflection.getOrCreateKotlinClass(AndroidSystemNotificationNotifier.class))), (NotificationNotifier) scope15.resolve(Reflection.getOrCreateKotlinClass(NotificationNotifier.class), null, new TypeQualifier(Reflection.getOrCreateKotlinClass(InAppNotificationNotifier.class))));
            case 23:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultNotificationDismisser((Logger) scope16.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (InMemoryFeatureFlagProvider) scope16.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), (NotificationRegistry) scope16.resolve(Reflection.getOrCreateKotlinClass(NotificationRegistry.class), null, null), (NotificationNotifier) scope16.resolve(Reflection.getOrCreateKotlinClass(NotificationNotifier.class), null, new TypeQualifier(Reflection.getOrCreateKotlinClass(AndroidSystemNotificationNotifier.class))), (NotificationNotifier) scope16.resolve(Reflection.getOrCreateKotlinClass(NotificationNotifier.class), null, new TypeQualifier(Reflection.getOrCreateKotlinClass(InAppNotificationNotifier.class))));
            case 24:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultNotificationManager((NotificationSender) scope17.resolve(Reflection.getOrCreateKotlinClass(NotificationSender.class), null, null), (NotificationDismisser) scope17.resolve(Reflection.getOrCreateKotlinClass(NotificationDismisser.class), null, null));
            case 25:
                Scope scope18 = (Scope) obj;
                scope18.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultInAppNotificationStream((DefaultNotificationRegistry) scope18.resolve(Reflection.getOrCreateKotlinClass(DefaultNotificationRegistry.class), null, null));
            case 26:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new Adler32((DefaultNotificationRegistry) scope19.resolve(Reflection.getOrCreateKotlinClass(DefaultNotificationRegistry.class), null, null));
            case 27:
                Scope scope20 = (Scope) obj;
                scope20.getClass();
                ((ParametersHolder) obj2).getClass();
                Okio.androidApplication(scope20);
                return IntOffsetKt.listOf((Object[]) new NotificationActionIntentCreator[]{new AlarmPermissionMissingNotificationTapActionIntentCreator(), new UpdateServerSettingsNotificationActionIntentCreator(Okio.androidApplication(scope20), (Logger) scope20.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null)), new DefaultNotificationActionIntentCreator(Okio.androidApplication(scope20), (Logger) scope20.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null))});
            case 28:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultSystemNotificationActionCreator((Logger) scope21.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (List) scope21.resolve(Reflection.getOrCreateKotlinClass(List.class), null, new TypeQualifier(Reflection.getOrCreateKotlinClass(Operation$State.class))));
            default:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                Logger logger = (Logger) scope22.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
                Application androidApplication = Okio.androidApplication(scope22);
                NotificationRegistry notificationRegistry = (NotificationRegistry) scope22.resolve(Reflection.getOrCreateKotlinClass(NotificationRegistry.class), null, null);
                String lowerCase = "System".toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                return new AndroidSystemNotificationNotifier(logger, androidApplication, notificationRegistry, (DefaultSystemNotificationActionCreator) scope22.resolve(Reflection.getOrCreateKotlinClass(DefaultSystemNotificationActionCreator.class), null, new StringQualifier(lowerCase)));
        }
    }
}
