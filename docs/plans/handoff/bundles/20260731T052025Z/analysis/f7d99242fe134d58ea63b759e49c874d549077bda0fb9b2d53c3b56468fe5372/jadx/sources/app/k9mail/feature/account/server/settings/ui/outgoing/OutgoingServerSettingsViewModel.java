package app.k9mail.feature.account.server.settings.ui.outgoing;

import androidx.collection.internal.Lock;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.work.OperationKt;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidateUsername$ValidateUsernameError$EmptyUsername;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$Effect;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.ServerSettings;
import com.jcraft.jzlib.Adler32;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.core.validation.input.NumberInputField;
import net.thunderbird.core.validation.input.StringInputField;
import okio.AsyncTimeout;
import org.jsoup.helper.Validate;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OutgoingServerSettingsViewModel extends BaseViewModel {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final InteractionMode mode;
    public final OutgoingServerSettingsValidator validator;

    public OutgoingServerSettingsViewModel(OutgoingServerSettingsContract$State outgoingServerSettingsContract$State, InteractionMode interactionMode, OutgoingServerSettingsValidator outgoingServerSettingsValidator, AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository) {
        super(outgoingServerSettingsContract$State);
        this.mode = interactionMode;
        this.validator = outgoingServerSettingsValidator;
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Outcome success;
        Object value;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State;
        Object value2;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State2;
        Object value3;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State3;
        String str;
        Object value4;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State4;
        String str2;
        Object value5;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State5;
        Object value6;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State6;
        Long l;
        Object value7;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State7;
        Long valueOf;
        Object value8;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State8;
        String str3;
        OutgoingServerSettingsContract$Event outgoingServerSettingsContract$Event = (OutgoingServerSettingsContract$Event) obj;
        outgoingServerSettingsContract$Event.getClass();
        if (outgoingServerSettingsContract$Event.equals(OutgoingServerSettingsContract$Event.LoadAccountState.INSTANCE)) {
            handleOneTimeEvent(outgoingServerSettingsContract$Event, new RoomDatabase$closeBarrier$1(0, this, OutgoingServerSettingsViewModel.class, "loadAccountState", "loadAccountState()V", 0, 7));
            return;
        }
        boolean z = outgoingServerSettingsContract$Event instanceof OutgoingServerSettingsContract$Event.ServerChanged;
        StateFlowImpl stateFlowImpl = this._state;
        if (z) {
            do {
                value8 = stateFlowImpl.getValue();
                outgoingServerSettingsContract$State8 = (OutgoingServerSettingsContract$State) value8;
                outgoingServerSettingsContract$State8.getClass();
                StringInputField stringInputField = outgoingServerSettingsContract$State8.server;
                str3 = ((OutgoingServerSettingsContract$Event.ServerChanged) outgoingServerSettingsContract$Event).server;
                stringInputField.getClass();
            } while (!stateFlowImpl.compareAndSet(value8, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State8, StringInputField.updateValue(str3), null, null, null, null, null, null, 126)));
            return;
        }
        if (outgoingServerSettingsContract$Event instanceof OutgoingServerSettingsContract$Event.SecurityChanged) {
            ConnectionSecurity connectionSecurity = ((OutgoingServerSettingsContract$Event.SecurityChanged) outgoingServerSettingsContract$Event).security;
            do {
                value7 = stateFlowImpl.getValue();
                outgoingServerSettingsContract$State7 = (OutgoingServerSettingsContract$State) value7;
                outgoingServerSettingsContract$State7.getClass();
                NumberInputField numberInputField = outgoingServerSettingsContract$State7.port;
                valueOf = Long.valueOf(Validate.toSmtpDefaultPort(connectionSecurity));
                numberInputField.getClass();
            } while (!stateFlowImpl.compareAndSet(value7, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State7, null, connectionSecurity, NumberInputField.updateValue(valueOf), null, null, null, null, 121)));
            return;
        }
        if (outgoingServerSettingsContract$Event instanceof OutgoingServerSettingsContract$Event.PortChanged) {
            do {
                value6 = stateFlowImpl.getValue();
                outgoingServerSettingsContract$State6 = (OutgoingServerSettingsContract$State) value6;
                outgoingServerSettingsContract$State6.getClass();
                NumberInputField numberInputField2 = outgoingServerSettingsContract$State6.port;
                l = ((OutgoingServerSettingsContract$Event.PortChanged) outgoingServerSettingsContract$Event).port;
                numberInputField2.getClass();
            } while (!stateFlowImpl.compareAndSet(value6, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State6, null, null, NumberInputField.updateValue(l), null, null, null, null, 123)));
            return;
        }
        if (outgoingServerSettingsContract$Event instanceof OutgoingServerSettingsContract$Event.AuthenticationTypeChanged) {
            do {
                value5 = stateFlowImpl.getValue();
                outgoingServerSettingsContract$State5 = (OutgoingServerSettingsContract$State) value5;
                outgoingServerSettingsContract$State5.getClass();
            } while (!stateFlowImpl.compareAndSet(value5, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State5, null, null, null, ((OutgoingServerSettingsContract$Event.AuthenticationTypeChanged) outgoingServerSettingsContract$Event).authenticationType, null, null, null, 119)));
            return;
        }
        if (outgoingServerSettingsContract$Event instanceof OutgoingServerSettingsContract$Event.UsernameChanged) {
            do {
                value4 = stateFlowImpl.getValue();
                outgoingServerSettingsContract$State4 = (OutgoingServerSettingsContract$State) value4;
                outgoingServerSettingsContract$State4.getClass();
                StringInputField stringInputField2 = outgoingServerSettingsContract$State4.username;
                str2 = ((OutgoingServerSettingsContract$Event.UsernameChanged) outgoingServerSettingsContract$Event).username;
                stringInputField2.getClass();
            } while (!stateFlowImpl.compareAndSet(value4, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State4, null, null, null, null, StringInputField.updateValue(str2), null, null, 111)));
            return;
        }
        if (outgoingServerSettingsContract$Event instanceof OutgoingServerSettingsContract$Event.PasswordChanged) {
            do {
                value3 = stateFlowImpl.getValue();
                outgoingServerSettingsContract$State3 = (OutgoingServerSettingsContract$State) value3;
                outgoingServerSettingsContract$State3.getClass();
                StringInputField stringInputField3 = outgoingServerSettingsContract$State3.password;
                str = ((OutgoingServerSettingsContract$Event.PasswordChanged) outgoingServerSettingsContract$Event).password;
                stringInputField3.getClass();
            } while (!stateFlowImpl.compareAndSet(value3, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State3, null, null, null, null, null, StringInputField.updateValue(str), null, 95)));
            return;
        }
        if (outgoingServerSettingsContract$Event instanceof OutgoingServerSettingsContract$Event.ClientCertificateChanged) {
            do {
                value2 = stateFlowImpl.getValue();
                outgoingServerSettingsContract$State2 = (OutgoingServerSettingsContract$State) value2;
                outgoingServerSettingsContract$State2.getClass();
            } while (!stateFlowImpl.compareAndSet(value2, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State2, null, null, null, null, null, null, ((OutgoingServerSettingsContract$Event.ClientCertificateChanged) outgoingServerSettingsContract$Event).clientCertificateAlias, 63)));
            return;
        }
        if (!outgoingServerSettingsContract$Event.equals(OutgoingServerSettingsContract$Event.OnNextClicked.INSTANCE)) {
            if (outgoingServerSettingsContract$Event.equals(OutgoingServerSettingsContract$Event.OnBackClicked.INSTANCE)) {
                emitEffect(OutgoingServerSettingsContract$Effect.NavigateBack.INSTANCE);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        ReadonlyStateFlow readonlyStateFlow = this.state;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State9 = (OutgoingServerSettingsContract$State) readonlyStateFlow.$$delegate_0.getValue();
        String str4 = outgoingServerSettingsContract$State9.server.value;
        this.validator.getClass();
        str4.getClass();
        Outcome execute = Adler32.execute(str4);
        Outcome execute2 = AsyncTimeout.Companion.execute(outgoingServerSettingsContract$State9.port.value);
        String str5 = outgoingServerSettingsContract$State9.username.value;
        str5.getClass();
        Outcome failure = StringsKt.isBlank(str5) ? new Outcome.Failure(ValidateUsername$ValidateUsernameError$EmptyUsername.INSTANCE, null) : Hex.getValidationSuccess();
        if (outgoingServerSettingsContract$State9.authenticationType.isPasswordRequired) {
            String str6 = outgoingServerSettingsContract$State9.password.value;
            str6.getClass();
            success = Lock.execute(str6);
        } else {
            success = new Outcome.Success(Unit.INSTANCE);
        }
        boolean z2 = false;
        List listOf = IntOffsetKt.listOf((Object[]) new Outcome[]{execute, execute2, failure, success});
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
            outgoingServerSettingsContract$State = (OutgoingServerSettingsContract$State) value;
            outgoingServerSettingsContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, OutgoingServerSettingsContract$State.copy$default(outgoingServerSettingsContract$State, outgoingServerSettingsContract$State.server.updateFromValidationOutcome(execute), null, outgoingServerSettingsContract$State.port.updateFromValidationOutcome(execute2), null, outgoingServerSettingsContract$State.username.updateFromValidationOutcome(failure), outgoingServerSettingsContract$State.password.updateFromValidationOutcome(success), null, 74)));
        if (z2) {
            return;
        }
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State10 = (OutgoingServerSettingsContract$State) readonlyStateFlow.$$delegate_0.getValue();
        outgoingServerSettingsContract$State10.getClass();
        String obj2 = StringsKt.trim(outgoingServerSettingsContract$State10.server.value).toString();
        Long l2 = outgoingServerSettingsContract$State10.port.value;
        l2.getClass();
        int longValue = (int) l2.longValue();
        com.fsck.k9.mail.ConnectionSecurity mailConnectionSecurity = Validate.toMailConnectionSecurity(outgoingServerSettingsContract$State10.security);
        AuthenticationType authenticationType = outgoingServerSettingsContract$State10.authenticationType;
        ServerSettings serverSettings = new ServerSettings("smtp", obj2, longValue, mailConnectionSecurity, IntRectKt.toAuthType(authenticationType), authenticationType.isUsernameRequired ? StringsKt.trim(outgoingServerSettingsContract$State10.username.value).toString() : "", authenticationType.isPasswordRequired ? StringsKt.trim(outgoingServerSettingsContract$State10.password.value).toString() : null, outgoingServerSettingsContract$State10.clientCertificateAlias, EmptyMap.INSTANCE);
        InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
        inMemoryAccountStateRepository.getClass();
        inMemoryAccountStateRepository.state = AccountState.copy$default(inMemoryAccountStateRepository.state, null, serverSettings, null, null, null, null, 247);
        emitEffect(OutgoingServerSettingsContract$Effect.NavigateNext.INSTANCE);
    }

    public void loadAccountState() {
        StateFlowImpl stateFlowImpl;
        Object value;
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            ((OutgoingServerSettingsContract$State) value).getClass();
        } while (!stateFlowImpl.compareAndSet(value, OperationKt.toOutgoingServerSettingsState(((InMemoryAccountStateRepository) this.accountStateRepository).state)));
    }
}
