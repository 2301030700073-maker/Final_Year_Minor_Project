package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraId;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStateOpener$tryOpenCamera$2$result$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $cameraId;
    public final /* synthetic */ Ref$ObjectRef $cameraOpenDeferred;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CameraStateOpener$tryOpenCamera$2$result$1$1(Ref$ObjectRef ref$ObjectRef, String str, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$cameraOpenDeferred = ref$ObjectRef;
        this.$cameraId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        String str = this.$cameraId;
        Ref$ObjectRef ref$ObjectRef = this.$cameraOpenDeferred;
        switch (i) {
            case 0:
                CameraStateOpener$tryOpenCamera$2$result$1$1 cameraStateOpener$tryOpenCamera$2$result$1$1 = new CameraStateOpener$tryOpenCamera$2$result$1$1(ref$ObjectRef, str, continuation, 0);
                cameraStateOpener$tryOpenCamera$2$result$1$1.L$0 = obj;
                return cameraStateOpener$tryOpenCamera$2$result$1$1;
            default:
                CameraStateOpener$tryOpenCamera$2$result$1$1 cameraStateOpener$tryOpenCamera$2$result$1$12 = new CameraStateOpener$tryOpenCamera$2$result$1$1(ref$ObjectRef, str, continuation, 1);
                cameraStateOpener$tryOpenCamera$2$result$1$12.L$0 = obj;
                return cameraStateOpener$tryOpenCamera$2$result$1$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        OpenCameraResult openCameraResult = (OpenCameraResult) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((CameraStateOpener$tryOpenCamera$2$result$1$1) create(openCameraResult, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Ref$ObjectRef ref$ObjectRef = this.$cameraOpenDeferred;
        String str = this.$cameraId;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                OpenCameraResult openCameraResult = (OpenCameraResult) this.L$0;
                Log.d("CXCP", "tryOpenCamera: openCamera() for " + ((Object) CameraId.m35toStringimpl(str)) + " returned");
                ref$ObjectRef.element = null;
                return openCameraResult;
            default:
                ResultKt.throwOnFailure(obj);
                OpenCameraResult openCameraResult2 = (OpenCameraResult) this.L$0;
                Log.d("CXCP", "tryOpenCamera: " + ((Object) CameraId.m35toStringimpl(str)) + " opened");
                ref$ObjectRef.element = null;
                return openCameraResult2;
        }
    }
}
