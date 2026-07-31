package net.thunderbird.feature.mail.folder.api;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.Config;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager$createOutboxFolder$2;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.AccountIdFactory;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateSearchSettings;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.SetArchiveFolder;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;
import net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadPreferencesSideEffect;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.ScrollEvent$ScrollToMessage;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAccount$invoke$1$listener$1;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAllAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel;
import okhttp3.Handshake;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutboxFolderManager$getOutboxFolderIdSync$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $accountId;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OutboxFolderManager$getOutboxFolderIdSync$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$accountId = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$accountId;
        switch (i) {
            case 0:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((DefaultOutboxFolderManager) this.this$0, (AccountId) obj2, continuation, 0);
            case 1:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((SearchSettingsViewModel) this.this$0, continuation, (Function0) obj2, 1);
            case 2:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((SearchSettingsViewModel) this.this$0, (SearchSettingsContract$Event) obj2, continuation, 2);
            case 3:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((DefaultOutboxFolderManager) this.this$0, (String) obj2, continuation, 3);
            case 4:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((SetArchiveFolder) this.this$0, (AccountId) obj2, continuation, 4);
            case 5:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((LazyListState) this.this$0, (MutableState) obj2, continuation, 5);
            case 6:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((SetupArchiveFolderDialogContract$ViewModel) this.this$0, continuation, (Function0) obj2, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                OutboxFolderManager$getOutboxFolderIdSync$1 outboxFolderManager$getOutboxFolderIdSync$1 = new OutboxFolderManager$getOutboxFolderIdSync$1((SetupArchiveFolderDialogViewModel) obj2, continuation, 7);
                outboxFolderManager$getOutboxFolderIdSync$1.this$0 = obj;
                return outboxFolderManager$getOutboxFolderIdSync$1;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                OutboxFolderManager$getOutboxFolderIdSync$1 outboxFolderManager$getOutboxFolderIdSync$12 = new OutboxFolderManager$getOutboxFolderIdSync$1((LoadPreferencesSideEffect) obj2, continuation, 8);
                outboxFolderManager$getOutboxFolderIdSync$12.this$0 = obj;
                return outboxFolderManager$getOutboxFolderIdSync$12;
            case 9:
                OutboxFolderManager$getOutboxFolderIdSync$1 outboxFolderManager$getOutboxFolderIdSync$13 = new OutboxFolderManager$getOutboxFolderIdSync$1((LoadPreferencesSideEffect) obj2, continuation, 9);
                outboxFolderManager$getOutboxFolderIdSync$13.this$0 = obj;
                return outboxFolderManager$getOutboxFolderIdSync$13;
            case 10:
                OutboxFolderManager$getOutboxFolderIdSync$1 outboxFolderManager$getOutboxFolderIdSync$14 = new OutboxFolderManager$getOutboxFolderIdSync$1((LoadPreferencesSideEffect) obj2, continuation, 10);
                outboxFolderManager$getOutboxFolderIdSync$14.this$0 = obj;
                return outboxFolderManager$getOutboxFolderIdSync$14;
            case 11:
                OutboxFolderManager$getOutboxFolderIdSync$1 outboxFolderManager$getOutboxFolderIdSync$15 = new OutboxFolderManager$getOutboxFolderIdSync$1((SyncAllAccounts) obj2, continuation, 11);
                outboxFolderManager$getOutboxFolderIdSync$15.this$0 = obj;
                return outboxFolderManager$getOutboxFolderIdSync$15;
            default:
                return new OutboxFolderManager$getOutboxFolderIdSync$1((DrawerViewModel) this.this$0, (String) obj2, continuation, 12);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 2:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((Outcome) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((MessageListPreferences) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((Map) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((List) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((OutboxFolderManager$getOutboxFolderIdSync$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object invoke;
        Object value;
        Object value2;
        Object value3;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$accountId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = 1;
        Object obj3 = null;
        Object[] objArr = 0;
        switch (i) {
            case 0:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    Object outboxFolderId = ((DefaultOutboxFolderManager) this.this$0).getOutboxFolderId((AccountId) obj2, this);
                    return outboxFolderId == coroutineSingletons ? coroutineSingletons : outboxFolderId;
                }
                if (i3 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 1:
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        throw Config.CC.m92m(obj);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow readonlySharedFlow = ((SearchSettingsViewModel) this.this$0).effect;
                TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1 textFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1 = new TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1(3, (Function0) obj2);
                this.label = 1;
                readonlySharedFlow.collect(textFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1, this);
                return coroutineSingletons;
            case 2:
                SearchSettingsContract$Event searchSettingsContract$Event = (SearchSettingsContract$Event) obj2;
                SearchSettingsViewModel searchSettingsViewModel = (SearchSettingsViewModel) this.this$0;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateSearchSettings updateSearchSettings = searchSettingsViewModel.updateSearchSettings;
                    AccountId accountId = searchSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit accountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit = new AccountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit(((SearchSettingsContract$Event.OnServerSearchLimitChange) searchSettingsContract$Event).serverSearchLimit);
                    this.label = 1;
                    invoke = updateSearchSettings.invoke(accountId, accountSettingsDomainContract$UpdateSearchSettingsCommand$UpdateServerSearchLimit, this);
                    if (invoke == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i5 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    invoke = obj;
                }
                Outcome outcome = (Outcome) invoke;
                outcome.getClass();
                if (!(outcome instanceof Outcome.Success)) {
                    if (outcome instanceof Outcome.Failure) {
                        SearchSettingsViewModel.access$handleError(searchSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome).error);
                        return unit;
                    }
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                SettingValue.Select.SelectOption access$selectOptionForServerSearchLimit = SearchSettingsViewModel.access$selectOptionForServerSearchLimit(searchSettingsViewModel, ((SearchSettingsContract$Event.OnServerSearchLimitChange) searchSettingsContract$Event).serverSearchLimit);
                StateFlowImpl stateFlowImpl = searchSettingsViewModel._state;
                do {
                    value = stateFlowImpl.getValue();
                } while (!stateFlowImpl.compareAndSet(value, SearchSettingsContract$State.copy$default((SearchSettingsContract$State) value, null, access$selectOptionForServerSearchLimit, 1)));
                return unit;
            case 3:
                int i6 = this.label;
                if (i6 != 0) {
                    if (i6 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                DefaultOutboxFolderManager defaultOutboxFolderManager = (DefaultOutboxFolderManager) this.this$0;
                AccountId of = AccountIdFactory.INSTANCE.of((String) obj2);
                this.label = 1;
                Object withContext = JobKt.withContext(defaultOutboxFolderManager.ioDispatcher, new DefaultOutboxFolderManager$createOutboxFolder$2(defaultOutboxFolderManager, of, objArr == true ? 1 : 0, i2), this);
                return withContext == coroutineSingletons ? coroutineSingletons : withContext;
            case 4:
                int i7 = this.label;
                if (i7 != 0) {
                    if (i7 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                DefaultLegacyAccountManager$getAll$$inlined$map$1 byId = ((SetArchiveFolder) this.this$0).accountManager.getById((AccountId) obj2);
                this.label = 1;
                Object firstOrNull = FlowKt.firstOrNull(byId, this);
                return firstOrNull == coroutineSingletons ? coroutineSingletons : firstOrNull;
            case 5:
                MutableState mutableState = (MutableState) obj2;
                int i8 = this.label;
                if (i8 != 0) {
                    if (i8 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Iterator<E> it = ((ImmutableList) mutableState.getValue()).iterator();
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        if (((MessageItemUi) next).active) {
                            obj3 = next;
                        }
                    }
                }
                MessageItemUi messageItemUi = (MessageItemUi) obj3;
                if (messageItemUi == null) {
                    return unit;
                }
                LazyListState lazyListState = (LazyListState) this.this$0;
                ImmutableList immutableList = (ImmutableList) mutableState.getValue();
                ScrollEvent$ScrollToMessage scrollEvent$ScrollToMessage = new ScrollEvent$ScrollToMessage(messageItemUi, false);
                this.label = 1;
                return Handshake.Companion.access$scrollToMessage(lazyListState, immutableList, scrollEvent$ScrollToMessage, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 6:
                int i9 = this.label;
                if (i9 != 0) {
                    if (i9 == 1) {
                        throw Config.CC.m92m(obj);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ReadonlySharedFlow readonlySharedFlow2 = ((SetupArchiveFolderDialogContract$ViewModel) this.this$0).effect;
                TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1 textFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$12 = new TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1(4, (Function0) obj2);
                this.label = 1;
                readonlySharedFlow2.collect(textFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$12, this);
                return coroutineSingletons;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Outcome outcome2 = (Outcome) this.this$0;
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                SetupArchiveFolderDialogViewModel setupArchiveFolderDialogViewModel = (SetupArchiveFolderDialogViewModel) obj2;
                MessageViewFragment$onCreate$1 messageViewFragment$onCreate$1 = new MessageViewFragment$onCreate$1(2, setupArchiveFolderDialogViewModel, SetupArchiveFolderDialogViewModel.class, "onCreateArchiveFolderSuccess", "onCreateArchiveFolderSuccess(Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0, 16);
                ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1 = new ComposableLambdaImpl$invoke$1(2, setupArchiveFolderDialogViewModel, SetupArchiveFolderDialogViewModel.class, "onCreateArchiveFolderError", "onCreateArchiveFolderError(Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error;)V", 4, 5);
                this.this$0 = null;
                this.label = 1;
                return Hex.handleAsync(outcome2, messageViewFragment$onCreate$1, composableLambdaImpl$invoke$1, this) == coroutineSingletons ? coroutineSingletons : unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                MessageListPreferences messageListPreferences = (MessageListPreferences) this.this$0;
                int i11 = this.label;
                if (i11 != 0) {
                    if (i11 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Function2 function2 = ((LoadPreferencesSideEffect) obj2).dispatch;
                MessageListEvent.UpdatePreferences updatePreferences = new MessageListEvent.UpdatePreferences(messageListPreferences);
                this.this$0 = null;
                this.label = 1;
                return function2.invoke(updatePreferences, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 9:
                Map map = (Map) this.this$0;
                int i12 = this.label;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Function2 function22 = ((LoadPreferencesSideEffect) obj2).dispatch;
                MessageListEvent.SwipeActionsLoaded swipeActionsLoaded = new MessageListEvent.SwipeActionsLoaded(map);
                this.this$0 = null;
                this.label = 1;
                return function22.invoke(swipeActionsLoaded, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 10:
                LoadPreferencesSideEffect loadPreferencesSideEffect = (LoadPreferencesSideEffect) obj2;
                List list = (List) this.this$0;
                int i13 = this.label;
                if (i13 != 0) {
                    if (i13 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Sink$CC.verbose$default(loadPreferencesSideEffect.logger, "LoadMessagesLegacySideEffect", null, new Handshake$Companion$$ExternalSyntheticLambda0(6, list), 2);
                float f = list.isEmpty() ? 0.0f : 1.0f;
                Function2 function23 = loadPreferencesSideEffect.dispatch;
                MessageListEvent.UpdateLoadingProgress updateLoadingProgress = new MessageListEvent.UpdateLoadingProgress(f, list);
                this.this$0 = null;
                this.label = 1;
                return function23.invoke(updateLoadingProgress, this) == coroutineSingletons ? coroutineSingletons : unit;
            case 11:
                ProducerScope producerScope = (ProducerScope) this.this$0;
                int i14 = this.label;
                if (i14 != 0) {
                    if (i14 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ((MessagingController) ((SyncAllAccounts) obj2).messagingController).checkMail(null, true, true, true, new SyncAccount$invoke$1$listener$1(producerScope, 1));
                this.this$0 = null;
                this.label = 1;
                return RangesKt.awaitClose(producerScope, new ImmLeaksCleaner$$ExternalSyntheticLambda0(2), this) == coroutineSingletons ? coroutineSingletons : unit;
            default:
                StateFlowImpl stateFlowImpl2 = ((DrawerViewModel) this.this$0)._state;
                int i15 = this.label;
                if (i15 == 0) {
                    ResultKt.throwOnFailure(obj);
                    String str = (String) obj2;
                    do {
                        value2 = stateFlowImpl2.getValue();
                    } while (!stateFlowImpl2.compareAndSet(value2, DrawerContract$State.copy$default((DrawerContract$State) value2, null, false, null, str, null, null, null, null, false, false, 1015)));
                    this.label = 1;
                    if (JobKt.delay(150L, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i15 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                do {
                    value3 = stateFlowImpl2.getValue();
                } while (!stateFlowImpl2.compareAndSet(value3, DrawerContract$State.copy$default((DrawerContract$State) value3, null, false, null, null, null, null, null, null, false, false, 767)));
                return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OutboxFolderManager$getOutboxFolderIdSync$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$accountId = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OutboxFolderManager$getOutboxFolderIdSync$1(BaseViewModel baseViewModel, Continuation continuation, Function0 function0, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = baseViewModel;
        this.$accountId = function0;
    }
}
