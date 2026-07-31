package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.pipe.CameraMetadata;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api35Compat {
    public static final List getAvailableSessionCharacteristicsKeys(CameraCharacteristics cameraCharacteristics) {
        return cameraCharacteristics.getAvailableSessionCharacteristicsKeys();
    }

    public static final int getDefaultTorchStrengthLevel(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.FLASH_TORCH_STRENGTH_DEFAULT_LEVEL;
        key.getClass();
        Integer num = (Integer) ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public static final int getMaxTorchStrengthLevel(CameraMetadata cameraMetadata) {
        CameraCharacteristics.Key key;
        cameraMetadata.getClass();
        key = CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL;
        key.getClass();
        Integer num = (Integer) ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public static final boolean isTorchStrengthSupported(CameraMetadata cameraMetadata) {
        CameraCharacteristics.Key key;
        cameraMetadata.getClass();
        key = CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL;
        key.getClass();
        Integer num = (Integer) ((Camera2CameraMetadata) cameraMetadata).get(key);
        return num != null && num.intValue() > 1;
    }
}
