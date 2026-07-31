package app.k9mail.feature.account.setup.ui.options.sync;

import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.AccountSyncOptions;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncOptionsViewModel extends BaseViewModel {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;

    public SyncOptionsViewModel(AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository) {
        super(SyncOptionsScreenKt.toSyncOptionsState(((InMemoryAccountStateRepository) accountDomainContract$AccountStateRepository).state));
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Object value;
        SyncOptionsContract$State syncOptionsContract$State;
        Object value2;
        SyncOptionsContract$State syncOptionsContract$State2;
        Object value3;
        SyncOptionsContract$State syncOptionsContract$State3;
        SyncOptionsContract$Event syncOptionsContract$Event = (SyncOptionsContract$Event) obj;
        syncOptionsContract$Event.getClass();
        if (syncOptionsContract$Event.equals(SyncOptionsContract$Event.LoadAccountState.INSTANCE)) {
            handleOneTimeEvent(syncOptionsContract$Event, new RoomDatabase$closeBarrier$1(0, this, SyncOptionsViewModel.class, "loadAccountState", "loadAccountState()V", 0, 11));
            return;
        }
        boolean z = syncOptionsContract$Event instanceof SyncOptionsContract$Event.OnCheckFrequencyChanged;
        StateFlowImpl stateFlowImpl = this._state;
        if (z) {
            do {
                value3 = stateFlowImpl.getValue();
                syncOptionsContract$State3 = (SyncOptionsContract$State) value3;
                syncOptionsContract$State3.getClass();
            } while (!stateFlowImpl.compareAndSet(value3, SyncOptionsContract$State.copy$default(syncOptionsContract$State3, ((SyncOptionsContract$Event.OnCheckFrequencyChanged) syncOptionsContract$Event).checkFrequency, null, false, 6)));
            return;
        }
        if (syncOptionsContract$Event instanceof SyncOptionsContract$Event.OnMessageDisplayCountChanged) {
            do {
                value2 = stateFlowImpl.getValue();
                syncOptionsContract$State2 = (SyncOptionsContract$State) value2;
                syncOptionsContract$State2.getClass();
            } while (!stateFlowImpl.compareAndSet(value2, SyncOptionsContract$State.copy$default(syncOptionsContract$State2, null, ((SyncOptionsContract$Event.OnMessageDisplayCountChanged) syncOptionsContract$Event).messageDisplayCount, false, 5)));
            return;
        }
        if (syncOptionsContract$Event instanceof SyncOptionsContract$Event.OnShowNotificationChanged) {
            do {
                value = stateFlowImpl.getValue();
                syncOptionsContract$State = (SyncOptionsContract$State) value;
                syncOptionsContract$State.getClass();
            } while (!stateFlowImpl.compareAndSet(value, SyncOptionsContract$State.copy$default(syncOptionsContract$State, null, null, ((SyncOptionsContract$Event.OnShowNotificationChanged) syncOptionsContract$Event).showNotification, 3)));
            return;
        }
        if (!syncOptionsContract$Event.equals(SyncOptionsContract$Event.OnNextClicked.INSTANCE)) {
            if (syncOptionsContract$Event.equals(SyncOptionsContract$Event.OnBackClicked.INSTANCE)) {
                emitEffect(SyncOptionsContract$Effect$NavigateBack.INSTANCE);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        SyncOptionsContract$State syncOptionsContract$State4 = (SyncOptionsContract$State) this.state.$$delegate_0.getValue();
        syncOptionsContract$State4.getClass();
        AccountSyncOptions accountSyncOptions = new AccountSyncOptions(syncOptionsContract$State4.checkFrequency.minutes, syncOptionsContract$State4.messageDisplayCount.count, syncOptionsContract$State4.showNotification);
        InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
        inMemoryAccountStateRepository.getClass();
        inMemoryAccountStateRepository.state = AccountState.copy$default(inMemoryAccountStateRepository.state, null, null, null, null, null, accountSyncOptions, 127);
        emitEffect(SyncOptionsContract$Effect$NavigateBack.INSTANCE$1);
    }
}
