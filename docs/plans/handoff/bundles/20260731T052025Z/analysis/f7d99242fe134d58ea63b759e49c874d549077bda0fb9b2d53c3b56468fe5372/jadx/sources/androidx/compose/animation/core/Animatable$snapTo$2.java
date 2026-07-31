package androidx.compose.animation.core;

import android.hardware.camera2.CameraDevice;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.pipe.compat.CaptureSessionState;
import androidx.camera.core.impl.Config;
import java.util.Locale;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Animatable$snapTo$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $targetValue;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Animatable$snapTo$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$targetValue = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        int i = this.$r8$classId;
        Object obj = this.$targetValue;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new Animatable$snapTo$2((Animatable) obj2, obj, continuation, 0);
            case 1:
                return new Animatable$snapTo$2((CameraDevice) obj2, (Ref$BooleanRef) obj, continuation, 1);
            case 2:
                return new Animatable$snapTo$2((CaptureSessionState) obj2, (CaptureSessionState.ConfiguredCameraCaptureSession) obj, continuation, 2);
            default:
                return new Animatable$snapTo$2((CaptureSessionState) obj2, (RawField) obj, continuation, 3);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                ((Animatable$snapTo$2) create(continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((Animatable$snapTo$2) create(continuation)).invokeSuspend(unit);
                break;
            case 2:
                ((Animatable$snapTo$2) create(continuation)).invokeSuspend(unit);
                break;
            default:
                ((Animatable$snapTo$2) create(continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$targetValue;
        Object obj3 = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Animatable animatable = (Animatable) obj3;
                Animatable.access$endAnimation(animatable);
                Object access$clampToBounds = Animatable.access$clampToBounds(animatable, obj2);
                animatable.internalState.value$delegate.setValue(access$clampToBounds);
                animatable.targetValue$delegate.setValue(access$clampToBounds);
                return unit;
            case 1:
                ResultKt.throwOnFailure(obj);
                CameraDevice cameraDevice = (CameraDevice) obj3;
                if (cameraDevice != null) {
                    Log.i("CXCP", "Closing Camera " + cameraDevice.getId());
                    String str = "CXCP#CameraDevice-" + cameraDevice.getId() + "#close";
                    long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                    try {
                        Trace.beginSection(str);
                        try {
                            cameraDevice.close();
                        } catch (NullPointerException e) {
                            Log.w("CXCP", "NPE encountered during CameraDevice.close()", e);
                        }
                        Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / 1000000.0d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(str, " - ")));
                    } catch (Throwable th) {
                        Log.d("CXCP", Config.CC.m(new Object[]{Double.valueOf(Config.CC.m(elapsedRealtimeNanos) / 1000000.0d)}, 1, (Locale) null, "%.3f ms", Config.CC.m(str, " - ")));
                        throw th;
                    }
                }
                ((Ref$BooleanRef) obj2).element = true;
                return unit;
            case 2:
                ResultKt.throwOnFailure(obj);
                StringBuilder sb = new StringBuilder();
                CaptureSessionState captureSessionState = (CaptureSessionState) obj3;
                sb.append(captureSessionState);
                sb.append(" CameraCaptureSessionWrapper#close");
                CaptureSessionState.ConfiguredCameraCaptureSession configuredCameraCaptureSession = (CaptureSessionState.ConfiguredCameraCaptureSession) obj2;
                try {
                    Trace.beginSection(sb.toString());
                    Log.d("CXCP", "Closing capture session for " + captureSessionState);
                    Config.CC.m93m((Object) configuredCameraCaptureSession.session);
                    return unit;
                } finally {
                }
            default:
                ResultKt.throwOnFailure(obj);
                StringBuilder sb2 = new StringBuilder();
                CaptureSessionState captureSessionState2 = (CaptureSessionState) obj3;
                sb2.append(captureSessionState2);
                sb2.append(" stopRepeating");
                RawField rawField = (RawField) obj2;
                try {
                    Trace.beginSection(sb2.toString());
                    rawField.stopRepeating$camera_camera2_pipe();
                    Trace.endSection();
                    try {
                        Trace.beginSection(captureSessionState2 + " abortCaptures");
                        rawField.abortCaptures$camera_camera2_pipe();
                        return unit;
                    } finally {
                    }
                } finally {
                }
        }
    }
}
