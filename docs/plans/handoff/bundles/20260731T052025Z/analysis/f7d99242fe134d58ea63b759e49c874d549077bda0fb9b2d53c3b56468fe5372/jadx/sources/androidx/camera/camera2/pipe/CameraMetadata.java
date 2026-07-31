package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.room.util.DBUtil;
import java.util.HashMap;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CameraMetadata extends Metadata, UnsafeWrapper {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int[] EMPTY_INT_ARRAY;

        static {
            HashMap hashMap = Metadata.Key.keys;
            DBUtil.create("androidx.camera.camera2.pipe.scalar.streamConfigurationMap", Reflection.getOrCreateKotlinClass(CameraStreamConfigurationMap.class));
            DBUtil.create("androidx.camera.camera2.pipe.scalar.multiResolutionStreamConfigurationMap", Reflection.getOrCreateKotlinClass(CameraMultiResolutionStreamConfigurationMap.class));
            DBUtil.create("androidx.camera.camera2.pipe.request.availableColorSpaceProfilesMap", Reflection.getOrCreateKotlinClass(CameraColorSpaceProfiles.class));
            EMPTY_INT_ARRAY = new int[0];
        }

        public static boolean getSupportsAutoFocusTrigger(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE;
            key.getClass();
            Camera2CameraMetadata camera2CameraMetadata = (Camera2CameraMetadata) cameraMetadata;
            Float f = (Float) camera2CameraMetadata.get(key);
            if (f == null) {
                CameraCharacteristics.Key key2 = CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES;
                key2.getClass();
                int[] iArr = (int[]) camera2CameraMetadata.get(key2);
                if (iArr == null) {
                    return false;
                }
                if (!ArraysKt___ArraysKt.contains(iArr, 1) && !ArraysKt___ArraysKt.contains(iArr, 2) && !ArraysKt___ArraysKt.contains(iArr, 4) && !ArraysKt___ArraysKt.contains(iArr, 3)) {
                    return false;
                }
            } else if (f.floatValue() <= 0.0f) {
                return false;
            }
            return true;
        }

        public static boolean getSupportsPreviewStabilization(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            if (Build.VERSION.SDK_INT < 33) {
                return false;
            }
            CameraMetadata.Companion.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES;
            key.getClass();
            int[] iArr = (int[]) ((Camera2CameraMetadata) cameraMetadata).get(key);
            if (iArr == null) {
                iArr = EMPTY_INT_ARRAY;
            }
            return ArraysKt___ArraysKt.contains(iArr, 2);
        }

        public static boolean isHardwareLevelLegacy(CameraMetadata cameraMetadata) {
            cameraMetadata.getClass();
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
            key.getClass();
            Integer num = (Integer) ((Camera2CameraMetadata) cameraMetadata).get(key);
            return num != null && num.intValue() == 2;
        }
    }
}
