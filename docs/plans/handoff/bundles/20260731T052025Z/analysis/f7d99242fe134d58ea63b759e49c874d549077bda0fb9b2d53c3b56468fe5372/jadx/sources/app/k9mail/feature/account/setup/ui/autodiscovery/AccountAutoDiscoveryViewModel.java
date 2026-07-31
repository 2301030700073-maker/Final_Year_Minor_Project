package app.k9mail.feature.account.setup.ui.autodiscovery;

import androidx.collection.internal.Lock;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.autodiscovery.api.ImapServerSettings;
import app.k9mail.autodiscovery.api.SmtpServerSettings;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.oauth.domain.entity.OAuthResult;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery;
import app.k9mail.feature.account.setup.domain.usecase.ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$Effect;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.core.validation.input.BooleanInputField;
import net.thunderbird.core.validation.input.StringInputField;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountAutoDiscoveryViewModel extends BaseViewModel {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final GetAutoDiscovery getAutoDiscovery;
    public final AccountOAuthContract$ViewModel oAuthViewModel;
    public final AccountAutoDiscoveryValidator validator;

    public AccountAutoDiscoveryViewModel(AccountAutoDiscoveryValidator accountAutoDiscoveryValidator, GetAutoDiscovery getAutoDiscovery, AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel) {
        super(new AccountAutoDiscoveryContract$State(null, 1023));
        this.validator = accountAutoDiscoveryValidator;
        this.getAutoDiscovery = getAutoDiscovery;
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
        this.oAuthViewModel = accountOAuthContract$ViewModel;
    }

    public static final void access$updateError(AccountAutoDiscoveryViewModel accountAutoDiscoveryViewModel, AccountAutoDiscoveryContract$Error accountAutoDiscoveryContract$Error) {
        StateFlowImpl stateFlowImpl = accountAutoDiscoveryViewModel._state;
        while (true) {
            Object value = stateFlowImpl.getValue();
            AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) value;
            accountAutoDiscoveryContract$State.getClass();
            AccountAutoDiscoveryContract$Error accountAutoDiscoveryContract$Error2 = accountAutoDiscoveryContract$Error;
            if (stateFlowImpl.compareAndSet(value, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State, null, null, null, null, null, null, accountAutoDiscoveryContract$Error2, false, false, 639))) {
                return;
            } else {
                accountAutoDiscoveryContract$Error = accountAutoDiscoveryContract$Error2;
            }
        }
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Object value;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State;
        Object value2;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State2;
        Object value3;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State3;
        Object value4;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State4;
        Object value5;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State5;
        Outcome validationSuccess;
        boolean z;
        Object value6;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State6;
        Object value7;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State7;
        Object value8;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State8;
        Boolean valueOf;
        Object value9;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State9;
        Object value10;
        AccountAutoDiscoveryContract$Event accountAutoDiscoveryContract$Event = (AccountAutoDiscoveryContract$Event) obj;
        accountAutoDiscoveryContract$Event.getClass();
        boolean z2 = accountAutoDiscoveryContract$Event instanceof AccountAutoDiscoveryContract$Event.EmailAddressChanged;
        StateFlowImpl stateFlowImpl = this._state;
        if (z2) {
            String str = ((AccountAutoDiscoveryContract$Event.EmailAddressChanged) accountAutoDiscoveryContract$Event).emailAddress;
            InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
            inMemoryAccountStateRepository.getClass();
            inMemoryAccountStateRepository.state = new AccountState(null, null, null, null, null, null, 255);
            do {
                value10 = stateFlowImpl.getValue();
                ((AccountAutoDiscoveryContract$State) value10).getClass();
            } while (!stateFlowImpl.compareAndSet(value10, new AccountAutoDiscoveryContract$State(new StringInputField(str, 6), 509)));
            return;
        }
        if (accountAutoDiscoveryContract$Event instanceof AccountAutoDiscoveryContract$Event.PasswordChanged) {
            String str2 = ((AccountAutoDiscoveryContract$Event.PasswordChanged) accountAutoDiscoveryContract$Event).password;
            do {
                value9 = stateFlowImpl.getValue();
                accountAutoDiscoveryContract$State9 = (AccountAutoDiscoveryContract$State) value9;
                accountAutoDiscoveryContract$State9.getClass();
                accountAutoDiscoveryContract$State9.password.getClass();
            } while (!stateFlowImpl.compareAndSet(value9, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State9, null, null, StringInputField.updateValue(str2), null, null, null, null, false, false, 1019)));
            return;
        }
        Continuation continuation = null;
        if (accountAutoDiscoveryContract$Event instanceof AccountAutoDiscoveryContract$Event.ResultApprovalChanged) {
            boolean z3 = ((AccountAutoDiscoveryContract$Event.ResultApprovalChanged) accountAutoDiscoveryContract$Event).confirmed;
            do {
                value8 = stateFlowImpl.getValue();
                accountAutoDiscoveryContract$State8 = (AccountAutoDiscoveryContract$State) value8;
                accountAutoDiscoveryContract$State8.getClass();
                BooleanInputField booleanInputField = accountAutoDiscoveryContract$State8.configurationApproved;
                valueOf = Boolean.valueOf(z3);
                booleanInputField.getClass();
            } while (!stateFlowImpl.compareAndSet(value8, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State8, null, null, null, null, new BooleanInputField(valueOf, null, false), null, null, false, false, 1007)));
            return;
        }
        if (accountAutoDiscoveryContract$Event instanceof AccountAutoDiscoveryContract$Event.OnOAuthResult) {
            OAuthResult oAuthResult = ((AccountAutoDiscoveryContract$Event.OnOAuthResult) accountAutoDiscoveryContract$Event).result;
            if (!(oAuthResult instanceof OAuthResult.Success)) {
                do {
                    value6 = stateFlowImpl.getValue();
                    accountAutoDiscoveryContract$State6 = (AccountAutoDiscoveryContract$State) value6;
                    accountAutoDiscoveryContract$State6.getClass();
                } while (!stateFlowImpl.compareAndSet(value6, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State6, null, null, null, null, null, null, null, false, false, 991)));
                return;
            }
            do {
                value7 = stateFlowImpl.getValue();
                accountAutoDiscoveryContract$State7 = (AccountAutoDiscoveryContract$State) value7;
                accountAutoDiscoveryContract$State7.getClass();
            } while (!stateFlowImpl.compareAndSet(value7, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State7, null, null, null, null, null, ((OAuthResult.Success) oAuthResult).authorizationState, null, false, false, 991)));
            navigateNext(true);
            return;
        }
        boolean equals = accountAutoDiscoveryContract$Event.equals(AccountAutoDiscoveryContract$Event.OnNextClicked.INSTANCE);
        int i = 7;
        ReadonlyStateFlow readonlyStateFlow = this.state;
        if (!equals) {
            if (!accountAutoDiscoveryContract$Event.equals(AccountAutoDiscoveryContract$Event.OnBackClicked.INSTANCE)) {
                if (!accountAutoDiscoveryContract$Event.equals(AccountAutoDiscoveryContract$Event.OnRetryClicked.INSTANCE)) {
                    if (accountAutoDiscoveryContract$Event.equals(AccountAutoDiscoveryContract$Event.OnEditConfigurationClicked.INSTANCE)) {
                        navigateNext(false);
                        return;
                    } else {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return;
                    }
                }
                do {
                    value = stateFlowImpl.getValue();
                    accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) value;
                    accountAutoDiscoveryContract$State.getClass();
                } while (!stateFlowImpl.compareAndSet(value, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State, null, null, null, null, null, null, null, false, false, 895)));
                JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, continuation, i), 3);
                return;
            }
            int ordinal = ((AccountAutoDiscoveryContract$State) readonlyStateFlow.$$delegate_0.getValue()).configStep.ordinal();
            if (ordinal == 0) {
                if (((AccountAutoDiscoveryContract$State) readonlyStateFlow.$$delegate_0.getValue()).error == null) {
                    emitEffect(AccountAutoDiscoveryContract$Effect.NavigateBack.INSTANCE);
                    return;
                }
                do {
                    value2 = stateFlowImpl.getValue();
                    accountAutoDiscoveryContract$State2 = (AccountAutoDiscoveryContract$State) value2;
                    accountAutoDiscoveryContract$State2.getClass();
                } while (!stateFlowImpl.compareAndSet(value2, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State2, null, null, null, null, null, null, null, false, false, 895)));
                return;
            }
            if (ordinal != 1 && ordinal != 2 && ordinal != 3) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            do {
                value3 = stateFlowImpl.getValue();
                accountAutoDiscoveryContract$State3 = (AccountAutoDiscoveryContract$State) value3;
                accountAutoDiscoveryContract$State3.getClass();
            } while (!stateFlowImpl.compareAndSet(value3, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State3, AccountAutoDiscoveryContract$ConfigStep.EMAIL_ADDRESS, null, new StringInputField(null, 7), null, null, null, null, false, true, 506)));
            return;
        }
        StateFlowImpl stateFlowImpl2 = readonlyStateFlow.$$delegate_0;
        int ordinal2 = ((AccountAutoDiscoveryContract$State) stateFlowImpl2.getValue()).configStep.ordinal();
        AccountAutoDiscoveryValidator accountAutoDiscoveryValidator = this.validator;
        if (ordinal2 == 0) {
            if (((AccountAutoDiscoveryContract$State) stateFlowImpl2.getValue()).error != null) {
                do {
                    value5 = stateFlowImpl.getValue();
                    accountAutoDiscoveryContract$State5 = (AccountAutoDiscoveryContract$State) value5;
                    accountAutoDiscoveryContract$State5.getClass();
                } while (!stateFlowImpl.compareAndSet(value5, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State5, AccountAutoDiscoveryContract$ConfigStep.PASSWORD, null, null, null, null, null, null, false, false, 894)));
                return;
            }
            Outcome validateEmailAddress = accountAutoDiscoveryValidator.validateEmailAddress(((AccountAutoDiscoveryContract$State) stateFlowImpl2.getValue()).emailAddress.value);
            boolean z4 = validateEmailAddress instanceof Outcome.Failure;
            do {
                value4 = stateFlowImpl.getValue();
                accountAutoDiscoveryContract$State4 = (AccountAutoDiscoveryContract$State) value4;
                accountAutoDiscoveryContract$State4.getClass();
            } while (!stateFlowImpl.compareAndSet(value4, AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State4, null, accountAutoDiscoveryContract$State4.emailAddress.updateFromValidationOutcome(validateEmailAddress), null, null, null, null, null, false, false, 1021)));
            if (z4) {
                return;
            }
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, continuation, i), 3);
            return;
        }
        if (ordinal2 != 1) {
            if (ordinal2 != 2) {
                if (ordinal2 == 3) {
                    navigateNext(false);
                    return;
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
            }
            AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State10 = (AccountAutoDiscoveryContract$State) stateFlowImpl2.getValue();
            Outcome validateEmailAddress2 = accountAutoDiscoveryValidator.validateEmailAddress(accountAutoDiscoveryContract$State10.emailAddress.value);
            String str3 = accountAutoDiscoveryContract$State10.password.value;
            str3.getClass();
            Outcome execute = Lock.execute(str3);
            Boolean bool = accountAutoDiscoveryContract$State10.configurationApproved.value;
            AutoDiscoveryResult.Settings settings = accountAutoDiscoveryContract$State10.autoDiscoverySettings;
            Boolean valueOf2 = settings != null ? Boolean.valueOf(settings.isTrusted) : null;
            if (bool == null && valueOf2 == null) {
                validationSuccess = Hex.getValidationSuccess();
            } else {
                Boolean bool2 = Boolean.TRUE;
                validationSuccess = Intrinsics.areEqual(valueOf2, bool2) ? Hex.getValidationSuccess() : Intrinsics.areEqual(bool, bool2) ? Hex.getValidationSuccess() : new Outcome.Failure(ValidateConfigurationApproval$ValidateConfigurationApprovalError$ApprovalRequired.INSTANCE, null);
            }
            List listOf = IntOffsetKt.listOf((Object[]) new Outcome[]{validateEmailAddress2, execute, validationSuccess});
            if (!listOf.isEmpty()) {
                Iterator it = listOf.iterator();
                while (it.hasNext()) {
                    if (((Outcome) it.next()) instanceof Outcome.Failure) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            updateState(new SimpleActor$$ExternalSyntheticLambda0(validateEmailAddress2, execute, validationSuccess, 26));
            if (z) {
                return;
            }
            navigateNext(((AccountAutoDiscoveryContract$State) stateFlowImpl2.getValue()).autoDiscoverySettings != null);
        }
    }

    public final void navigateNext(boolean z) {
        SmtpServerSettings smtpServerSettings;
        ImapServerSettings imapServerSettings;
        ReadonlyStateFlow readonlyStateFlow = this.state;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) readonlyStateFlow.$$delegate_0.getValue();
        accountAutoDiscoveryContract$State.getClass();
        StringInputField stringInputField = accountAutoDiscoveryContract$State.password;
        String str = accountAutoDiscoveryContract$State.emailAddress.value;
        AutoDiscoveryResult.Settings settings = accountAutoDiscoveryContract$State.autoDiscoverySettings;
        AccountState accountState = new AccountState(null, str, (settings == null || (imapServerSettings = settings.incomingServerSettings) == null) ? null : DebugUtils.toServerSettings(imapServerSettings, stringInputField.value), (settings == null || (smtpServerSettings = settings.outgoingServerSettings) == null) ? null : DebugUtils.toServerSettings(smtpServerSettings, stringInputField.value), accountAutoDiscoveryContract$State.authorizationState, null, 33);
        InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
        inMemoryAccountStateRepository.getClass();
        inMemoryAccountStateRepository.state = accountState;
        AutoDiscoveryResult.Settings settings2 = ((AccountAutoDiscoveryContract$State) readonlyStateFlow.$$delegate_0.getValue()).autoDiscoverySettings;
        emitEffect(new AccountAutoDiscoveryContract$Effect.NavigateNext(new AccountAutoDiscoveryContract$AutoDiscoveryUiResult(z, (settings2 != null ? settings2.incomingServerSettings : null) instanceof ImapServerSettings ? IncomingProtocolType.IMAP : null)));
    }
}
