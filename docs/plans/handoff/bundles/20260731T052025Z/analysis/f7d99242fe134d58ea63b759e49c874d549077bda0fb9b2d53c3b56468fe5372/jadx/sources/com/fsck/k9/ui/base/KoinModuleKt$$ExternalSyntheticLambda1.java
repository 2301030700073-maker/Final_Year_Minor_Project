package com.fsck.k9.ui.base;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import app.k9mail.core.android.common.contact.AndroidContactPermissionResolver;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository;
import app.k9mail.legacy.ui.folder.FolderIconProvider;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import app.k9mail.provider.K9ThemeProvider;
import coil3.size.ViewSizeResolver;
import com.bumptech.glide.load.Option;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.autocrypt.AutocryptTransferMessageCreator;
import com.fsck.k9.contacts.ContactLetterBitmapCreator;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.helper.ClipboardManager;
import com.fsck.k9.helper.MessageHelper;
import com.fsck.k9.helper.RealContactNameProvider;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.MessageRepository;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.ui.account.AccountImageModelLoaderFactory;
import com.fsck.k9.ui.base.locale.SystemLocaleManager;
import com.fsck.k9.ui.choosefolder.ChooseFolderViewModel;
import com.fsck.k9.ui.compose.IntentDataMapper;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferActivity;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferPresenter;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferViewModel;
import com.fsck.k9.ui.endtoend.AutocryptSetupMessageLiveEvent;
import com.fsck.k9.ui.endtoend.AutocryptSetupTransferLiveEvent;
import com.fsck.k9.ui.identity.IdentityFormatter;
import com.fsck.k9.ui.managefolders.FolderSettingsViewModel;
import com.fsck.k9.ui.managefolders.ManageFoldersViewModel;
import com.fsck.k9.ui.messagedetails.AddToContactsLauncher;
import com.fsck.k9.ui.messagedetails.ContactSettingsProvider;
import com.fsck.k9.ui.messagedetails.MessageDetailsViewModel;
import com.fsck.k9.ui.messagedetails.RealMessageDetailsParticipantFormatter;
import com.fsck.k9.ui.messagedetails.ShowContactLauncher;
import com.fsck.k9.ui.messagelist.DefaultFolderProvider;
import com.fsck.k9.ui.messagelist.MessageListLiveDataFactory;
import com.fsck.k9.ui.messagelist.MessageListLoader;
import com.fsck.k9.ui.messagelist.MessageListViewModel;
import com.fsck.k9.ui.messagelist.SortTypeToastProvider;
import com.fsck.k9.ui.messagesource.MessageHeadersViewModel;
import com.fsck.k9.ui.messageview.RealMessageViewRecipientFormatter;
import com.fsck.k9.ui.settings.SettingsViewModel;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.ui.animation.manager.DefaultAnimationManager;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import okio.Options;
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
        Integer valueOf;
        switch (this.$r8$classId) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ThemeManager((Context) scope.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (K9ThemeProvider) scope.resolve(Reflection.getOrCreateKotlinClass(K9ThemeProvider.class), null, null), (GeneralSettingsManager) scope.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (CoroutineScope) scope.resolve(Reflection.getOrCreateKotlinClass(CoroutineScope.class), null, new StringQualifier("AppCoroutineScope")));
            case 1:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountImageModelLoaderFactory();
            case 2:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAnimationManager((DisplayVisualSettingsPreferenceManager) scope3.resolve(Reflection.getOrCreateKotlinClass(DisplayVisualSettingsPreferenceManager.class), null, null));
            case 3:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AppLanguageManager((SystemLocaleManager) scope4.resolve(Reflection.getOrCreateKotlinClass(SystemLocaleManager.class), null, null), (DefaultDisplayCoreSettingsPreferenceManager) scope4.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayCoreSettingsPreferenceManager.class), null, null));
            case 4:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SystemLocaleManager((Context) scope5.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 5:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ChooseFolderViewModel((DefaultDisplayFolderRepository) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayFolderRepository.class), null, null));
            case 6:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new IntentDataMapper();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AutocryptSetupMessageLiveEvent((AutocryptTransferMessageCreator) scope7.resolve(Reflection.getOrCreateKotlinClass(AutocryptTransferMessageCreator.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AutocryptSetupTransferLiveEvent((MessagingController) scope8.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null));
            case 9:
                Scope scope9 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope9.getClass();
                parametersHolder.getClass();
                LifecycleOwner lifecycleOwner = (LifecycleOwner) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(LifecycleOwner.class));
                return new AutocryptKeyTransferPresenter(lifecycleOwner, (OpenPgpApiManager) scope9.resolve(Reflection.getOrCreateKotlinClass(OpenPgpApiManager.class), Options.Companion.parametersOf(lifecycleOwner), null), (Preferences) scope9.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (AutocryptKeyTransferViewModel) scope9.resolve(Reflection.getOrCreateKotlinClass(AutocryptKeyTransferViewModel.class), null, null), (AutocryptKeyTransferActivity) parametersHolder.elementAt(1, Reflection.getOrCreateKotlinClass(AutocryptKeyTransferActivity.class)));
            case 10:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AutocryptKeyTransferViewModel((AutocryptSetupMessageLiveEvent) scope10.resolve(Reflection.getOrCreateKotlinClass(AutocryptSetupMessageLiveEvent.class), null, null), (AutocryptSetupTransferLiveEvent) scope10.resolve(Reflection.getOrCreateKotlinClass(AutocryptSetupTransferLiveEvent.class), null, null));
            case 11:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FolderNameFormatter((Resources) scope11.resolve(Reflection.getOrCreateKotlinClass(Resources.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new FolderIconProvider();
            case 13:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new IdentityFormatter();
            case 14:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ManageFoldersViewModel((DefaultDisplayFolderRepository) scope12.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplayFolderRepository.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FolderSettingsViewModel((Preferences) scope13.resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null), (DefaultFolderRepository) scope13.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (MessagingController) scope13.resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null));
            case 16:
                Scope scope14 = (Scope) obj;
                scope14.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageDetailsViewModel((Resources) scope14.resolve(Reflection.getOrCreateKotlinClass(Resources.class), null, null), (MessageRepository) scope14.resolve(Reflection.getOrCreateKotlinClass(MessageRepository.class), null, null), (DefaultFolderRepository) scope14.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null), (ContactSettingsProvider) scope14.resolve(Reflection.getOrCreateKotlinClass(ContactSettingsProvider.class), null, null), (ContactRepository) scope14.resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null), (AndroidContactPermissionResolver) scope14.resolve(Reflection.getOrCreateKotlinClass(AndroidContactPermissionResolver.class), null, null), (ClipboardManager) scope14.resolve(Reflection.getOrCreateKotlinClass(ClipboardManager.class), null, null), (LegacyAccountDtoManager) scope14.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null), (RealMessageDetailsParticipantFormatter) scope14.resolve(Reflection.getOrCreateKotlinClass(RealMessageDetailsParticipantFormatter.class), null, null), (FolderNameFormatter) scope14.resolve(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, null));
            case 17:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ContactSettingsProvider((DefaultMessageListPreferencesManager) scope15.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null));
            case 18:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new AddToContactsLauncher();
            case 19:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new ShowContactLauncher();
            case 20:
                Scope scope16 = (Scope) obj;
                RealContactNameProvider realContactNameProvider = (RealContactNameProvider) ViewSizeResolver.CC.m(scope16, (ParametersHolder) obj2, RealContactNameProvider.class, (Qualifier) null, (ParametersHolder) null);
                Resources resources = (Resources) scope16.resolve(Reflection.getOrCreateKotlinClass(Resources.class), null, null);
                DisplayMessageListSettings displayMessageListSettings = (DisplayMessageListSettings) ((DefaultMessageListPreferencesManager) scope16.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null)).getConfig();
                boolean z = displayMessageListSettings.isShowContactName;
                valueOf = displayMessageListSettings.isChangeContactNameColor ? Integer.valueOf(displayMessageListSettings.contactNameColor) : null;
                String string = resources.getString(R.string.message_view_me_text);
                string.getClass();
                return new RealMessageDetailsParticipantFormatter(realContactNameProvider, z, valueOf, string);
            case 21:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListViewModel((MessageListLiveDataFactory) scope17.resolve(Reflection.getOrCreateKotlinClass(MessageListLiveDataFactory.class), null, null), (Logger) scope17.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 22:
                Scope scope18 = (Scope) obj;
                scope18.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultFolderProvider((DefaultOutboxFolderManager) scope18.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null));
            case 23:
                Scope scope19 = (Scope) obj;
                scope19.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListLoader((DefaultLegacyAccountManager) scope19.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (LocalStoreProvider) scope19.resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null), (DefaultMessageListRepository) scope19.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListRepository.class), null, null), (MessageHelper) scope19.resolve(Reflection.getOrCreateKotlinClass(MessageHelper.class), null, null), (DefaultMessageListPreferencesManager) scope19.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null), (DefaultOutboxFolderManager) scope19.resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null), (InMemoryFeatureFlagProvider) scope19.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), (ContactLetterBitmapCreator) scope19.resolve(Reflection.getOrCreateKotlinClass(ContactLetterBitmapCreator.class), null, null));
            case 24:
                Scope scope20 = (Scope) obj;
                scope20.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListLiveDataFactory((MessageListLoader) scope20.resolve(Reflection.getOrCreateKotlinClass(MessageListLoader.class), null, null), (DefaultLegacyAccountManager) scope20.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (DefaultMessageListRepository) scope20.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListRepository.class), null, null));
            case 25:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new Option.AnonymousClass1();
            case 26:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new SortTypeToastProvider();
            case 27:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageHeadersViewModel((MessageRepository) scope22.resolve(Reflection.getOrCreateKotlinClass(MessageRepository.class), null, null));
            case 28:
                Scope scope23 = (Scope) obj;
                RealContactNameProvider realContactNameProvider2 = (RealContactNameProvider) ViewSizeResolver.CC.m(scope23, (ParametersHolder) obj2, RealContactNameProvider.class, (Qualifier) null, (ParametersHolder) null);
                Resources resources2 = (Resources) scope23.resolve(Reflection.getOrCreateKotlinClass(Resources.class), null, null);
                DisplayMessageListSettings displayMessageListSettings2 = (DisplayMessageListSettings) ((DefaultMessageListPreferencesManager) scope23.resolve(Reflection.getOrCreateKotlinClass(DefaultMessageListPreferencesManager.class), null, null)).getConfig();
                boolean z2 = displayMessageListSettings2.isShowCorrespondentNames;
                boolean z3 = displayMessageListSettings2.isShowContactName;
                valueOf = displayMessageListSettings2.isChangeContactNameColor ? Integer.valueOf(displayMessageListSettings2.contactNameColor) : null;
                String string2 = resources2.getString(R.string.message_view_me_text);
                string2.getClass();
                return new RealMessageViewRecipientFormatter(realContactNameProvider2, z2, z3, valueOf, string2);
            default:
                Scope scope24 = (Scope) obj;
                scope24.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SettingsViewModel((LegacyAccountDtoManager) scope24.resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null));
        }
    }
}
