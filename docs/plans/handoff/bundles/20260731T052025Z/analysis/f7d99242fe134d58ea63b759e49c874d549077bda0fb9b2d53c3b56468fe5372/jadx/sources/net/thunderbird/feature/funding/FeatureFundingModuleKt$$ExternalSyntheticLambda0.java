package net.thunderbird.feature.funding;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.graph.Result3AStateListenerKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$Factory;
import com.fsck.k9.mailstore.K9BackendStorageFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Clock;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.feature.mail.message.MailMessageModuleKt$mailMessageModule$1$3$1;
import net.thunderbird.backend.api.folder.RemoteFolderCreator;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager;
import net.thunderbird.core.preference.display.DefaultDisplaySettingsPreferenceManager;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.theme.api.ThemeManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.storage.legacy.LegacyAccountStorageHandler;
import net.thunderbird.feature.account.storage.legacy.LegacyProfileDtoStorageHandler;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;
import net.thunderbird.feature.changelog.internal.ChangeLogManager;
import net.thunderbird.feature.changelog.internal.ChangelogViewModel;
import net.thunderbird.feature.changelog.internal.DefaultChangelogNavigation;
import net.thunderbird.feature.changelog.internal.RecentChangesViewModel;
import net.thunderbird.feature.debug.settings.navigation.NoOpSecretDebugSettingsNavigation;
import net.thunderbird.feature.funding.noop.NoOpFundingManager;
import net.thunderbird.feature.funding.noop.NoOpFundingNavigation;
import net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogFragment;
import net.thunderbird.feature.mail.message.composer.html.MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalDeleteOperationDecider;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetAccountFolders;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetMessageListPreferences;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetSortCriteriaPerAccount;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenRenderer;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListViewModel;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogFragment;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;
import net.thunderbird.feature.mail.message.list.internal.ui.state.machine.MessageListStateMachine$Factory;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.event.FolderEvent$FolderLoaded;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SelectAll;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.Folder;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory;
import net.thunderbird.feature.navigation.changelog.api.ChangeLogMode;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.Okio;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeatureFundingModuleKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FeatureFundingModuleKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str;
        String str2;
        String str3;
        String str4;
        Map map;
        int i = 2;
        int i2 = 1;
        int i3 = 10;
        switch (this.$r8$classId) {
            case 0:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new NoOpFundingManager();
            case 1:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LegacyAccountStorageHandler((ServerSettingsDtoSerializer) scope.resolve(Reflection.getOrCreateKotlinClass(ServerSettingsDtoSerializer.class), null, null), (LegacyProfileDtoStorageHandler) scope.resolve(Reflection.getOrCreateKotlinClass(LegacyProfileDtoStorageHandler.class), null, null), (Logger) scope.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ChangeLogManager((Context) scope2.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null), (CoroutineScope) scope2.resolve(Reflection.getOrCreateKotlinClass(CoroutineScope.class), null, new StringQualifier("AppCoroutineScope")));
            case 3:
                Scope scope3 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope3.getClass();
                parametersHolder.getClass();
                return new ChangelogViewModel((GeneralSettingsManager) scope3.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (ChangeLogManager) scope3.resolve(Reflection.getOrCreateKotlinClass(ChangeLogManager.class), null, null), (ChangeLogMode) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(ChangeLogMode.class)));
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new RecentChangesViewModel((GeneralSettingsManager) scope4.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (ChangeLogManager) scope4.resolve(Reflection.getOrCreateKotlinClass(ChangeLogManager.class), null, null));
            case 5:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultChangelogNavigation();
            case 6:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return NoOpSecretDebugSettingsNavigation.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new NoOpFundingNavigation();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    ImageVector imageVector = Icons$Outlined.Folder;
                    ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    AtomicFU.m1009IconxqIIw2o(imageVector, OffsetKt.m222paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 0.0f, 0.0f, 4.0f, 0.0f, 11), null, gapComposer, 384, 8);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            case 9:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return SentFolderNotFoundConfirmationDialogFragment.Factory;
            case 10:
                return new MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1((ThemeManager) ViewSizeResolver.CC.m((Scope) obj, (ParametersHolder) obj2, ThemeManager.class, (Qualifier) null, (ParametersHolder) null));
            case 11:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetMessageListPreferences((DefaultDisplaySettingsPreferenceManager) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultDisplaySettingsPreferenceManager.class), null, null), (DefaultInteractionSettingsPreferenceManager) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultInteractionSettingsPreferenceManager.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetSortCriteriaPerAccount((DefaultLegacyAccountManager) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (MailMessageModuleKt$mailMessageModule$1$3$1) scope6.resolve(Reflection.getOrCreateKotlinClass(MailMessageModuleKt$mailMessageModule$1$3$1.class), null, null));
            case 13:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListStateMachine$Factory((Logger) scope7.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (Clock) scope7.resolve(Reflection.getOrCreateKotlinClass(Clock.class), null, null), (DefaultDebuggingSettingsPreferenceManager) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultDebuggingSettingsPreferenceManager.class), null, null));
            case 14:
                Scope scope8 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope8.getClass();
                parametersHolder2.getClass();
                return new MessageListViewModel((Logger) scope8.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (MessageListStateMachine$Factory) scope8.resolve(Reflection.getOrCreateKotlinClass(MessageListStateMachine$Factory.class), null, null), (List) scope8.resolve(Reflection.getOrCreateKotlinClass(List.class), parametersHolder2, new StringQualifier(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(List.class).getQualifiedName(), "<", Reflection.getOrCreateKotlinClass(MessageListStateSideEffectHandlerFactory.class).getQualifiedName(), ">"))), (StringsResourceManager) scope8.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null));
            case OffsetKt.Horizontal /* 15 */:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetAccountFolders((DefaultFolderRepository) scope9.resolve(Reflection.getOrCreateKotlinClass(DefaultFolderRepository.class), null, null));
            case 16:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLocalDeleteOperationDecider();
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLocalMessageUidPrefixProvider();
            case 18:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new MessageListScreenRenderer();
            case 19:
                Scope scope10 = (Scope) obj;
                return new CreateArchiveFolder((DefaultLegacyAccountManager) ViewSizeResolver.CC.m(scope10, (ParametersHolder) obj2, DefaultLegacyAccountManager.class, (Qualifier) null, (ParametersHolder) null), (K9BackendStorageFactory) scope10.resolve(Reflection.getOrCreateKotlinClass(K9BackendStorageFactory.class), null, null), (RemoteFolderCreator.Factory) scope10.resolve(Reflection.getOrCreateKotlinClass(RemoteFolderCreator.Factory.class), null, null), (DefaultSpecialFolderUpdater$Factory) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultSpecialFolderUpdater$Factory.class), null, null));
            case 20:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SetArchiveFolder((DefaultLegacyAccountManager) scope11.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null), (K9BackendStorageFactory) scope11.resolve(Reflection.getOrCreateKotlinClass(K9BackendStorageFactory.class), null, null), (DefaultSpecialFolderUpdater$Factory) scope11.resolve(Reflection.getOrCreateKotlinClass(DefaultSpecialFolderUpdater$Factory.class), null, null));
            case 21:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new BuildSwipeActions((GeneralSettingsManager) scope12.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null), (DefaultLegacyAccountManager) scope12.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null));
            case 22:
                Scope scope13 = (Scope) obj;
                ParametersHolder parametersHolder3 = (ParametersHolder) obj2;
                scope13.getClass();
                parametersHolder3.getClass();
                Object orNull = parametersHolder3.getOrNull(Reflection.getOrCreateKotlinClass(AccountId.class));
                if (orNull != null) {
                    return new SetupArchiveFolderDialogViewModel((AccountId) orNull, (Logger) scope13.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (GetAccountFolders) scope13.resolve(Reflection.getOrCreateKotlinClass(GetAccountFolders.class), null, null), (CreateArchiveFolder) scope13.resolve(Reflection.getOrCreateKotlinClass(CreateArchiveFolder.class), null, null), (SetArchiveFolder) scope13.resolve(Reflection.getOrCreateKotlinClass(SetArchiveFolder.class), null, null), (StringsResourceManager) scope13.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null), (GeneralSettingsManager) scope13.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null));
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(AccountId.class)) + '\'');
            case 23:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return SetupArchiveFolderDialogFragment.Factory;
            case 24:
                obj.getClass();
                ((Function1) obj2).getClass();
                if (obj instanceof MessageItemUi) {
                    return CameraDevices$CC.m("id: ", ((MessageItemUi) obj).id);
                }
                if (obj instanceof SwipeActions) {
                    SwipeActions swipeActions = (SwipeActions) obj;
                    str = swipeActions.leftAction.name();
                    str2 = swipeActions.rightAction.name();
                    str3 = "(l: ";
                    str4 = ", r: ";
                } else {
                    if (!(obj instanceof Folder)) {
                        return obj.toString();
                    }
                    Folder folder = (Folder) obj;
                    str = folder.id;
                    str2 = folder.name;
                    str3 = "(id: ";
                    str4 = ", name: ";
                }
                return ViewSizeResolver.CC.m(str3, str, str4, str2, ")");
            case 25:
                MessageListState messageListState = (MessageListState) obj;
                MessageListEvent.UpdatePreferences updatePreferences = (MessageListEvent.UpdatePreferences) obj2;
                messageListState.getClass();
                updatePreferences.getClass();
                return messageListState.withPreferences(new ForwardingFileSystem$$ExternalSyntheticLambda0(i3, updatePreferences));
            case 26:
                MessageListState messageListState2 = (MessageListState) obj;
                MessageListEvent.ChangeSortCriteria changeSortCriteria = (MessageListEvent.ChangeSortCriteria) obj2;
                messageListState2.getClass();
                changeSortCriteria.getClass();
                AccountId accountId = changeSortCriteria.accountId;
                SortCriteria sortCriteria = changeSortCriteria.sortCriteria;
                PersistentMap persistentMap = messageListState2.getMetadata().sortCriteriaPerAccount;
                if (persistentMap.isEmpty()) {
                    map = Collections.singletonMap(accountId, sortCriteria);
                    map.getClass();
                } else {
                    LinkedHashMap linkedHashMap = new LinkedHashMap(persistentMap);
                    linkedHashMap.put(accountId, sortCriteria);
                    map = linkedHashMap;
                }
                return messageListState2.withMetadata(new Result3AStateListenerKt$$ExternalSyntheticLambda0(i, map));
            case 27:
                MessageListState messageListState3 = (MessageListState) obj;
                MessageListEvent.SwipeActionsLoaded swipeActionsLoaded = (MessageListEvent.SwipeActionsLoaded) obj2;
                messageListState3.getClass();
                swipeActionsLoaded.getClass();
                return messageListState3.withMetadata(new Result3AStateListenerKt$$ExternalSyntheticLambda0(i2, swipeActionsLoaded.swipeActions));
            case 28:
                MessageListState messageListState4 = (MessageListState) obj;
                FolderEvent$FolderLoaded folderEvent$FolderLoaded = (FolderEvent$FolderLoaded) obj2;
                messageListState4.getClass();
                folderEvent$FolderLoaded.getClass();
                return messageListState4.withMetadata(new ForwardingFileSystem$$ExternalSyntheticLambda0(12, folderEvent$FolderLoaded.folder));
            default:
                MessageListState messageListState5 = (MessageListState) obj;
                messageListState5.getClass();
                ((MessageItemEvent$SelectAll) obj2).getClass();
                MessageListMetadata metadata = messageListState5.getMetadata();
                MessageListPreferences preferences = messageListState5.getPreferences();
                if (preferences == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    return null;
                }
                ImmutableList messages = messageListState5.getMessages();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(messages, 10));
                Iterator<E> it = messages.iterator();
                while (it.hasNext()) {
                    arrayList.add(MessageItemUi.copy$default((MessageItemUi) it.next(), null, null, true, false, 57343));
                }
                return new MessageListState.SelectingMessages(metadata, preferences, Okio.toImmutableList(arrayList));
        }
    }
}
