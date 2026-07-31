package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.internal.CameraStatusMonitor$CameraStatus;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VirtualCameraState$connect$2$1$1 implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ VirtualCameraState$connect$2$1$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        Object emit;
        switch (this.$r8$classId) {
            case 0:
                CameraState cameraState = (CameraState) obj;
                VirtualCameraState virtualCameraState = (VirtualCameraState) this.this$0;
                synchronized (virtualCameraState.lock) {
                    try {
                        if (cameraState instanceof CameraStateOpen) {
                            VirtualAndroidCameraDevice virtualAndroidCameraDevice = new VirtualAndroidCameraDevice((AndroidCameraDevice) ((CameraStateOpen) cameraState).cameraDevice);
                            virtualCameraState.currentVirtualAndroidCamera = virtualAndroidCameraDevice;
                            virtualCameraState.emitState(new CameraStateOpen(virtualAndroidCameraDevice));
                        } else {
                            virtualCameraState.emitState(cameraState);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return Unit.INSTANCE;
            default:
                CameraStatusMonitor$CameraStatus cameraStatusMonitor$CameraStatus = (CameraStatusMonitor$CameraStatus) obj;
                Camera2CameraStatusMonitor camera2CameraStatusMonitor = (Camera2CameraStatusMonitor) this.this$0;
                StateFlowImpl stateFlowImpl = camera2CameraStatusMonitor._cameraAvailability;
                Unit unit = Unit.INSTANCE;
                if (cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraAvailable) {
                    stateFlowImpl.emit(cameraStatusMonitor$CameraStatus, continuation);
                    return unit;
                }
                if (!(cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraUnavailable)) {
                    return ((cameraStatusMonitor$CameraStatus instanceof CameraStatusMonitor$CameraStatus.CameraPrioritiesChanged) && (emit = camera2CameraStatusMonitor._cameraPriorities.emit(unit, continuation)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? emit : unit;
                }
                stateFlowImpl.emit(cameraStatusMonitor$CameraStatus, continuation);
                return unit;
        }
    }
}
