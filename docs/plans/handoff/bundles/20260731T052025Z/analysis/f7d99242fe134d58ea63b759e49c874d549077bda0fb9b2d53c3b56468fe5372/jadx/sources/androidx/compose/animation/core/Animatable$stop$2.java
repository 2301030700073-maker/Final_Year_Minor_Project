package androidx.compose.animation.core;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.compat.CaptureSessionState;
import androidx.camera.camera2.pipe.compat.OpenCameraResult;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Animatable$stop$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Animatable$stop$2(Object obj, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return new Animatable$stop$2((Animatable) obj, continuation, 0);
            case 1:
                return new Animatable$stop$2((Ref$ObjectRef) obj, continuation, 1);
            default:
                return new Animatable$stop$2((CaptureSessionState) obj, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                ((Animatable$stop$2) create(continuation)).invokeSuspend(unit);
                return unit;
            case 1:
                return ((Animatable$stop$2) create(continuation)).invokeSuspend(unit);
            default:
                ((Animatable$stop$2) create(continuation)).invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Animatable.access$endAnimation((Animatable) obj2);
                return unit;
            case 1:
                ResultKt.throwOnFailure(obj);
                Log.d("CXCP", "tryOpenCamera: Camera open cancelled");
                ((Ref$ObjectRef) obj2).element = null;
                return new OpenCameraResult(null, new CameraError(13), 1);
            default:
                ResultKt.throwOnFailure(obj);
                ((CaptureSessionState) obj2).captureSessionAttemptCompleted.await();
                return unit;
        }
    }
}
