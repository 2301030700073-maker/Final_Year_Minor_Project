package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.core.AutoValue_CameraState_StateError;
import androidx.camera.core.impl.CameraInternal;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraInternalAdapter$release$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ CameraInternalAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CameraInternalAdapter$release$1(CameraInternalAdapter cameraInternalAdapter, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = cameraInternalAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        CameraInternalAdapter cameraInternalAdapter = this.this$0;
        switch (i) {
            case 0:
                return new CameraInternalAdapter$release$1(cameraInternalAdapter, continuation, 0);
            default:
                return new CameraInternalAdapter$release$1(cameraInternalAdapter, continuation, 1);
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
        return ((CameraInternalAdapter$release$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                CameraInternalAdapter cameraInternalAdapter = this.this$0;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    UseCaseManager useCaseManager = cameraInternalAdapter.useCaseManager;
                    this.label = 1;
                    if (useCaseManager.close(this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                JobKt.cancel(cameraInternalAdapter.threads.scope, (CancellationException) null);
                return Unit.INSTANCE;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CameraStateAdapter cameraStateAdapter = this.this$0.cameraStateAdapter;
                    AutoValue_CameraState_StateError autoValue_CameraState_StateError = new AutoValue_CameraState_StateError(8);
                    synchronized (cameraStateAdapter.lock) {
                        try {
                            if (!cameraStateAdapter.isRemoved) {
                                if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                                    Log.d("CXCP", "Camera is removed, forcing state to CLOSED.");
                                }
                                cameraStateAdapter.isRemoved = true;
                                CameraInternal.State state = CameraInternal.State.CLOSED;
                                cameraStateAdapter.currentCameraInternalState = state;
                                cameraStateAdapter.currentCameraStateError = autoValue_CameraState_StateError;
                                cameraStateAdapter.postCameraState(state, autoValue_CameraState_StateError);
                                cameraStateAdapter.currentGraph = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    UseCaseManager useCaseManager2 = this.this$0.useCaseManager;
                    this.label = 1;
                    if (useCaseManager2.close(this) == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
        }
    }
}
