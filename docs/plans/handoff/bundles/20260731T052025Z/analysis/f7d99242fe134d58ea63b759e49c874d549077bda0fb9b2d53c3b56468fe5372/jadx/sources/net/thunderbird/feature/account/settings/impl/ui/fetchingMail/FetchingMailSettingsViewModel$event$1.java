package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateFetchingMailSettings;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$Event;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FetchingMailSettingsViewModel$event$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ FetchingMailSettingsContract$Event $event;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ FetchingMailSettingsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FetchingMailSettingsViewModel$event$1(FetchingMailSettingsViewModel fetchingMailSettingsViewModel, FetchingMailSettingsContract$Event fetchingMailSettingsContract$Event, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = fetchingMailSettingsViewModel;
        this.$event = fetchingMailSettingsContract$Event;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        FetchingMailSettingsContract$Event fetchingMailSettingsContract$Event = this.$event;
        FetchingMailSettingsViewModel fetchingMailSettingsViewModel = this.this$0;
        switch (i) {
            case 0:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 0);
            case 1:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 1);
            case 2:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 2);
            case 3:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 3);
            case 4:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 4);
            case 5:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 5);
            case 6:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 8);
            default:
                return new FetchingMailSettingsViewModel$event$1(fetchingMailSettingsViewModel, fetchingMailSettingsContract$Event, continuation, 9);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((FetchingMailSettingsViewModel$event$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object invoke;
        Object value;
        Object invoke2;
        Object value2;
        Object invoke3;
        Object value3;
        Object invoke4;
        Object value4;
        Object invoke5;
        Object value5;
        Object invoke6;
        Object value6;
        Object invoke7;
        Object value7;
        Object invoke8;
        Object value8;
        Object invoke9;
        Object value9;
        Object invoke10;
        Object value10;
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        FetchingMailSettingsViewModel fetchingMailSettingsViewModel = this.this$0;
        FetchingMailSettingsContract$Event fetchingMailSettingsContract$Event = this.$event;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateLocalFolderSize updateLocalFolderSize = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateLocalFolderSize(Integer.parseInt(((FetchingMailSettingsContract$Event.OnLocalFolderSizeChange) fetchingMailSettingsContract$Event).localFolderSize.id));
                    this.label = 1;
                    invoke = updateFetchingMailSettings.invoke(accountId, updateLocalFolderSize, this);
                    if (invoke == coroutineSingletons) {
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke = obj;
                }
                Outcome outcome = (Outcome) invoke;
                outcome.getClass();
                if (outcome instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl = fetchingMailSettingsViewModel._state;
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value, null, ((FetchingMailSettingsContract$Event.OnLocalFolderSizeChange) fetchingMailSettingsContract$Event).localFolderSize, null, null, null, false, false, null, null, null, null, 2045)));
                } else if (outcome instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case 1:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings2 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId2 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateIdleRefreshMinutes updateIdleRefreshMinutes = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateIdleRefreshMinutes(Integer.parseInt(((FetchingMailSettingsContract$Event.OnRefreshIdleConnectionFrequencyChange) fetchingMailSettingsContract$Event).refreshIdleConnectionFrequency.id));
                    this.label = 1;
                    invoke2 = updateFetchingMailSettings2.invoke(accountId2, updateIdleRefreshMinutes, this);
                    if (invoke2 == coroutineSingletons) {
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke2 = obj;
                }
                Outcome outcome2 = (Outcome) invoke2;
                outcome2.getClass();
                if (outcome2 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl2 = fetchingMailSettingsViewModel._state;
                    do {
                        value2 = stateFlowImpl2.getValue();
                    } while (!stateFlowImpl2.compareAndSet(value2, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value2, null, null, null, null, null, false, false, null, null, null, ((FetchingMailSettingsContract$Event.OnRefreshIdleConnectionFrequencyChange) fetchingMailSettingsContract$Event).refreshIdleConnectionFrequency, 1023)));
                } else if (outcome2 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome2).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case 2:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings3 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId3 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateSyncMessageFrom updateSyncMessageFrom = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateSyncMessageFrom(Integer.parseInt(((FetchingMailSettingsContract$Event.OnSyncMessageFromChange) fetchingMailSettingsContract$Event).syncMessageFrom.id));
                    this.label = 1;
                    invoke3 = updateFetchingMailSettings3.invoke(accountId3, updateSyncMessageFrom, this);
                    if (invoke3 == coroutineSingletons) {
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke3 = obj;
                }
                Outcome outcome3 = (Outcome) invoke3;
                outcome3.getClass();
                if (outcome3 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl3 = fetchingMailSettingsViewModel._state;
                    do {
                        value3 = stateFlowImpl3.getValue();
                    } while (!stateFlowImpl3.compareAndSet(value3, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value3, null, null, ((FetchingMailSettingsContract$Event.OnSyncMessageFromChange) fetchingMailSettingsContract$Event).syncMessageFrom, null, null, false, false, null, null, null, null, 2043)));
                } else if (outcome3 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome3).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case 3:
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings4 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId4 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateFetchMessageUpTo updateFetchMessageUpTo = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateFetchMessageUpTo(Integer.parseInt(((FetchingMailSettingsContract$Event.OnFetchMessageUpToChange) fetchingMailSettingsContract$Event).fetchMessageUpTo.id));
                    this.label = 1;
                    invoke4 = updateFetchingMailSettings4.invoke(accountId4, updateFetchMessageUpTo, this);
                    if (invoke4 == coroutineSingletons) {
                    }
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke4 = obj;
                }
                Outcome outcome4 = (Outcome) invoke4;
                outcome4.getClass();
                if (outcome4 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl4 = fetchingMailSettingsViewModel._state;
                    do {
                        value4 = stateFlowImpl4.getValue();
                    } while (!stateFlowImpl4.compareAndSet(value4, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value4, null, null, null, ((FetchingMailSettingsContract$Event.OnFetchMessageUpToChange) fetchingMailSettingsContract$Event).fetchMessageUpTo, null, false, false, null, null, null, null, 2039)));
                } else if (outcome4 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome4).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case 4:
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings5 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId5 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateFolderPollFrequency updateFolderPollFrequency = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateFolderPollFrequency(Integer.parseInt(((FetchingMailSettingsContract$Event.OnFolderPollFrequencyChange) fetchingMailSettingsContract$Event).folderPollFrequency.id));
                    this.label = 1;
                    invoke5 = updateFetchingMailSettings5.invoke(accountId5, updateFolderPollFrequency, this);
                    if (invoke5 == coroutineSingletons) {
                    }
                } else if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke5 = obj;
                }
                Outcome outcome5 = (Outcome) invoke5;
                outcome5.getClass();
                if (outcome5 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl5 = fetchingMailSettingsViewModel._state;
                    do {
                        value5 = stateFlowImpl5.getValue();
                    } while (!stateFlowImpl5.compareAndSet(value5, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value5, null, null, null, null, ((FetchingMailSettingsContract$Event.OnFolderPollFrequencyChange) fetchingMailSettingsContract$Event).folderPollFrequency, false, false, null, null, null, null, 2031)));
                } else if (outcome5 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome5).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case 5:
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings6 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId6 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateSyncServerDeletions updateSyncServerDeletions = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateSyncServerDeletions(((FetchingMailSettingsContract$Event.OnSyncServerDeletionsToggle) fetchingMailSettingsContract$Event).syncServerDeletions);
                    this.label = 1;
                    invoke6 = updateFetchingMailSettings6.invoke(accountId6, updateSyncServerDeletions, this);
                    if (invoke6 == coroutineSingletons) {
                    }
                } else if (i7 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke6 = obj;
                }
                Outcome outcome6 = (Outcome) invoke6;
                outcome6.getClass();
                if (outcome6 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl6 = fetchingMailSettingsViewModel._state;
                    do {
                        value6 = stateFlowImpl6.getValue();
                    } while (!stateFlowImpl6.compareAndSet(value6, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value6, null, null, null, null, null, ((FetchingMailSettingsContract$Event.OnSyncServerDeletionsToggle) fetchingMailSettingsContract$Event).syncServerDeletions, false, null, null, null, null, 2015)));
                } else if (outcome6 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome6).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case 6:
                int i8 = this.label;
                if (i8 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings7 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId7 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateMarkAsReadWhenDeleted updateMarkAsReadWhenDeleted = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateMarkAsReadWhenDeleted(((FetchingMailSettingsContract$Event.OnMarkAsReadWhenDeletedToggle) fetchingMailSettingsContract$Event).markAsReadWhenDeleted);
                    this.label = 1;
                    invoke7 = updateFetchingMailSettings7.invoke(accountId7, updateMarkAsReadWhenDeleted, this);
                    if (invoke7 == coroutineSingletons) {
                    }
                } else if (i8 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke7 = obj;
                }
                Outcome outcome7 = (Outcome) invoke7;
                outcome7.getClass();
                if (outcome7 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl7 = fetchingMailSettingsViewModel._state;
                    do {
                        value7 = stateFlowImpl7.getValue();
                    } while (!stateFlowImpl7.compareAndSet(value7, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value7, null, null, null, null, null, false, ((FetchingMailSettingsContract$Event.OnMarkAsReadWhenDeletedToggle) fetchingMailSettingsContract$Event).markAsReadWhenDeleted, null, null, null, null, 1983)));
                } else if (outcome7 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome7).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings8 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId8 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateDeletePolicy updateDeletePolicy = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateDeletePolicy(((FetchingMailSettingsContract$Event.OnWhenIDeleteAMessageChange) fetchingMailSettingsContract$Event).whenIDeleteAMessage.id);
                    this.label = 1;
                    invoke8 = updateFetchingMailSettings8.invoke(accountId8, updateDeletePolicy, this);
                    if (invoke8 == coroutineSingletons) {
                    }
                } else if (i9 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke8 = obj;
                }
                Outcome outcome8 = (Outcome) invoke8;
                outcome8.getClass();
                if (outcome8 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl8 = fetchingMailSettingsViewModel._state;
                    do {
                        value8 = stateFlowImpl8.getValue();
                    } while (!stateFlowImpl8.compareAndSet(value8, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value8, null, null, null, null, null, false, false, ((FetchingMailSettingsContract$Event.OnWhenIDeleteAMessageChange) fetchingMailSettingsContract$Event).whenIDeleteAMessage, null, null, null, 1919)));
                } else if (outcome8 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome8).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings9 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId9 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateExpungePolicy updateExpungePolicy = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateExpungePolicy(((FetchingMailSettingsContract$Event.OnEraseDeletedMessageOnServerChange) fetchingMailSettingsContract$Event).eraseDeletedMessageOnServer.id);
                    this.label = 1;
                    invoke9 = updateFetchingMailSettings9.invoke(accountId9, updateExpungePolicy, this);
                    if (invoke9 == coroutineSingletons) {
                    }
                } else if (i10 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke9 = obj;
                }
                Outcome outcome9 = (Outcome) invoke9;
                outcome9.getClass();
                if (outcome9 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl9 = fetchingMailSettingsViewModel._state;
                    do {
                        value9 = stateFlowImpl9.getValue();
                    } while (!stateFlowImpl9.compareAndSet(value9, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value9, null, null, null, null, null, false, false, null, ((FetchingMailSettingsContract$Event.OnEraseDeletedMessageOnServerChange) fetchingMailSettingsContract$Event).eraseDeletedMessageOnServer, null, null, 1791)));
                } else if (outcome9 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome9).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            default:
                int i11 = this.label;
                if (i11 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateFetchingMailSettings updateFetchingMailSettings10 = fetchingMailSettingsViewModel.updateFetchingMailSettings;
                    AccountId accountId10 = fetchingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateMaxPushFolders updateMaxPushFolders = new AccountSettingsDomainContract$UpdateFetchingMailSettingsCommand.UpdateMaxPushFolders(Integer.parseInt(((FetchingMailSettingsContract$Event.OnMaxFolderToCheckWithPushChange) fetchingMailSettingsContract$Event).maxFolderToCheckWithPushChanges.id));
                    this.label = 1;
                    invoke10 = updateFetchingMailSettings10.invoke(accountId10, updateMaxPushFolders, this);
                    if (invoke10 == coroutineSingletons) {
                    }
                } else if (i11 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    invoke10 = obj;
                }
                Outcome outcome10 = (Outcome) invoke10;
                outcome10.getClass();
                if (outcome10 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl10 = fetchingMailSettingsViewModel._state;
                    do {
                        value10 = stateFlowImpl10.getValue();
                    } while (!stateFlowImpl10.compareAndSet(value10, FetchingMailSettingsContract$State.copy$default((FetchingMailSettingsContract$State) value10, null, null, null, null, null, false, false, null, null, ((FetchingMailSettingsContract$Event.OnMaxFolderToCheckWithPushChange) fetchingMailSettingsContract$Event).maxFolderToCheckWithPushChanges, null, 1535)));
                } else if (outcome10 instanceof Outcome.Failure) {
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome10).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
        }
        return null;
    }
}
