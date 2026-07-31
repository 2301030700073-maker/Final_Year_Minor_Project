package app.k9mail.feature.account.server.settings.ui.incoming;

import androidx.collection.internal.Lock;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.sqlite.SQLite;
import androidx.work.Data;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix;
import app.k9mail.feature.account.server.settings.domain.usecase.ValidateUsername$ValidateUsernameError$EmptyUsername;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$Effect;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import com.jcraft.jzlib.Adler32;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
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
public class IncomingServerSettingsViewModel extends BaseViewModel {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final InteractionMode mode;
    public final IncomingServerSettingsValidator validator;

    public IncomingServerSettingsViewModel(IncomingServerSettingsContract$State incomingServerSettingsContract$State, InteractionMode interactionMode, IncomingServerSettingsValidator incomingServerSettingsValidator, AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository) {
        super(incomingServerSettingsContract$State);
        this.mode = interactionMode;
        this.validator = incomingServerSettingsValidator;
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Outcome validationSuccess;
        boolean z;
        Map map;
        Object value;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State;
        Object value2;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State2;
        Object value3;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State3;
        String str;
        Object value4;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State4;
        Object value5;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State5;
        Object value6;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State6;
        String str2;
        Object value7;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State7;
        String str3;
        Object value8;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State8;
        Object value9;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State9;
        Long l;
        Object value10;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State10;
        Long valueOf;
        Object value11;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State11;
        String str4;
        IncomingServerSettingsContract$Event incomingServerSettingsContract$Event = (IncomingServerSettingsContract$Event) obj;
        incomingServerSettingsContract$Event.getClass();
        if (incomingServerSettingsContract$Event.equals(IncomingServerSettingsContract$Event.LoadAccountState.INSTANCE)) {
            handleOneTimeEvent(incomingServerSettingsContract$Event, new RoomDatabase$closeBarrier$1(0, this, IncomingServerSettingsViewModel.class, "loadAccountState", "loadAccountState()V", 0, 6));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.ProtocolTypeChanged) {
            updateState(new DiskLruCache$$ExternalSyntheticLambda0(23, ((IncomingServerSettingsContract$Event.ProtocolTypeChanged) incomingServerSettingsContract$Event).protocolType));
            return;
        }
        boolean z2 = incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.ServerChanged;
        StateFlowImpl stateFlowImpl = this._state;
        if (z2) {
            do {
                value11 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State11 = (IncomingServerSettingsContract$State) value11;
                incomingServerSettingsContract$State11.getClass();
                StringInputField stringInputField = incomingServerSettingsContract$State11.server;
                str4 = ((IncomingServerSettingsContract$Event.ServerChanged) incomingServerSettingsContract$Event).server;
                stringInputField.getClass();
            } while (!stateFlowImpl.compareAndSet(value11, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State11, null, StringInputField.updateValue(str4), null, null, null, null, null, null, false, null, false, false, 4093)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.SecurityChanged) {
            ConnectionSecurity connectionSecurity = ((IncomingServerSettingsContract$Event.SecurityChanged) incomingServerSettingsContract$Event).security;
            do {
                value10 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State10 = (IncomingServerSettingsContract$State) value10;
                incomingServerSettingsContract$State10.getClass();
                NumberInputField numberInputField = incomingServerSettingsContract$State10.port;
                valueOf = Long.valueOf(SQLite.toDefaultPort(incomingServerSettingsContract$State10.protocolType, connectionSecurity));
                numberInputField.getClass();
            } while (!stateFlowImpl.compareAndSet(value10, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State10, null, null, connectionSecurity, NumberInputField.updateValue(valueOf), null, null, null, null, false, null, false, false, 4083)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.PortChanged) {
            do {
                value9 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State9 = (IncomingServerSettingsContract$State) value9;
                incomingServerSettingsContract$State9.getClass();
                NumberInputField numberInputField2 = incomingServerSettingsContract$State9.port;
                l = ((IncomingServerSettingsContract$Event.PortChanged) incomingServerSettingsContract$Event).port;
                numberInputField2.getClass();
            } while (!stateFlowImpl.compareAndSet(value9, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State9, null, null, null, NumberInputField.updateValue(l), null, null, null, null, false, null, false, false, 4087)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.AuthenticationTypeChanged) {
            do {
                value8 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State8 = (IncomingServerSettingsContract$State) value8;
                incomingServerSettingsContract$State8.getClass();
            } while (!stateFlowImpl.compareAndSet(value8, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State8, null, null, null, null, ((IncomingServerSettingsContract$Event.AuthenticationTypeChanged) incomingServerSettingsContract$Event).authenticationType, null, null, null, false, null, false, false, 4079)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.UsernameChanged) {
            do {
                value7 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State7 = (IncomingServerSettingsContract$State) value7;
                incomingServerSettingsContract$State7.getClass();
                StringInputField stringInputField2 = incomingServerSettingsContract$State7.username;
                str3 = ((IncomingServerSettingsContract$Event.UsernameChanged) incomingServerSettingsContract$Event).username;
                stringInputField2.getClass();
            } while (!stateFlowImpl.compareAndSet(value7, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State7, null, null, null, null, null, StringInputField.updateValue(str3), null, null, false, null, false, false, 4063)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.PasswordChanged) {
            do {
                value6 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State6 = (IncomingServerSettingsContract$State) value6;
                incomingServerSettingsContract$State6.getClass();
                StringInputField stringInputField3 = incomingServerSettingsContract$State6.password;
                str2 = ((IncomingServerSettingsContract$Event.PasswordChanged) incomingServerSettingsContract$Event).password;
                stringInputField3.getClass();
            } while (!stateFlowImpl.compareAndSet(value6, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State6, null, null, null, null, null, null, StringInputField.updateValue(str2), null, false, null, false, false, 4031)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.ClientCertificateChanged) {
            do {
                value5 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State5 = (IncomingServerSettingsContract$State) value5;
                incomingServerSettingsContract$State5.getClass();
            } while (!stateFlowImpl.compareAndSet(value5, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State5, null, null, null, null, null, null, null, ((IncomingServerSettingsContract$Event.ClientCertificateChanged) incomingServerSettingsContract$Event).clientCertificateAlias, false, null, false, false, 3967)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.ImapAutoDetectNamespaceChanged) {
            do {
                value4 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State4 = (IncomingServerSettingsContract$State) value4;
                incomingServerSettingsContract$State4.getClass();
            } while (!stateFlowImpl.compareAndSet(value4, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State4, null, null, null, null, null, null, null, null, ((IncomingServerSettingsContract$Event.ImapAutoDetectNamespaceChanged) incomingServerSettingsContract$Event).enabled, null, false, false, 3839)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.ImapPrefixChanged) {
            do {
                value3 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State3 = (IncomingServerSettingsContract$State) value3;
                incomingServerSettingsContract$State3.getClass();
                StringInputField stringInputField4 = incomingServerSettingsContract$State3.imapPrefix;
                str = ((IncomingServerSettingsContract$Event.ImapPrefixChanged) incomingServerSettingsContract$Event).imapPrefix;
                stringInputField4.getClass();
            } while (!stateFlowImpl.compareAndSet(value3, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State3, null, null, null, null, null, null, null, null, false, StringInputField.updateValue(str), false, false, 3583)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.ImapUseCompressionChanged) {
            do {
                value2 = stateFlowImpl.getValue();
                incomingServerSettingsContract$State2 = (IncomingServerSettingsContract$State) value2;
                incomingServerSettingsContract$State2.getClass();
            } while (!stateFlowImpl.compareAndSet(value2, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State2, null, null, null, null, null, null, null, null, false, null, ((IncomingServerSettingsContract$Event.ImapUseCompressionChanged) incomingServerSettingsContract$Event).useCompression, false, 3071)));
            return;
        }
        if (incomingServerSettingsContract$Event instanceof IncomingServerSettingsContract$Event.ImapSendClientInfoChanged) {
            do {
                value = stateFlowImpl.getValue();
                incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) value;
                incomingServerSettingsContract$State.getClass();
            } while (!stateFlowImpl.compareAndSet(value, IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State, null, null, null, null, null, null, null, null, false, null, false, ((IncomingServerSettingsContract$Event.ImapSendClientInfoChanged) incomingServerSettingsContract$Event).sendClientInfo, 2047)));
            return;
        }
        if (!incomingServerSettingsContract$Event.equals(IncomingServerSettingsContract$Event.OnNextClicked.INSTANCE)) {
            if (incomingServerSettingsContract$Event.equals(IncomingServerSettingsContract$Event.OnBackClicked.INSTANCE)) {
                emitEffect(IncomingServerSettingsContract$Effect.NavigateBack.INSTANCE);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        ReadonlyStateFlow readonlyStateFlow = this.state;
        IncomingServerSettingsContract$State incomingServerSettingsContract$State12 = (IncomingServerSettingsContract$State) readonlyStateFlow.$$delegate_0.getValue();
        String str5 = incomingServerSettingsContract$State12.server.value;
        this.validator.getClass();
        str5.getClass();
        Outcome execute = Adler32.execute(str5);
        Outcome execute2 = AsyncTimeout.Companion.execute(incomingServerSettingsContract$State12.port.value);
        String str6 = incomingServerSettingsContract$State12.username.value;
        str6.getClass();
        Outcome failure = StringsKt.isBlank(str6) ? new Outcome.Failure(ValidateUsername$ValidateUsernameError$EmptyUsername.INSTANCE, null) : Hex.getValidationSuccess();
        if (incomingServerSettingsContract$State12.authenticationType.isPasswordRequired) {
            String str7 = incomingServerSettingsContract$State12.password.value;
            str7.getClass();
            validationSuccess = Lock.execute(str7);
        } else {
            validationSuccess = Hex.getValidationSuccess();
        }
        Outcome outcome = validationSuccess;
        String str8 = incomingServerSettingsContract$State12.imapPrefix.value;
        str8.getClass();
        int length = str8.length();
        Unit unit = Unit.INSTANCE;
        Outcome success = length == 0 ? new Outcome.Success(unit) : StringsKt.isBlank(str8) ? new Outcome.Failure(ValidateImapPrefix$ValidateImapPrefixError$BlankImapPrefix.INSTANCE, null) : new Outcome.Success(unit);
        List listOf = IntOffsetKt.listOf((Object[]) new Outcome[]{execute, execute2, failure, outcome, success});
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
        updateState(new XmlSettingsParser$$ExternalSyntheticLambda7(execute, execute2, failure, outcome, success, 6));
        if (z) {
            return;
        }
        IncomingServerSettingsContract$State incomingServerSettingsContract$State13 = (IncomingServerSettingsContract$State) readonlyStateFlow.$$delegate_0.getValue();
        incomingServerSettingsContract$State13.getClass();
        IncomingProtocolType incomingProtocolType = incomingServerSettingsContract$State13.protocolType;
        String str9 = incomingProtocolType.defaultName;
        String obj2 = StringsKt.trim(incomingServerSettingsContract$State13.server.value).toString();
        Long l2 = incomingServerSettingsContract$State13.port.value;
        l2.getClass();
        int longValue = (int) l2.longValue();
        com.fsck.k9.mail.ConnectionSecurity mailConnectionSecurity = Validate.toMailConnectionSecurity(incomingServerSettingsContract$State13.security);
        AuthenticationType authenticationType = incomingServerSettingsContract$State13.authenticationType;
        AuthType authType = IntRectKt.toAuthType(authenticationType);
        String obj3 = StringsKt.trim(incomingServerSettingsContract$State13.username.value).toString();
        String obj4 = authenticationType.isPasswordRequired ? StringsKt.trim(incomingServerSettingsContract$State13.password.value).toString() : null;
        String str10 = incomingServerSettingsContract$State13.clientCertificateAlias;
        if (incomingProtocolType == IncomingProtocolType.IMAP) {
            boolean z3 = incomingServerSettingsContract$State13.imapAutodetectNamespaceEnabled;
            map = MapsKt__MapsKt.mapOf(new Pair("autoDetectNamespace", String.valueOf(z3)), new Pair("pathPrefix", z3 ? null : StringsKt.trim(incomingServerSettingsContract$State13.imapPrefix.value).toString()), new Pair("useCompression", String.valueOf(incomingServerSettingsContract$State13.imapUseCompression)), new Pair("sendClientInfo", String.valueOf(incomingServerSettingsContract$State13.imapSendClientInfo)));
        } else {
            map = EmptyMap.INSTANCE;
        }
        ServerSettings serverSettings = new ServerSettings(str9, obj2, longValue, mailConnectionSecurity, authType, obj3, obj4, str10, map);
        InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
        inMemoryAccountStateRepository.getClass();
        inMemoryAccountStateRepository.state = AccountState.copy$default(inMemoryAccountStateRepository.state, serverSettings, null, null, null, null, null, 251);
        emitEffect(IncomingServerSettingsContract$Effect.NavigateNext.INSTANCE);
    }

    public void loadAccountState() {
        StateFlowImpl stateFlowImpl;
        Object value;
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            ((IncomingServerSettingsContract$State) value).getClass();
        } while (!stateFlowImpl.compareAndSet(value, Data.Companion.toIncomingServerSettingsState(((InMemoryAccountStateRepository) this.accountStateRepository).state)));
    }
}
