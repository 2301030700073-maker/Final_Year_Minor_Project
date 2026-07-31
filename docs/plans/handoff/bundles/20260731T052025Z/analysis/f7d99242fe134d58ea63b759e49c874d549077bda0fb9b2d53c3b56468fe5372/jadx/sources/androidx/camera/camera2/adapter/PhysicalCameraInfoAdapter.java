package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.CameraInfo;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PhysicalCameraInfoAdapter implements CameraInfo, UnsafeWrapper {
    public final SynchronizedLazyImpl camera2CameraInfo$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(1, this));
    public final CameraPipeCameraProperties cameraProperties;

    public PhysicalCameraInfoAdapter(CameraPipeCameraProperties cameraPipeCameraProperties) {
        this.cameraProperties = cameraPipeCameraProperties;
    }

    @Override // androidx.camera.core.CameraInfo
    public final int getLensFacing() {
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
        key.getClass();
        Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
        obj.getClass();
        int intValue = ((Number) obj).intValue();
        if (intValue == 0) {
            return 0;
        }
        if (intValue == 1) {
            return 1;
        }
        if (intValue == 2) {
            return 2;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(intValue, "The specified lens facing integer ", " can not be recognized."));
        return 0;
    }

    @Override // androidx.camera.core.CameraInfo
    public final int getSensorRotationDegrees(int i) {
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_ORIENTATION;
        key.getClass();
        Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
        obj.getClass();
        return IntOffsetKt.getRelativeImageRotation(IntOffsetKt.surfaceRotationToDegrees(i), ((Number) obj).intValue(), 1 == getLensFacing());
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(Camera2CameraInfo.class))) {
            Camera2CameraInfo camera2CameraInfo = (Camera2CameraInfo) this.camera2CameraInfo$delegate.getValue();
            camera2CameraInfo.getClass();
            return camera2CameraInfo;
        }
        boolean equals = classReference.equals(Reflection.getOrCreateKotlinClass(CameraPipeCameraProperties.class));
        CameraPipeCameraProperties cameraPipeCameraProperties = this.cameraProperties;
        if (equals) {
            return cameraPipeCameraProperties;
        }
        boolean equals2 = classReference.equals(Reflection.getOrCreateKotlinClass(android.hardware.camera2.CameraMetadata.class));
        CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
        if (!equals2) {
            return ((Camera2CameraMetadata) cameraMetadata).unwrapAs(classReference);
        }
        cameraMetadata.getClass();
        return cameraMetadata;
    }

    @Override // androidx.camera.core.CameraInfo
    public final int getSensorRotationDegrees() {
        return getSensorRotationDegrees(0);
    }
}
