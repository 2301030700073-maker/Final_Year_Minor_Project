package net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect;

import androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1$1;
import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.fsck.k9.helper.SingleLiveEvent;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager$generalSettings$2;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager$generalSettings$8;
import com.fsck.k9.ui.messagelist.MessageListConfig;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.core.common.state.sideeffect.StateSideEffectHandler$ConsumeResult$Consumed;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.UnifiedAccountIdKt;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetMessageListPreferences;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.Folder;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoadPreferencesSideEffect extends MessageListStateSideEffectHandler {
    public final /* synthetic */ int $r8$classId;
    public final Object getMessageListPreferences;
    public final Logger logger;
    public StandaloneCoroutine runningFlow;
    public final CloseableCoroutineScope scope;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Factory implements MessageListStateSideEffectHandlerFactory {
        public final /* synthetic */ int $r8$classId;
        public final Object getMessageListPreferences;
        public final Logger logger;

        public /* synthetic */ Factory(Logger logger, Object obj, int i) {
            this.$r8$classId = i;
            this.logger = logger;
            this.getMessageListPreferences = obj;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory
        public final MessageListStateSideEffectHandler create(CloseableCoroutineScope closeableCoroutineScope, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$12) {
            int i = this.$r8$classId;
            Logger logger = this.logger;
            Object obj = this.getMessageListPreferences;
            switch (i) {
                case 0:
                    return new LoadPreferencesSideEffect(closeableCoroutineScope, composableLambdaImpl$invoke$1, this.logger, (GetMessageListPreferences) obj, 0);
                case 1:
                    return new ChangeSortCriteriaSideEffect(composableLambdaImpl$invoke$1, logger, (LegacyUpdateSortCriteria) obj);
                case 2:
                    return new LoadPreferencesSideEffect(closeableCoroutineScope, composableLambdaImpl$invoke$1, this.logger, (BuildSwipeActions) obj, 1);
                default:
                    return new LoadPreferencesSideEffect(closeableCoroutineScope, logger, (MessageListFragment) obj, composableLambdaImpl$invoke$1);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadPreferencesSideEffect(CloseableCoroutineScope closeableCoroutineScope, Logger logger, MessageListFragment messageListFragment, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1) {
        super(logger, composableLambdaImpl$invoke$1);
        this.$r8$classId = 2;
        this.scope = closeableCoroutineScope;
        this.logger = logger;
        this.getMessageListPreferences = messageListFragment;
    }

    @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler
    public final boolean accept(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        MessageListEvent.LoadConfigurations loadConfigurations = MessageListEvent.LoadConfigurations.INSTANCE;
        switch (i) {
            case 0:
                MessageListEvent messageListEvent = (MessageListEvent) obj;
                messageListEvent.getClass();
                ((MessageListState) obj2).getClass();
                ((MessageListState) obj3).getClass();
                return messageListEvent.equals(loadConfigurations);
            case 1:
                MessageListEvent messageListEvent2 = (MessageListEvent) obj;
                messageListEvent2.getClass();
                ((MessageListState) obj2).getClass();
                ((MessageListState) obj3).getClass();
                return messageListEvent2.equals(loadConfigurations);
            default:
                MessageListState messageListState = (MessageListState) obj2;
                MessageListState messageListState2 = (MessageListState) obj3;
                ((MessageListEvent) obj).getClass();
                messageListState.getClass();
                messageListState2.getClass();
                return !messageListState.equals(messageListState2) && (messageListState2 instanceof MessageListState.LoadingMessages);
        }
    }

    @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler
    public final Object consume(Object obj, Object obj2, Object obj3, MutatorMutex$mutate$2 mutatorMutex$mutate$2) {
        AccountId accountId;
        int i = this.$r8$classId;
        Logger logger = this.logger;
        StateSideEffectHandler$ConsumeResult$Consumed stateSideEffectHandler$ConsumeResult$Consumed = StateSideEffectHandler$ConsumeResult$Consumed.INSTANCE;
        CloseableCoroutineScope closeableCoroutineScope = this.scope;
        Object obj4 = this.getMessageListPreferences;
        Continuation continuation = null;
        switch (i) {
            case 0:
                Sink$CC.verbose$default(logger, "LoadPreferencesSideEffect", null, new LoadPreferencesSideEffect$$ExternalSyntheticLambda0((MessageListState) obj2, (MessageListState) obj3, 0), 2);
                StandaloneCoroutine standaloneCoroutine = this.runningFlow;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                GetMessageListPreferences getMessageListPreferences = (GetMessageListPreferences) obj4;
                this.runningFlow = FlowKt.launchIn(new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(getMessageListPreferences.displayPreferenceManager.configState, getMessageListPreferences.interactionPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$8(getMessageListPreferences, null, 2), 0), new OutboxFolderManager$getOutboxFolderIdSync$1(this, continuation, 8), 2), new ComposePredictiveBackHandler$launchNewGesture$1$1(this, null, 2), 1), closeableCoroutineScope);
                break;
            case 1:
                Sink$CC.verbose$default(logger, "LoadSwipeActionsSideEffectHandler", null, new LoadPreferencesSideEffect$$ExternalSyntheticLambda0((MessageListState) obj2, (MessageListState) obj3, 4), 2);
                StandaloneCoroutine standaloneCoroutine2 = this.runningFlow;
                if (standaloneCoroutine2 != null) {
                    standaloneCoroutine2.cancel(null);
                }
                this.runningFlow = FlowKt.launchIn(new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(((BuildSwipeActions) obj4).swipeActions, new OutboxFolderManager$getOutboxFolderIdSync$1(this, continuation, 9), 2), new ComposePredictiveBackHandler$launchNewGesture$1$1(this, null, 3), 1), closeableCoroutineScope);
                break;
            default:
                MessageListState messageListState = (MessageListState) obj3;
                if (!(messageListState instanceof MessageListState.LoadingMessages)) {
                    break;
                } else {
                    StandaloneCoroutine standaloneCoroutine3 = this.runningFlow;
                    if (standaloneCoroutine3 != null) {
                        standaloneCoroutine3.cancel(null);
                    }
                    MessageListFragment messageListFragment = (MessageListFragment) obj4;
                    MessageListState.LoadingMessages loadingMessages = (MessageListState.LoadingMessages) messageListState;
                    MessageListPreferences messageListPreferences = loadingMessages.preferences;
                    MessageListMetadata messageListMetadata = loadingMessages.metadata;
                    messageListFragment.getClass();
                    messageListPreferences.getClass();
                    PersistentMap persistentMap = messageListMetadata.sortCriteriaPerAccount;
                    Folder folder = messageListMetadata.folder;
                    if (folder == null || (accountId = folder.account.id) == null || accountId.equals(UnifiedAccountIdKt.UnifiedAccountId)) {
                        accountId = null;
                    }
                    Pair domainSortType = AtomicFU.toDomainSortType(((SortCriteria) MapsKt__MapsKt.getValue(persistentMap, accountId)).primary);
                    messageListFragment.getLegacyViewModel().loadMessageList(new MessageListConfig(messageListFragment.getLocalSearch(), messageListFragment.showingThreadedList, (SortType) domainSortType.first, ((Boolean) domainSortType.second).booleanValue(), messageListFragment.sortDateAscending, messageListFragment.activeMessage, MapsKt__MapsKt.toMap(messageListFragment.getLegacyViewModel().messageSortOverrides)), false);
                    SingleLiveEvent singleLiveEvent = messageListFragment.getLegacyViewModel().messageListLiveData;
                    singleLiveEvent.getClass();
                    this.runningFlow = FlowKt.launchIn(new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(FlowKt.buffer$default(FlowKt.callbackFlow(new BlockRunner$maybeRun$1(singleLiveEvent, (Continuation) null, 12)), -1), messageListFragment, messageListPreferences, 1), new OutboxFolderManager$getOutboxFolderIdSync$1(this, continuation, 10), 2), new ComposePredictiveBackHandler$launchNewGesture$1$1(this, null, 4), 1), new DefaultGeneralSettingsManager$generalSettings$2(this, (Continuation) null, 13), 0), closeableCoroutineScope);
                    break;
                }
                break;
        }
        return stateSideEffectHandler$ConsumeResult$Consumed;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LoadPreferencesSideEffect(CloseableCoroutineScope closeableCoroutineScope, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Logger logger, Object obj, int i) {
        super(logger, composableLambdaImpl$invoke$1);
        this.$r8$classId = i;
        this.scope = closeableCoroutineScope;
        this.logger = logger;
        this.getMessageListPreferences = obj;
    }
}
