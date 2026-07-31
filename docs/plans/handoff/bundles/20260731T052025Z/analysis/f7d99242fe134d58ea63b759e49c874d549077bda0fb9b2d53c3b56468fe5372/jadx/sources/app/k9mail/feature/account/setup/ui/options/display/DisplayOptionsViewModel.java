package app.k9mail.feature.account.setup.ui.options.display;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountDisplayOptions;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.setup.domain.usecase.ValidateAccountName$ValidateAccountNameError$BlankAccountName;
import app.k9mail.feature.account.setup.domain.usecase.ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName;
import app.k9mail.feature.account.setup.domain.usecase.ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$Effect;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.account.AccountOwnerNameProvider;
import java.util.Iterator;
import java.util.List;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.core.validation.input.StringInputField;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayOptionsViewModel extends BaseViewModel {
    public final AccountOwnerNameProvider accountOwnerNameProvider;
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final DisplayOptionsValidator validator;

    public DisplayOptionsViewModel(DisplayOptionsValidator displayOptionsValidator, AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository, AccountOwnerNameProvider accountOwnerNameProvider) {
        super(DisplayOptionsScreenKt.toDisplayOptionsState(((InMemoryAccountStateRepository) accountDomainContract$AccountStateRepository).state));
        this.validator = displayOptionsValidator;
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
        this.accountOwnerNameProvider = accountOwnerNameProvider;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Object value;
        DisplayOptionsContract$State displayOptionsContract$State;
        Object value2;
        DisplayOptionsContract$State displayOptionsContract$State2;
        String str;
        Object value3;
        DisplayOptionsContract$State displayOptionsContract$State3;
        String str2;
        Object value4;
        DisplayOptionsContract$State displayOptionsContract$State4;
        String str3;
        DisplayOptionsContract$Event displayOptionsContract$Event = (DisplayOptionsContract$Event) obj;
        displayOptionsContract$Event.getClass();
        if (displayOptionsContract$Event.equals(DisplayOptionsContract$Event.LoadAccountState.INSTANCE)) {
            handleOneTimeEvent(displayOptionsContract$Event, new RoomDatabase$closeBarrier$1(0, this, DisplayOptionsViewModel.class, "loadAccountState", "loadAccountState()V", 0, 10));
            return;
        }
        boolean z = displayOptionsContract$Event instanceof DisplayOptionsContract$Event.OnAccountNameChanged;
        StateFlowImpl stateFlowImpl = this._state;
        if (z) {
            do {
                value4 = stateFlowImpl.getValue();
                displayOptionsContract$State4 = (DisplayOptionsContract$State) value4;
                displayOptionsContract$State4.getClass();
                StringInputField stringInputField = displayOptionsContract$State4.accountName;
                str3 = ((DisplayOptionsContract$Event.OnAccountNameChanged) displayOptionsContract$Event).accountName;
                stringInputField.getClass();
            } while (!stateFlowImpl.compareAndSet(value4, DisplayOptionsContract$State.copy$default(displayOptionsContract$State4, StringInputField.updateValue(str3), null, null, 6)));
            return;
        }
        if (displayOptionsContract$Event instanceof DisplayOptionsContract$Event.OnDisplayNameChanged) {
            do {
                value3 = stateFlowImpl.getValue();
                displayOptionsContract$State3 = (DisplayOptionsContract$State) value3;
                displayOptionsContract$State3.getClass();
                StringInputField stringInputField2 = displayOptionsContract$State3.displayName;
                str2 = ((DisplayOptionsContract$Event.OnDisplayNameChanged) displayOptionsContract$Event).displayName;
                stringInputField2.getClass();
            } while (!stateFlowImpl.compareAndSet(value3, DisplayOptionsContract$State.copy$default(displayOptionsContract$State3, null, StringInputField.updateValue(str2), null, 5)));
            return;
        }
        if (displayOptionsContract$Event instanceof DisplayOptionsContract$Event.OnEmailSignatureChanged) {
            do {
                value2 = stateFlowImpl.getValue();
                displayOptionsContract$State2 = (DisplayOptionsContract$State) value2;
                displayOptionsContract$State2.getClass();
                StringInputField stringInputField3 = displayOptionsContract$State2.emailSignature;
                str = ((DisplayOptionsContract$Event.OnEmailSignatureChanged) displayOptionsContract$Event).emailSignature;
                stringInputField3.getClass();
            } while (!stateFlowImpl.compareAndSet(value2, DisplayOptionsContract$State.copy$default(displayOptionsContract$State2, null, null, StringInputField.updateValue(str), 3)));
            return;
        }
        if (!displayOptionsContract$Event.equals(DisplayOptionsContract$Event.OnNextClicked.INSTANCE)) {
            if (displayOptionsContract$Event.equals(DisplayOptionsContract$Event.OnBackClicked.INSTANCE)) {
                emitEffect(DisplayOptionsContract$Effect.NavigateBack.INSTANCE);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        ReadonlyStateFlow readonlyStateFlow = this.state;
        DisplayOptionsContract$State displayOptionsContract$State5 = (DisplayOptionsContract$State) readonlyStateFlow.$$delegate_0.getValue();
        String str4 = displayOptionsContract$State5.accountName.value;
        this.validator.getClass();
        str4.getClass();
        Outcome validationSuccess = str4.length() == 0 ? Hex.getValidationSuccess() : StringsKt.isBlank(str4) ? new Outcome.Failure(ValidateAccountName$ValidateAccountNameError$BlankAccountName.INSTANCE, null) : Hex.getValidationSuccess();
        String str5 = displayOptionsContract$State5.displayName.value;
        str5.getClass();
        Outcome failure = StringsKt.isBlank(str5) ? new Outcome.Failure(ValidateDisplayName$ValidateDisplayNameError$EmptyDisplayName.INSTANCE, null) : Hex.getValidationSuccess();
        String str6 = displayOptionsContract$State5.emailSignature.value;
        str6.getClass();
        Outcome validationSuccess2 = str6.length() == 0 ? Hex.getValidationSuccess() : StringsKt.isBlank(str6) ? new Outcome.Failure(ValidateEmailSignature$ValidateEmailSignatureError$BlankEmailSignature.INSTANCE, null) : Hex.getValidationSuccess();
        boolean z2 = false;
        List listOf = IntOffsetKt.listOf((Object[]) new Outcome[]{validationSuccess, failure, validationSuccess2});
        if (!listOf.isEmpty()) {
            Iterator it = listOf.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((Outcome) it.next()) instanceof Outcome.Failure) {
                    z2 = true;
                    break;
                }
            }
        }
        do {
            value = stateFlowImpl.getValue();
            displayOptionsContract$State = (DisplayOptionsContract$State) value;
            displayOptionsContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, new DisplayOptionsContract$State(displayOptionsContract$State.accountName.updateFromValidationOutcome(validationSuccess), displayOptionsContract$State.displayName.updateFromValidationOutcome(failure), displayOptionsContract$State.emailSignature.updateFromValidationOutcome(validationSuccess2))));
        if (z2) {
            return;
        }
        DisplayOptionsContract$State displayOptionsContract$State6 = (DisplayOptionsContract$State) readonlyStateFlow.$$delegate_0.getValue();
        displayOptionsContract$State6.getClass();
        String str7 = displayOptionsContract$State6.accountName.value;
        String str8 = displayOptionsContract$State6.displayName.value;
        String str9 = displayOptionsContract$State6.emailSignature.value;
        AccountDisplayOptions accountDisplayOptions = new AccountDisplayOptions(str7, str8, str9.length() > 0 ? str9 : null);
        InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
        inMemoryAccountStateRepository.getClass();
        inMemoryAccountStateRepository.state = AccountState.copy$default(inMemoryAccountStateRepository.state, null, null, null, null, accountDisplayOptions, null, 191);
        emitEffect(DisplayOptionsContract$Effect.NavigateNext.INSTANCE);
    }
}
