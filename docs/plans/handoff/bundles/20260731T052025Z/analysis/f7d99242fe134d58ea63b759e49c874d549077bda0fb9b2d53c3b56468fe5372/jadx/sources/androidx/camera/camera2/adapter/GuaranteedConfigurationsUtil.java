package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.ArrayList;
import java.util.List;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class GuaranteedConfigurationsUtil {
    public static final SynchronizedLazyImpl QUERYABLE_VIC_FCQ_COMBINATIONS$delegate = new SynchronizedLazyImpl(new ImmLeaksCleaner$$ExternalSyntheticLambda0(6));
    public static final SynchronizedLazyImpl QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate = new SynchronizedLazyImpl(new ImmLeaksCleaner$$ExternalSyntheticLambda0(7));

    public static ArrayList createPrivJpegXCombinations(SurfaceConfig.ConfigSize configSize, SurfaceConfig.ConfigSize configSize2) {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        StreamUseCase streamUseCase = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
        StreamUseCase streamUseCase2 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        surfaceCombination.addSurfaceConfig(VerboseLogger.create(configType, configSize, streamUseCase2));
        surfaceCombination.addSurfaceConfig(VerboseLogger.create(SurfaceConfig.ConfigType.JPEG, configSize2, streamUseCase2));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(VerboseLogger.create(configType, configSize, streamUseCase2));
        surfaceCombination2.addSurfaceConfig(VerboseLogger.create(SurfaceConfig.ConfigType.JPEG_R, configSize2, streamUseCase2));
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    public static ArrayList getQueryableFcqCombinations$camera_camera2(CameraMetadata cameraMetadata, VideoStabilization videoStabilization) {
        cameraMetadata.getClass();
        videoStabilization.getClass();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 35) {
            CameraCharacteristics.Key key = CameraCharacteristics.INFO_SESSION_CONFIGURATION_QUERY_VERSION;
            key.getClass();
            Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
            if (obj == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                return null;
            }
            int intValue = ((Number) obj).intValue();
            if (intValue >= 35 && videoStabilization != VideoStabilization.ON) {
                arrayList.addAll((List) QUERYABLE_VIC_FCQ_COMBINATIONS$delegate.getValue());
            }
            if (intValue >= 36 && videoStabilization != VideoStabilization.PREVIEW) {
                arrayList.addAll((List) QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate.getValue());
                return arrayList;
            }
        }
        return arrayList;
    }
}
