package androidx.camera.camera2.config;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import androidx.camera.camera2.compat.NoOpZoomCompat;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.impl.Quirks;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.layout.FlowLayoutBuildingBlocks;
import androidx.core.os.BuildCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import com.fsck.k9.mailstore.LocalStore;
import dagger.internal.DoubleCheck;
import dagger.internal.Provider;
import de.cketti.changelog.XmlParser;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.internal.ClassValueCache;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DaggerCameraAppComponent$CameraComponentImpl {
    public final Provider camera2CameraControlCompatImplProvider;
    public final DaggerCameraAppComponent$CameraAppComponentImpl cameraAppComponentImpl;
    public final Provider cameraCallbackMapProvider;
    public final LocalStore.AnonymousClass8 cameraConfig;
    public final Provider cameraControlAdapterProvider;
    public final Provider cameraControlStateAdapterProvider;
    public final Provider cameraGraphConfigProvider;
    public final Provider cameraInfoAdapterProvider;
    public final ConnectionPool cameraInternalAdapterProvider = new ConnectionPool(23, false);
    public final Provider cameraPipeCameraPropertiesProvider;
    public final Provider cameraQuirksProvider;
    public final Provider cameraStateAdapterProvider;
    public final Provider comboRequestListenerProvider;
    public final Provider evCompControlProvider;
    public final Provider evCompImplProvider;
    public final Provider flashControlProvider;
    public final Provider focusMeteringControlProvider;
    public final Provider intrinsicZoomCalculatorImplProvider;
    public final Provider lowLightBoostControlProvider;
    public final Provider outputSizesCorrectorProvider;
    public final Provider provideCamera2CameraControlProvider;
    public final Provider provideCameraIdStringProvider;
    public final Provider provideCameraMetadataProvider;
    public final Provider provideEncoderProfilesProvider;
    public final Provider provideStreamConfigurationMapProvider;
    public final Provider provideUseCaseThreadsProvider;
    public final Provider provideZslControlProvider;
    public final Provider state3AControlProvider;
    public final Provider stillCaptureRequestControlProvider;
    public final Provider streamConfigurationMapCompatProvider;
    public final CardView.AnonymousClass1 streamSpecsCalculator;
    public final Provider torchControlProvider;
    public final Provider useCaseManagerProvider;
    public final Provider videoUsageControlProvider;
    public final Provider zoomControlProvider;

    /* JADX WARN: Multi-variable type inference failed */
    public DaggerCameraAppComponent$CameraComponentImpl(DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl, LocalStore.AnonymousClass8 anonymousClass8, CardView.AnonymousClass1 anonymousClass1) {
        this.cameraAppComponentImpl = daggerCameraAppComponent$CameraAppComponentImpl;
        this.cameraConfig = anonymousClass8;
        this.streamSpecsCalculator = anonymousClass1;
        this.provideCameraMetadataProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 4);
        this.cameraPipeCameraPropertiesProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 3);
        this.provideZslControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 2);
        this.provideStreamConfigurationMapProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 9);
        this.outputSizesCorrectorProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 10);
        this.streamConfigurationMapCompatProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 8);
        this.cameraQuirksProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 7);
        this.provideUseCaseThreadsProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 11);
        this.state3AControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 6);
        this.comboRequestListenerProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 12);
        this.lowLightBoostControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 5);
        this.evCompImplProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 14);
        this.evCompControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 13);
        this.torchControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 16);
        this.flashControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 15);
        this.focusMeteringControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 17);
        this.stillCaptureRequestControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 18);
        this.videoUsageControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 19);
        this.zoomControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 20);
        this.camera2CameraControlCompatImplProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 22);
        this.provideCamera2CameraControlProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 21);
        this.cameraStateAdapterProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 23);
        this.cameraControlStateAdapterProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 25);
        this.cameraCallbackMapProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 26);
        this.provideCameraIdStringProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 28);
        this.provideEncoderProfilesProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 27);
        this.intrinsicZoomCalculatorImplProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 29);
        this.cameraInfoAdapterProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 24);
        this.cameraGraphConfigProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 30);
        this.useCaseManagerProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 1);
        this.cameraControlAdapterProvider = CameraDevices$CC.m(daggerCameraAppComponent$CameraAppComponentImpl, this, 31);
        ConnectionPool.setDelegate(this.cameraInternalAdapterProvider, DoubleCheck.provider(new XmlParser(0 == true ? 1 : 0, 2, daggerCameraAppComponent$CameraAppComponentImpl, this)));
    }

    public final TemplateParamsOverride templateParamsOverride() {
        CameraQuirks cameraQuirks = (CameraQuirks) this.cameraQuirksProvider.get();
        cameraQuirks.getClass();
        Quirks quirks = cameraQuirks.getQuirks();
        quirks.getClass();
        Iterator it = quirks.getAll(CaptureIntentPreviewQuirk.class).iterator();
        while (true) {
            if (it.hasNext()) {
                if (((CaptureIntentPreviewQuirk) it.next()).workaroundByCaptureIntentPreview()) {
                    break;
                }
            } else if (!quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class)) {
                return TargetAspectRatio.INSTANCE$5;
            }
        }
        return new FlowLayoutBuildingBlocks.WrapInfo(quirks);
    }

    public final ZoomCompat zoomCompat() {
        Range controlZoomRatioRangeSafely;
        CameraPipeCameraProperties cameraPipeCameraProperties = (CameraPipeCameraProperties) this.cameraPipeCameraPropertiesProvider.get();
        cameraPipeCameraProperties.getClass();
        CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
        if ("robolectric".equals(Build.FINGERPRINT)) {
            List<CameraCharacteristics.Key> list = NoOpZoomCompat.requiredCharacteristics;
            if (list == null || !list.isEmpty()) {
                for (CameraCharacteristics.Key key : list) {
                    if (Utf8.SafeProcessor.isWarnEnabled()) {
                        Log.w("CXCP", "Failed to read " + key + " for zoom features.");
                    }
                    key.getClass();
                    if (((Camera2CameraMetadata) cameraMetadata).get(key) == null) {
                        return new NoOpZoomCompat();
                    }
                }
            }
        } else if (Build.VERSION.SDK_INT >= 30 && (controlZoomRatioRangeSafely = BuildCompat.Api30Impl.getControlZoomRatioRangeSafely(cameraMetadata)) != null) {
            return new ClassValueCache(cameraPipeCameraProperties, controlZoomRatioRangeSafely);
        }
        return new CardView.AnonymousClass1(cameraPipeCameraProperties);
    }
}
