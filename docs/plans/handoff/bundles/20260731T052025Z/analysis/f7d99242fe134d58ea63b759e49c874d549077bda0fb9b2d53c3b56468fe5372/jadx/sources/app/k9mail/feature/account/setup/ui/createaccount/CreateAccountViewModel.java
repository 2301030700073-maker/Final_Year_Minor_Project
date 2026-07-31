package app.k9mail.feature.account.setup.ui.createaccount;

import androidx.lifecycle.ViewModelKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.setup.domain.usecase.CreateAccount;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$Effect;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateAccountViewModel extends BaseViewModel {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final CreateAccount createAccount;

    public CreateAccountViewModel(CreateAccount createAccount, AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository) {
        super(new CreateAccountContract$State(true, null));
        this.createAccount = createAccount;
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        CreateAccountContract$Event createAccountContract$Event = (CreateAccountContract$Event) obj;
        createAccountContract$Event.getClass();
        if (createAccountContract$Event.equals(CreateAccountContract$Event.CreateAccount.INSTANCE)) {
            handleOneTimeEvent(createAccountContract$Event, new RoomDatabase$closeBarrier$1(0, this, CreateAccountViewModel.class, "createAccount", "createAccount()V", 0, 9));
            return;
        }
        if (!createAccountContract$Event.equals(CreateAccountContract$Event.OnBackClicked.INSTANCE)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        } else {
            if (((CreateAccountContract$State) this.state.$$delegate_0.getValue()).isLoading) {
                return;
            }
            JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(this).coroutineContext);
            emitEffect(CreateAccountContract$Effect.NavigateBack.INSTANCE);
        }
    }
}
