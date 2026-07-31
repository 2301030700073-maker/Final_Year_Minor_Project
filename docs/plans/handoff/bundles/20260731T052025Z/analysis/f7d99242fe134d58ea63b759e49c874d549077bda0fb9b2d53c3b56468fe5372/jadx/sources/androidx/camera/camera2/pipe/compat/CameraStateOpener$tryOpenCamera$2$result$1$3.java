package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraError;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStateOpener$tryOpenCamera$2$result$1$3 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Ref$ObjectRef $cameraOpenDeferred;
    public final /* synthetic */ AndroidCameraState $cameraState;
    public final /* synthetic */ Ref$ObjectRef $timeoutJob;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpener$tryOpenCamera$2$result$1$3(Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, AndroidCameraState androidCameraState, Continuation continuation) {
        super(1, continuation);
        this.$timeoutJob = ref$ObjectRef;
        this.$cameraOpenDeferred = ref$ObjectRef2;
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new CameraStateOpener$tryOpenCamera$2$result$1$3(this.$timeoutJob, this.$cameraOpenDeferred, this.$cameraState, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((CameraStateOpener$tryOpenCamera$2$result$1$3) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        Log.d("CXCP", "tryOpenCamera: 3000ms elapsed");
        this.$timeoutJob.element = null;
        if (this.$cameraOpenDeferred.element == null) {
            return null;
        }
        Log.e("CXCP", "tryOpenCamera: openCamera() timed out");
        this.$cameraState.close();
        return new OpenCameraResult(null, new CameraError(13), 1);
    }
}
