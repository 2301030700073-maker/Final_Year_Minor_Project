package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraController$ControllerState$ERROR;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Camera2CameraController$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Camera2CameraController f$0;

    public /* synthetic */ Camera2CameraController$$ExternalSyntheticLambda2(Camera2CameraController camera2CameraController, int i) {
        this.$r8$classId = i;
        this.f$0 = camera2CameraController;
    }

    private final Object invoke$androidx$camera$camera2$pipe$compat$Camera2CameraController$$ExternalSyntheticLambda2(Object obj) {
        Camera2CameraController camera2CameraController = this.f$0;
        synchronized (camera2CameraController.lock) {
            camera2CameraController.controllerState = CameraController$ControllerState$ERROR.INSTANCE$1;
            Log.d("CXCP", camera2CameraController + " is closed");
        }
        camera2CameraController.shutdownListener.onControllerClosed(camera2CameraController);
        CompletableDeferredImpl completableDeferredImpl = camera2CameraController.closedDeferred;
        Unit unit = Unit.INSTANCE;
        completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(unit);
        JobKt.cancel(camera2CameraController.scope, (CancellationException) null);
        return unit;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                return invoke$androidx$camera$camera2$pipe$compat$Camera2CameraController$$ExternalSyntheticLambda2(obj);
            default:
                Camera2CameraController camera2CameraController = this.f$0;
                ((Unit) obj).getClass();
                synchronized (camera2CameraController.lock) {
                    z = camera2CameraController._isForeground;
                }
                return Boolean.valueOf(z);
        }
    }
}
