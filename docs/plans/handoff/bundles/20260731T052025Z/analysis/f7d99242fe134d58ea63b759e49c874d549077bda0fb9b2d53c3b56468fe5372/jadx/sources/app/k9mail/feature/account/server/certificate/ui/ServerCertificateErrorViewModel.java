package app.k9mail.feature.account.server.certificate.ui;

import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.account.server.certificate.data.InMemoryServerCertificateErrorRepository;
import app.k9mail.feature.account.server.certificate.domain.entity.ServerCertificateError;
import app.k9mail.feature.account.server.certificate.domain.usecase.AddServerCertificateException;
import app.k9mail.feature.account.server.certificate.domain.usecase.FormatServerCertificateError;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$Effect;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$Event;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerCertificateErrorViewModel extends BaseViewModel {
    public final AddServerCertificateException addServerCertificateException;
    public final InMemoryServerCertificateErrorRepository certificateErrorRepository;
    public final FormatServerCertificateError formatServerCertificateError;
    public final ServerCertificateError serverCertificateError;

    public ServerCertificateErrorViewModel(InMemoryServerCertificateErrorRepository inMemoryServerCertificateErrorRepository, AddServerCertificateException addServerCertificateException, FormatServerCertificateError formatServerCertificateError) {
        super(new ServerCertificateErrorContract$State(false, null));
        this.certificateErrorRepository = inMemoryServerCertificateErrorRepository;
        this.addServerCertificateException = addServerCertificateException;
        this.formatServerCertificateError = formatServerCertificateError;
        ServerCertificateError serverCertificateError = inMemoryServerCertificateErrorRepository.serverCertificateError;
        this.serverCertificateError = serverCertificateError;
        if (serverCertificateError != null) {
            updateState(new DI$$ExternalSyntheticLambda0(11, this, serverCertificateError));
        }
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        ServerCertificateErrorContract$State serverCertificateErrorContract$State;
        ServerCertificateErrorContract$Event serverCertificateErrorContract$Event = (ServerCertificateErrorContract$Event) obj;
        serverCertificateErrorContract$Event.getClass();
        Continuation continuation = null;
        if (serverCertificateErrorContract$Event.equals(ServerCertificateErrorContract$Event.OnShowAdvancedClicked.INSTANCE)) {
            do {
                stateFlowImpl = this._state;
                value = stateFlowImpl.getValue();
                serverCertificateErrorContract$State = (ServerCertificateErrorContract$State) value;
                serverCertificateErrorContract$State.getClass();
            } while (!stateFlowImpl.compareAndSet(value, ServerCertificateErrorContract$State.copy$default(serverCertificateErrorContract$State, null, 2)));
            return;
        }
        if (!serverCertificateErrorContract$Event.equals(ServerCertificateErrorContract$Event.OnCertificateAcceptedClicked.INSTANCE)) {
            if (serverCertificateErrorContract$Event.equals(ServerCertificateErrorContract$Event.OnBackClicked.INSTANCE)) {
                emitEffect(ServerCertificateErrorContract$Effect.NavigateBack.INSTANCE);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        ServerCertificateError serverCertificateError = this.serverCertificateError;
        if (serverCertificateError != null) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$maybeRun$1(this, serverCertificateError, continuation, 23), 3);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
        }
    }
}
