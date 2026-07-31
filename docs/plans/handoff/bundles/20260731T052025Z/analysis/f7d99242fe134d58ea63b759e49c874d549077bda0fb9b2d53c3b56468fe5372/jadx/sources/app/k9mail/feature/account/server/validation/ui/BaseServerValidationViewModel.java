package app.k9mail.feature.account.server.validation.ui;

import androidx.lifecycle.ViewModelKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.sqlite.SQLite;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.common.domain.entity.AuthorizationState;
import app.k9mail.feature.account.oauth.data.AuthorizationStateRepository;
import app.k9mail.feature.account.oauth.domain.entity.OAuthResult;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$State;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel;
import app.k9mail.feature.account.server.certificate.data.InMemoryServerCertificateErrorRepository;
import app.k9mail.feature.account.server.certificate.domain.entity.ServerCertificateError;
import app.k9mail.feature.account.server.validation.domain.usecase.ValidateServerSettings;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Effect;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Error;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.ServerSettings;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.openid.appauth.AuthState;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.json.JSONException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseServerValidationViewModel extends BaseViewModel {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final AuthorizationStateRepository authorizationStateRepository;
    public final InMemoryServerCertificateErrorRepository certificateErrorRepository;
    public final boolean isIncomingValidation;
    public final AccountOAuthContract$ViewModel oAuthViewModel;
    public final ValidateServerSettings validateServerSettings;

    public BaseServerValidationViewModel(AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository, ValidateServerSettings validateServerSettings, AuthorizationStateRepository authorizationStateRepository, InMemoryServerCertificateErrorRepository inMemoryServerCertificateErrorRepository, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, boolean z) {
        super(SQLite.toServerValidationState(((InMemoryAccountStateRepository) accountDomainContract$AccountStateRepository).state, z));
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
        this.validateServerSettings = validateServerSettings;
        this.authorizationStateRepository = authorizationStateRepository;
        this.certificateErrorRepository = inMemoryServerCertificateErrorRepository;
        this.oAuthViewModel = accountOAuthContract$ViewModel;
        this.isIncomingValidation = z;
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        ServerValidationContract$State serverValidationContract$State;
        ServerValidationContract$Event serverValidationContract$Event = (ServerValidationContract$Event) obj;
        serverValidationContract$Event.getClass();
        if (serverValidationContract$Event.equals(ServerValidationContract$Event.OnBackClicked.INSTANCE$1)) {
            handleOneTimeEvent(serverValidationContract$Event, new RoomDatabase$closeBarrier$1(0, this, BaseServerValidationViewModel.class, "loadAccountStateAndValidate", "loadAccountStateAndValidate()V", 0, 8));
            return;
        }
        if (serverValidationContract$Event instanceof ServerValidationContract$Event.OnOAuthResult) {
            OAuthResult oAuthResult = ((ServerValidationContract$Event.OnOAuthResult) serverValidationContract$Event).result;
            if (oAuthResult instanceof OAuthResult.Success) {
                AuthorizationState authorizationState = ((OAuthResult.Success) oAuthResult).authorizationState;
                InMemoryAccountStateRepository inMemoryAccountStateRepository = (InMemoryAccountStateRepository) this.accountStateRepository;
                inMemoryAccountStateRepository.getClass();
                inMemoryAccountStateRepository.state = AccountState.copy$default(inMemoryAccountStateRepository.state, null, null, authorizationState, null, null, null, 239);
                do {
                    stateFlowImpl = this._state;
                    value = stateFlowImpl.getValue();
                    serverValidationContract$State = (ServerValidationContract$State) value;
                    serverValidationContract$State.getClass();
                } while (!stateFlowImpl.compareAndSet(value, ServerValidationContract$State.copy$default(serverValidationContract$State, false, false, null, false, 59)));
                validateServerSettings();
                return;
            }
            return;
        }
        if (serverValidationContract$Event.equals(ServerValidationContract$Event.OnBackClicked.INSTANCE$5)) {
            onValidateConfig();
            return;
        }
        if (serverValidationContract$Event.equals(ServerValidationContract$Event.OnBackClicked.INSTANCE$3)) {
            navigateNext$3();
            return;
        }
        if (serverValidationContract$Event.equals(ServerValidationContract$Event.OnBackClicked.INSTANCE)) {
            JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(this).coroutineContext);
            emitEffect(ServerValidationContract$Effect.NavigateBack.INSTANCE);
        } else if (serverValidationContract$Event.equals(ServerValidationContract$Event.OnBackClicked.INSTANCE$4)) {
            onRetry$1();
        } else if (serverValidationContract$Event.equals(ServerValidationContract$Event.OnBackClicked.INSTANCE$2)) {
            onRetry$1();
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    public final void navigateNext$3() {
        JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(this).coroutineContext);
        emitEffect(ServerValidationContract$Effect.NavigateNext.INSTANCE);
    }

    public final void onRetry$1() {
        StateFlowImpl stateFlowImpl;
        Object value;
        ServerValidationContract$State serverValidationContract$State;
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            serverValidationContract$State = (ServerValidationContract$State) value;
            serverValidationContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, ServerValidationContract$State.copy$default(serverValidationContract$State, false, false, null, false, 47)));
        onValidateConfig();
    }

    public final void onValidateConfig() {
        AuthState authState;
        ReadonlyStateFlow readonlyStateFlow = this.state;
        if (((ServerValidationContract$State) readonlyStateFlow.$$delegate_0.getValue()).isSuccess) {
            navigateNext$3();
            return;
        }
        ServerSettings serverSettings = ((ServerValidationContract$State) readonlyStateFlow.$$delegate_0.getValue()).serverSettings;
        if ((serverSettings != null ? serverSettings.authenticationType : null) != AuthType.XOAUTH2) {
            validateServerSettings();
            return;
        }
        AuthorizationState authorizationState = ((InMemoryAccountStateRepository) this.accountStateRepository).state.authorizationState;
        if (authorizationState == null) {
            startOAuthSignIn();
            return;
        }
        this.authorizationStateRepository.getClass();
        try {
            String str = authorizationState.value;
            authState = str != null ? AuthState.jsonDeserialize(str) : new AuthState();
        } catch (JSONException e) {
            Log.e(e, "Error deserializing AuthorizationState", new Object[0]);
            authState = new AuthState();
        }
        if (authState.mAuthorizationException != null || (authState.getAccessToken() == null && authState.getIdToken() == null)) {
            startOAuthSignIn();
        } else {
            validateServerSettings();
        }
    }

    public final void startOAuthSignIn() {
        StateFlowImpl stateFlowImpl;
        Object value;
        ServerValidationContract$State serverValidationContract$State;
        ReadonlyStateFlow readonlyStateFlow = this.state;
        ServerSettings serverSettings = ((ServerValidationContract$State) readonlyStateFlow.$$delegate_0.getValue()).serverSettings;
        String str = serverSettings != null ? serverSettings.host : null;
        String str2 = ((ServerValidationContract$State) readonlyStateFlow.$$delegate_0.getValue()).emailAddress;
        if (str == null || str2 == null) {
            updateError(new ServerValidationContract$Error.UnknownError("Hostname or email address not set"));
            return;
        }
        do {
            stateFlowImpl = this._state;
            value = stateFlowImpl.getValue();
            serverValidationContract$State = (ServerValidationContract$State) value;
            serverValidationContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, ServerValidationContract$State.copy$default(serverValidationContract$State, true, false, null, false, 59)));
        ((AccountOAuthViewModel) this.oAuthViewModel).initState(new AccountOAuthContract$State(60, str, str2));
    }

    public final void updateError(ServerValidationContract$Error serverValidationContract$Error) {
        if (serverValidationContract$Error instanceof ServerValidationContract$Error.CertificateError) {
            ServerSettings serverSettings = ((ServerValidationContract$State) this.state.$$delegate_0.getValue()).serverSettings;
            if (serverSettings == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                return;
            }
            ServerCertificateError serverCertificateError = new ServerCertificateError(serverSettings.host, serverSettings.port, ((ServerValidationContract$Error.CertificateError) serverValidationContract$Error).certificateChain);
            InMemoryServerCertificateErrorRepository inMemoryServerCertificateErrorRepository = this.certificateErrorRepository;
            inMemoryServerCertificateErrorRepository.getClass();
            inMemoryServerCertificateErrorRepository.serverCertificateError = serverCertificateError;
        }
        while (true) {
            StateFlowImpl stateFlowImpl = this._state;
            Object value = stateFlowImpl.getValue();
            ServerValidationContract$State serverValidationContract$State = (ServerValidationContract$State) value;
            serverValidationContract$State.getClass();
            ServerValidationContract$Error serverValidationContract$Error2 = serverValidationContract$Error;
            if (stateFlowImpl.compareAndSet(value, ServerValidationContract$State.copy$default(serverValidationContract$State, false, false, serverValidationContract$Error2, false, 7))) {
                return;
            } else {
                serverValidationContract$Error = serverValidationContract$Error2;
            }
        }
    }

    public final void validateServerSettings() {
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BaseServerValidationViewModel$updateSuccess$2(this, null, 1), 3);
    }
}
