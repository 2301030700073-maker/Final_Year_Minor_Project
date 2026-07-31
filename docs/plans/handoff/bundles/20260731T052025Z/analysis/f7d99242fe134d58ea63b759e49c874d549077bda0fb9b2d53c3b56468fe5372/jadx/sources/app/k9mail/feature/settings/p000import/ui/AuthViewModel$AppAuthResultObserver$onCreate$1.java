package app.k9mail.feature.settings.p000import.ui;

import androidx.activity.result.ActivityResultCallback;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import app.k9mail.feature.settings.p000import.ui.AuthFlowState;
import kotlin.Function;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationResponse;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AuthViewModel$AppAuthResultObserver$onCreate$1 implements ActivityResultCallback, FunctionAdapter {
    public final /* synthetic */ AuthViewModel $tmp0;

    public AuthViewModel$AppAuthResultObserver$onCreate$1(AuthViewModel authViewModel) {
        this.$tmp0 = authViewModel;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
            return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return new FunctionReferenceImpl(1, 0, AuthViewModel.class, this.$tmp0, "onLoginResult", "onLoginResult(Lapp/k9mail/feature/settings/import/ui/AuthorizationResult;)V");
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        Object value;
        Object value2;
        AuthorizationResult authorizationResult = (AuthorizationResult) obj;
        AuthViewModel authViewModel = this.$tmp0;
        StateFlowImpl stateFlowImpl = authViewModel._uiState;
        if (authorizationResult == null) {
            do {
                value2 = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value2, AuthFlowState.Idle.INSTANCE$2));
            return;
        }
        AuthorizationException authorizationException = authorizationResult.exception;
        AuthorizationResponse authorizationResponse = authorizationResult.response;
        if (authorizationResponse != null) {
            authViewModel.authState.update(authorizationResponse, authorizationException);
            CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(authViewModel);
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            JobKt.launch$default(viewModelScope, DefaultIoScheduler.INSTANCE, null, new DataStoreImpl$data$1$3(authViewModel, authorizationResponse, (Continuation) null, 21), 2);
        }
        if (authorizationException != null) {
            do {
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, new AuthFlowState.Failed(authorizationException.error, authorizationException.errorDescription)));
        }
    }
}
