package app.k9mail.feature.account.server.validation.ui;

import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.account.server.validation.domain.usecase.ValidateServerSettings;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Error;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.server.ServerSettingsValidationResult;
import com.fsck.k9.mail.server.ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;
import com.fsck.k9.mail.server.ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BaseServerValidationViewModel$updateSuccess$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ BaseServerValidationViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BaseServerValidationViewModel$updateSuccess$2(BaseServerValidationViewModel baseServerValidationViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = baseServerValidationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        BaseServerValidationViewModel baseServerValidationViewModel = this.this$0;
        switch (i) {
            case 0:
                return new BaseServerValidationViewModel$updateSuccess$2(baseServerValidationViewModel, continuation, 0);
            default:
                return new BaseServerValidationViewModel$updateSuccess$2(baseServerValidationViewModel, continuation, 1);
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
        return ((BaseServerValidationViewModel$updateSuccess$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        ServerValidationContract$State serverValidationContract$State;
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        BaseServerValidationViewModel baseServerValidationViewModel = this.this$0;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = null;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (JobKt.delay(500L, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                baseServerValidationViewModel.navigateNext$3();
                return unit;
            default:
                StateFlowImpl stateFlowImpl = baseServerValidationViewModel._state;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServerSettings serverSettings = ((ServerValidationContract$State) baseServerValidationViewModel.state.$$delegate_0.getValue()).serverSettings;
                    if (serverSettings == null) {
                        baseServerValidationViewModel.updateError(new ServerValidationContract$Error.UnknownError("Server settings not set"));
                        return unit;
                    }
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, ServerValidationContract$State.copy$default((ServerValidationContract$State) value, false, false, null, true, 31)));
                    ValidateServerSettings validateServerSettings = baseServerValidationViewModel.validateServerSettings;
                    this.label = 1;
                    obj = JobKt.withContext(validateServerSettings.coroutineDispatcher, new DataStoreImpl$data$1$3(serverSettings, validateServerSettings, continuation, 18), this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ServerSettingsValidationResult serverSettingsValidationResult = (ServerSettingsValidationResult) obj;
                if (Intrinsics.areEqual(serverSettingsValidationResult, ServerSettingsValidationResult.Success.INSTANCE)) {
                    do {
                        value2 = stateFlowImpl.getValue();
                        serverValidationContract$State = (ServerValidationContract$State) value2;
                        serverValidationContract$State.getClass();
                    } while (!stateFlowImpl.compareAndSet(value2, ServerValidationContract$State.copy$default(serverValidationContract$State, false, true, null, false, 23)));
                    JobKt.launch$default(ViewModelKt.getViewModelScope(baseServerValidationViewModel), null, null, new BaseServerValidationViewModel$updateSuccess$2(baseServerValidationViewModel, continuation, 0), 3);
                } else if (serverSettingsValidationResult instanceof ServerSettingsValidationResult.AuthenticationError) {
                    baseServerValidationViewModel.updateError(new ServerValidationContract$Error.AuthenticationError(((ServerSettingsValidationResult.AuthenticationError) serverSettingsValidationResult).serverMessage));
                } else if (serverSettingsValidationResult instanceof ServerSettingsValidationResult.CertificateError) {
                    baseServerValidationViewModel.updateError(new ServerValidationContract$Error.CertificateError(((ServerSettingsValidationResult.CertificateError) serverSettingsValidationResult).certificateChain));
                } else if (Intrinsics.areEqual(serverSettingsValidationResult, ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired.INSTANCE)) {
                    baseServerValidationViewModel.updateError(ServerValidationContract$Error.ClientCertificateExpired.INSTANCE);
                } else if (Intrinsics.areEqual(serverSettingsValidationResult, ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure.INSTANCE)) {
                    baseServerValidationViewModel.updateError(ServerValidationContract$Error.ClientCertificateRetrievalFailure.INSTANCE);
                } else if (serverSettingsValidationResult instanceof ServerSettingsValidationResult.NetworkError) {
                    baseServerValidationViewModel.updateError(new ServerValidationContract$Error.NetworkError(((ServerSettingsValidationResult.NetworkError) serverSettingsValidationResult).exception));
                } else if (serverSettingsValidationResult instanceof ServerSettingsValidationResult.ServerError) {
                    baseServerValidationViewModel.updateError(new ServerValidationContract$Error.ServerError(((ServerSettingsValidationResult.ServerError) serverSettingsValidationResult).serverMessage));
                } else if (serverSettingsValidationResult instanceof ServerSettingsValidationResult.MissingServerCapabilityError) {
                    baseServerValidationViewModel.updateError(new ServerValidationContract$Error.MissingServerCapabilityError(((ServerSettingsValidationResult.MissingServerCapabilityError) serverSettingsValidationResult).capabilityName));
                } else {
                    if (!(serverSettingsValidationResult instanceof ServerSettingsValidationResult.UnknownError)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    String message = ((ServerSettingsValidationResult.UnknownError) serverSettingsValidationResult).exception.getMessage();
                    if (message == null) {
                        message = "Unknown error";
                    }
                    baseServerValidationViewModel.updateError(new ServerValidationContract$Error.UnknownError(message));
                }
                return unit;
        }
    }
}
