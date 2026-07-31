package app.k9mail.feature.account.edit.ui.server.settings.save;

import androidx.lifecycle.ViewModelKt;
import app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$Effect;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BaseSaveServerSettingsViewModel$updateSuccess$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ BaseSaveServerSettingsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BaseSaveServerSettingsViewModel$updateSuccess$2(BaseSaveServerSettingsViewModel baseSaveServerSettingsViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = baseSaveServerSettingsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new BaseSaveServerSettingsViewModel$updateSuccess$2(this.this$0, continuation, 0);
            default:
                return new BaseSaveServerSettingsViewModel$updateSuccess$2(this.this$0, continuation, 1);
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
        return ((BaseSaveServerSettingsViewModel$updateSuccess$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        SaveServerSettingsContract$State saveServerSettingsContract$State;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        BaseSaveServerSettingsViewModel baseSaveServerSettingsViewModel = this.this$0;
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
                baseSaveServerSettingsViewModel.getClass();
                JobKt.cancelChildren$default(ViewModelKt.getViewModelScope(baseSaveServerSettingsViewModel).coroutineContext);
                baseSaveServerSettingsViewModel.emitEffect(SaveServerSettingsContract$Effect.NavigateNext.INSTANCE);
                return unit;
            default:
                int i3 = this.label;
                int i4 = 0;
                try {
                    if (i3 == 0) {
                        ResultKt.throwOnFailure(obj);
                        SaveServerSettings saveServerSettings = baseSaveServerSettingsViewModel.saveServerSettings;
                        String str = baseSaveServerSettingsViewModel.accountUuid;
                        boolean z = baseSaveServerSettingsViewModel.isIncoming;
                        this.label = 1;
                        if (saveServerSettings.execute(str, z, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    StateFlowImpl stateFlowImpl = baseSaveServerSettingsViewModel._state;
                    do {
                        value2 = stateFlowImpl.getValue();
                        saveServerSettingsContract$State = (SaveServerSettingsContract$State) value2;
                        saveServerSettingsContract$State.getClass();
                    } while (!stateFlowImpl.compareAndSet(value2, new SaveServerSettingsContract$State(saveServerSettingsContract$State.error, false)));
                    JobKt.launch$default(ViewModelKt.getViewModelScope(baseSaveServerSettingsViewModel), null, null, new BaseSaveServerSettingsViewModel$updateSuccess$2(baseSaveServerSettingsViewModel, continuation, i4), 3);
                    return unit;
                } catch (Exception e) {
                    String message = e.getMessage();
                    if (message == null) {
                        message = "Unknown error";
                    }
                    SaveServerSettingsContract$Failure$SaveServerSettingsFailed saveServerSettingsContract$Failure$SaveServerSettingsFailed = new SaveServerSettingsContract$Failure$SaveServerSettingsFailed(message);
                    StateFlowImpl stateFlowImpl2 = baseSaveServerSettingsViewModel._state;
                    do {
                        value = stateFlowImpl2.getValue();
                        ((SaveServerSettingsContract$State) value).getClass();
                    } while (!stateFlowImpl2.compareAndSet(value, new SaveServerSettingsContract$State(saveServerSettingsContract$Failure$SaveServerSettingsFailed, false)));
                    return unit;
                }
        }
    }
}
