package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlinx.coroutines.CompletableDeferredImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FocusMeteringControl implements UseCaseCameraControl, UseCaseManager.RunningUseCasesChangeListener {
    public UseCaseCameraRequestControl _requestControl;
    public final CameraPipeCameraProperties cameraProperties;
    public CompletableDeferredImpl cancelSignal;
    public final State3AControl state3AControl;

    public FocusMeteringControl(CameraPipeCameraProperties cameraPipeCameraProperties, TargetAspectRatio targetAspectRatio, State3AControl state3AControl, UseCaseThreads useCaseThreads, ZoomCompat zoomCompat) {
        Object obj;
        cameraPipeCameraProperties.getClass();
        state3AControl.getClass();
        useCaseThreads.getClass();
        this.cameraProperties = cameraPipeCameraProperties;
        this.state3AControl = state3AControl;
        CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_MAX_REGIONS_AF;
        key.getClass();
        Camera2CameraMetadata camera2CameraMetadata = (Camera2CameraMetadata) cameraMetadata;
        camera2CameraMetadata.getClass();
        Object obj2 = camera2CameraMetadata.get(key);
        CameraCharacteristics.Key key2 = CameraCharacteristics.CONTROL_MAX_REGIONS_AE;
        key2.getClass();
        camera2CameraMetadata.getClass();
        Object obj3 = camera2CameraMetadata.get(key2);
        CameraCharacteristics.Key key3 = CameraCharacteristics.CONTROL_MAX_REGIONS_AWB;
        key3.getClass();
        camera2CameraMetadata.getClass();
        Object obj4 = camera2CameraMetadata.get(key3);
        CameraMetadata.Companion.getClass();
        CameraMetadata.Companion.getSupportsAutoFocusTrigger(cameraMetadata);
        CameraCharacteristics.Key key4 = CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES;
        key4.getClass();
        int[] iArr = (int[]) ((Camera2CameraMetadata) cameraMetadata).get(key4);
        if (iArr != null) {
            ArrayList arrayList = new ArrayList(iArr.length);
            for (int i : iArr) {
                List list = AeMode.values;
                arrayList.add(IntOffsetKt.m758fromIntOrNullkQd0u18(i));
            }
        }
        CameraMetadata cameraMetadata2 = this.cameraProperties.metadata;
        CameraCharacteristics.Key key5 = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
        key5.getClass();
        int[] iArr2 = (int[]) ((Camera2CameraMetadata) cameraMetadata2).get(key5);
        if (iArr2 != null) {
            ArrayList arrayList2 = new ArrayList(iArr2.length);
            for (int i2 : iArr2) {
                Iterator it = AfMode.values.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((AfMode) obj).value == i2) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                arrayList2.add((AfMode) obj);
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseManager.RunningUseCasesChangeListener
    public final void onRunningUseCasesChanged(LinkedHashSet linkedHashSet) {
        Size attachedSurfaceResolution;
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if ((useCase instanceof Preview) && (attachedSurfaceResolution = ((Preview) useCase).getAttachedSurfaceResolution()) != null) {
                new Rational(attachedSurfaceResolution.getWidth(), attachedSurfaceResolution.getHeight());
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void reset() {
        CompletableDeferredImpl completableDeferredImpl = new CompletableDeferredImpl();
        UseCaseCameraRequestControl useCaseCameraRequestControl = this._requestControl;
        if (useCaseCameraRequestControl == null) {
            CameraDevices$CC.m("Camera is not active.", completableDeferredImpl);
            return;
        }
        CompletableDeferredImpl completableDeferredImpl2 = this.cancelSignal;
        if (completableDeferredImpl2 != null) {
            CameraDevices$CC.m("Cancelled by another cancelFocusAndMetering()", completableDeferredImpl2);
        }
        this.cancelSignal = completableDeferredImpl;
        State3AControl state3AControl = this.state3AControl;
        synchronized (state3AControl.lock) {
        }
        state3AControl.update();
        DBUtil.propagateTo(useCaseCameraRequestControl.cancelFocusAndMeteringAsync(), completableDeferredImpl);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public final void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
    }
}
