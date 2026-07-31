package net.thunderbird.feature.changelog.internal;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.SheetDefaultsKt$DragHandleWithTooltip$1$1$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.app.common.core.logging.LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1;
import net.thunderbird.core.common.state.builder.InternalStateBuilder;
import net.thunderbird.feature.account.core.AccountCoreModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.storage.legacy.LegacyAccountStorageHandler;
import net.thunderbird.feature.account.storage.legacy.LegacyAvatarDtoStorageHandler;
import net.thunderbird.feature.account.storage.legacy.LegacyProfileDtoStorageHandler;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultAccountProfileDataMapper;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultAvatarDataMapper;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;
import net.thunderbird.feature.funding.FeatureFundingModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalDeleteOperationDecider;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetAccountFolders;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetMessageListPreferences;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetSortCriteriaPerAccount;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenRenderer;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogFragment;
import net.thunderbird.feature.mail.message.list.internal.ui.state.machine.MessageListStateMachine$Factory;
import net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;
import net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.inject.MessageListSideEffectsModuleKt;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.event.FolderEvent$FolderLoaded;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$DeselectAll;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusEnter;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnFocusExit;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnMessageClick;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SelectAll;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SetMessageActive;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleSelectMessages;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListSearchEvent$EnterSearchMode;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListSearchEvent$ExitSearchMode;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListSearchEvent$SearchRemotely;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListSearchEvent$UpdateSearchQuery;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory;
import net.thunderbird.feature.mail.message.reader.api.css.CssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.api.css.GlobalCssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$ViewModel;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultCssVariableNameProvider;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultPlainTextMessagePreElementCssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultSignatureCssStyleProvider$Factory;
import net.thunderbird.feature.mail.message.reader.impl.html.DefaultMessageReaderHtmlSettingsProvider;
import net.thunderbird.feature.mail.message.reader.impl.inject.FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.navigation.drawer.dropdown.data.UnifiedFolderRepository;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayFoldersForAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDrawerConfig;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAllAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import net.thunderbird.feature.notification.api.ui.style.InAppNotificationStyle;
import net.thunderbird.feature.notification.api.ui.style.builder.InAppNotificationStyleBuilder;
import net.thunderbird.feature.notification.impl.inject.NotificationModuleKt$$ExternalSyntheticLambda1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.AsyncTimeout;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinModuleKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String id;
        int i = this.$r8$classId;
        int i2 = 29;
        int i3 = 15;
        int i4 = 11;
        int i5 = 10;
        int i6 = 14;
        int i7 = 13;
        int i8 = 12;
        int i9 = 9;
        int i10 = 5;
        int i11 = 4;
        int i12 = 8;
        int i13 = 3;
        int i14 = 0;
        int i15 = 2;
        int i16 = 1;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Module module = (Module) obj;
                module.getClass();
                FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda0 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(2);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ChangeLogManager.class);
                StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                Kind kind = Kind.Singleton;
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, featureFundingModuleKt$$ExternalSyntheticLambda0, kind)));
                FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda02 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(3);
                ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(ChangelogViewModel.class);
                Kind kind2 = Kind.Factory;
                module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass2, null, featureFundingModuleKt$$ExternalSyntheticLambda02, kind2)));
                module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(RecentChangesViewModel.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(4), kind2)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(DefaultChangelogNavigation.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i10), kind), module);
                return unit;
            case 1:
                String str = (String) obj;
                str.getClass();
                String upperCase = str.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                return upperCase;
            case 2:
                Module module2 = (Module) obj;
                module2.getClass();
                AccountCoreModuleKt$$ExternalSyntheticLambda0 accountCoreModuleKt$$ExternalSyntheticLambda0 = new AccountCoreModuleKt$$ExternalSyntheticLambda0(24);
                ClassReference orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(DefaultLegacyAccountDataMapper.class);
                StringQualifier stringQualifier2 = ScopeRegistry.rootScopeQualifier;
                Kind kind3 = Kind.Factory;
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, orCreateKotlinClass3, null, accountCoreModuleKt$$ExternalSyntheticLambda0, kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultAvatarDataMapper.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(25), kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(DefaultAccountProfileDataMapper.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(26), kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(ServerSettingsDtoSerializer.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(27), kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(LegacyAvatarDtoStorageHandler.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(28), kind3)));
                module2.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(LegacyProfileDtoStorageHandler.class), null, new AccountCoreModuleKt$$ExternalSyntheticLambda0(i2), kind3)));
                ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier2, Reflection.getOrCreateKotlinClass(LegacyAccountStorageHandler.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i16), Kind.Singleton), module2);
                return unit;
            case 3:
                ReleaseUiModel releaseUiModel = (ReleaseUiModel) obj;
                releaseUiModel.getClass();
                return releaseUiModel.version;
            case 4:
                Module module3 = (Module) obj;
                module3.getClass();
                CollectionsKt.addAll(module3.includedModules, new Module[]{MessageListSideEffectsModuleKt.messageListSideEffectsModule});
                FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda03 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i3);
                ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(GetAccountFolders.class);
                StringQualifier stringQualifier3 = ScopeRegistry.rootScopeQualifier;
                Kind kind4 = Kind.Factory;
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, orCreateKotlinClass4, null, featureFundingModuleKt$$ExternalSyntheticLambda03, kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(CreateArchiveFolder.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(19), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(SetArchiveFolder.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(20), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(BuildSwipeActions.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(21), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(SetupArchiveFolderDialogContract$ViewModel.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(22), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(SetupArchiveFolderDialogFragment.Factory.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(23), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(GetMessageListPreferences.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i4), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(GetSortCriteriaPerAccount.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i8), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(MessageListStateMachine$Factory.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i7), kind4)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i6), kind4)));
                FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda04 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(16);
                ClassReference orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(DefaultLocalDeleteOperationDecider.class);
                Kind kind5 = Kind.Singleton;
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier3, orCreateKotlinClass5, null, featureFundingModuleKt$$ExternalSyntheticLambda04, kind5)));
                module3.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(DefaultLocalMessageUidPrefixProvider.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(17), kind5)));
                module3.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier3, Reflection.getOrCreateKotlinClass(MessageListScreenRenderer.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(18), kind4)));
                return unit;
            case 5:
                MessageItemUi messageItemUi = (MessageItemUi) obj;
                messageItemUi.getClass();
                return messageItemUi.id;
            case 6:
                ((AnimatedContentTransitionScopeImpl) obj).getClass();
                return CrossfadeKt.togetherWith(EnterExitTransitionKt.slideInHorizontally$default(new Data$$ExternalSyntheticLambda0(25)), EnterExitTransitionKt.slideOutHorizontally$default(new KoinModuleKt$$ExternalSyntheticLambda0(i12)));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State = (SetupArchiveFolderDialogContract$State) obj;
                setupArchiveFolderDialogContract$State.getClass();
                return Reflection.getOrCreateKotlinClass(setupArchiveFolderDialogContract$State.getClass());
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 9:
                InternalStateBuilder internalStateBuilder = (InternalStateBuilder) obj;
                internalStateBuilder.getClass();
                FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda05 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(25);
                ClassReference classReference = internalStateBuilder.stateClass;
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.UpdatePreferences.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i14), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i5, featureFundingModuleKt$$ExternalSyntheticLambda05));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.ChangeSortCriteria.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(7), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i4, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(26)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.SwipeActionsLoaded.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i12), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i8, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(27)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(FolderEvent$FolderLoaded.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i16), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i11, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(28)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageItemEvent$SelectAll.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i15), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i10, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(i2)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageItemEvent$DeselectAll.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i13), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(6, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i16)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageItemEvent$OnFocusEnter.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(4), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(7, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(2)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageItemEvent$OnFocusExit.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i10), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i12, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(3)));
                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.UpdateFooter.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(6), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(9, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(4)));
                return unit;
            case 10:
                MessageListMetadata messageListMetadata = (MessageListMetadata) obj;
                messageListMetadata.getClass();
                return MessageListMetadata.copy$default(messageListMetadata, null, null, null, null, null, null, false, 2015);
            case 11:
                InternalStateBuilder internalStateBuilder2 = (InternalStateBuilder) obj;
                internalStateBuilder2.getClass();
                FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1 featureMessageReaderModuleKt$$ExternalSyntheticLambda1 = new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i10);
                ClassReference classReference2 = internalStateBuilder2.stateClass;
                internalStateBuilder2.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageItemEvent$ToggleSelectMessages.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i4), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i3, featureMessageReaderModuleKt$$ExternalSyntheticLambda1));
                internalStateBuilder2.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListEvent.EnterSelectionMode.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i8), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i7, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(6)));
                internalStateBuilder2.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListSearchEvent$EnterSearchMode.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i6), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i3, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(7)));
                internalStateBuilder2.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageItemEvent$SetMessageActive.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i9), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i7, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i12)));
                internalStateBuilder2.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageItemEvent$OnMessageClick.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(i5), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i6, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i9)));
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                InternalStateBuilder internalStateBuilder3 = (InternalStateBuilder) obj;
                internalStateBuilder3.getClass();
                FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1 featureMessageReaderModuleKt$$ExternalSyntheticLambda12 = new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i8);
                ClassReference classReference3 = internalStateBuilder3.stateClass;
                internalStateBuilder3.transition(classReference3, Reflection.getOrCreateKotlinClass(MessageListSearchEvent$UpdateSearchQuery.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(17), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(18, featureMessageReaderModuleKt$$ExternalSyntheticLambda12));
                internalStateBuilder3.transition(classReference3, Reflection.getOrCreateKotlinClass(MessageListSearchEvent$SearchRemotely.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(19), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(20, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i7)));
                internalStateBuilder3.transition(classReference3, Reflection.getOrCreateKotlinClass(MessageListSearchEvent$ExitSearchMode.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(21), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(22, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i6)));
                return unit;
            case 13:
                Module module4 = (Module) obj;
                module4.getClass();
                module4.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(List.class), new StringQualifier(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(List.class).getQualifiedName(), "<", Reflection.getOrCreateKotlinClass(MessageListStateSideEffectHandlerFactory.class).getQualifiedName(), ">")), new LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1(new Function2[]{new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(20), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(21), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(22), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(23), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(24), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(25), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(26), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(27), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(28), new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(19)}, i16), Kind.Factory)));
                return unit;
            case 14:
                Module module5 = (Module) obj;
                module5.getClass();
                FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1 featureMessageReaderModuleKt$$ExternalSyntheticLambda13 = new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i14);
                ClassReference orCreateKotlinClass6 = Reflection.getOrCreateKotlinClass(DefaultMessageReaderHtmlSettingsProvider.class);
                StringQualifier stringQualifier4 = ScopeRegistry.rootScopeQualifier;
                Kind kind6 = Kind.Factory;
                module5.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier4, orCreateKotlinClass6, null, featureMessageReaderModuleKt$$ExternalSyntheticLambda13, kind6)));
                module5.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(DefaultCssVariableNameProvider.class), null, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i2), Kind.Singleton)));
                module5.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(GlobalCssStyleProvider$Factory.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i16), kind6)));
                module5.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(DefaultSignatureCssStyleProvider$Factory.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i15), kind6)));
                module5.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(DefaultPlainTextMessagePreElementCssStyleProvider$Factory.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i13), kind6)));
                module5.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(List.class), new StringQualifier(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(List.class).getQualifiedName(), "<", Reflection.getOrCreateKotlinClass(CssStyleProvider$Factory.class).getQualifiedName(), ">")), new LoggerModuleKt$appCommonCoreLogger$lambda$0$$inlined$singleListOf$default$1(new Function2[]{new NotificationModuleKt$$ExternalSyntheticLambda1(i11), new NotificationModuleKt$$ExternalSyntheticLambda1(i10), new NotificationModuleKt$$ExternalSyntheticLambda1(6)}, i15), kind6)));
                module5.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier4, Reflection.getOrCreateKotlinClass(MessageReaderViewContract$ViewModel.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(7), kind6)));
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                Module module6 = (Module) obj;
                module6.getClass();
                NotificationModuleKt$$ExternalSyntheticLambda1 notificationModuleKt$$ExternalSyntheticLambda1 = new NotificationModuleKt$$ExternalSyntheticLambda1(i12);
                ClassReference orCreateKotlinClass7 = Reflection.getOrCreateKotlinClass(UnifiedFolderRepository.class);
                StringQualifier stringQualifier5 = ScopeRegistry.rootScopeQualifier;
                Kind kind7 = Kind.Singleton;
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, orCreateKotlinClass7, null, notificationModuleKt$$ExternalSyntheticLambda1, kind7)));
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(GetDrawerConfig.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i9), kind7)));
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(AsyncTimeout.Companion.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i5), kind7)));
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(GetDisplayAccounts.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i4), kind7)));
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(GetDisplayFoldersForAccount.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i8), kind7)));
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(GetDisplayTreeFolder.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i7), kind7)));
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(SyncAccount.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i6), kind7)));
                module6.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(SyncAllAccounts.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(i3), kind7)));
                module6.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier5, Reflection.getOrCreateKotlinClass(DrawerViewModel.class), null, new NotificationModuleKt$$ExternalSyntheticLambda1(16), Kind.Factory)));
                return unit;
            case 16:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 17:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 18:
                ((Integer) obj).getClass();
                return 0;
            case 19:
                DisplayAccount displayAccount = (DisplayAccount) obj;
                displayAccount.getClass();
                return displayAccount.getId();
            case 20:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 21:
                DisplayAccount displayAccount2 = (DisplayAccount) obj;
                displayAccount2.getClass();
                return displayAccount2.getId();
            case 22:
                DisplayTreeFolder displayTreeFolder = (DisplayTreeFolder) obj;
                displayTreeFolder.getClass();
                DisplayFolder displayFolder = displayTreeFolder.displayFolder;
                if (displayFolder == null || (id = displayFolder.getId()) == null) {
                    return '0';
                }
                return id;
            case 23:
                InAppNotificationStyleBuilder inAppNotificationStyleBuilder = (InAppNotificationStyleBuilder) obj;
                inAppNotificationStyleBuilder.getClass();
                if (Intrinsics.areEqual(inAppNotificationStyleBuilder.style, InAppNotificationStyle.Undefined.INSTANCE)) {
                    inAppNotificationStyleBuilder.style = InAppNotificationStyle.BannerInlineNotification.INSTANCE;
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver.CC.m("An in-app notification can only have one type of style. Current style is ", Reflection.getOrCreateKotlinClass(inAppNotificationStyleBuilder.style.getClass()).getSimpleName(), ", trying to set ", Reflection.getOrCreateKotlinClass(InAppNotificationStyle.BannerInlineNotification.class).getSimpleName(), "."));
                return null;
            case 24:
                InAppNotificationStyleBuilder inAppNotificationStyleBuilder2 = (InAppNotificationStyleBuilder) obj;
                inAppNotificationStyleBuilder2.getClass();
                if (Intrinsics.areEqual(inAppNotificationStyleBuilder2.style, InAppNotificationStyle.Undefined.INSTANCE)) {
                    inAppNotificationStyleBuilder2.style = new InAppNotificationStyle.BannerGlobalNotification();
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver.CC.m("An in-app notification can only have one type of style. Current style is ", Reflection.getOrCreateKotlinClass(inAppNotificationStyleBuilder2.style.getClass()).getSimpleName(), ", trying to set ", Reflection.getOrCreateKotlinClass(InAppNotificationStyle.BannerGlobalNotification.class).getSimpleName(), "."));
                return null;
            case 25:
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj;
                animatedContentTransitionScopeImpl.getClass();
                return Hex.bannerSlideInSlideOutAnimationSpec(animatedContentTransitionScopeImpl);
            case 26:
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl2 = (AnimatedContentTransitionScopeImpl) obj;
                animatedContentTransitionScopeImpl2.getClass();
                return Hex.bannerSlideInSlideOutAnimationSpec(animatedContentTransitionScopeImpl2);
            case 27:
                ImmutableSet immutableSet = (ImmutableSet) obj;
                immutableSet.getClass();
                return Boolean.valueOf(immutableSet.isEmpty());
            case 28:
                ((NotificationAction) obj).getClass();
                return unit;
            default:
                List list = (List) obj;
                list.getClass();
                return new BannerInlineListScrollState(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue(), ((Number) list.get(2)).floatValue(), ((Number) list.get(3)).floatValue());
        }
    }
}
