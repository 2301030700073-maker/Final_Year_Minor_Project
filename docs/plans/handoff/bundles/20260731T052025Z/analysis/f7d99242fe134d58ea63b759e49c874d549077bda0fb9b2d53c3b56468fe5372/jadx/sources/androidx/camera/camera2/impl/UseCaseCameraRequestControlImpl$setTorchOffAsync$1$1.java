package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.FlashMode;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.camera2.pipe.graph.CameraGraphSessionImpl;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.datastore.preferences.protobuf.Utf8;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableDeferredImpl;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $aeMode;
    public int I$0;
    public int label;
    public final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, int i, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeMode = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this.this$0, this.$aeMode, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        CompletableDeferredImpl completableDeferredImpl;
        int i2 = this.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "UseCaseCameraRequestControlImpl#setTorchOffAsync");
                }
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                int i3 = this.$aeMode;
                CameraGraphImpl graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                this.I$0 = i3;
                this.label = 1;
                obj = graph.acquireSession(this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
                i = i3;
            } else {
                if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i = this.I$0;
                ResultKt.throwOnFailure(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                CameraGraphSessionImpl cameraGraphSessionImpl = (CameraGraphSessionImpl) autoCloseable;
                AeMode aeMode = new AeMode(i);
                if (cameraGraphSessionImpl.token.getReleased()) {
                    UriKt$$ExternalSyntheticBUOutline0.m(cameraGraphSessionImpl, " after close.", "Cannot call setTorchOff on ");
                    completableDeferredImpl = null;
                } else {
                    Controller3A controller3A = cameraGraphSessionImpl.controller3A;
                    controller3A.getClass();
                    completableDeferredImpl = Controller3A.m79update3A169HPGg$default(controller3A, aeMode, null, null, new FlashMode(0), null, null, null, 118);
                }
                Cookie.Companion.closeFinally(autoCloseable, null);
                return completableDeferredImpl;
            } finally {
            }
        } catch (CancellationException e) {
            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                Log.d("CXCP", "Cannot acquire the CameraGraph.Session", e);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }
}
