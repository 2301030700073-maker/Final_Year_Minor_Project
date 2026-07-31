package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExcludedSupportedSizesQuirk;
import androidx.camera.camera2.compat.quirk.ExtraSupportedOutputSizeQuirk;
import androidx.camera.camera2.pipe.CameraMetadata;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputSizesCorrector {
    public final CameraMetadata cameraMetadata;
    public final ExcludedSupportedSizesQuirk excludedSupportedSizesQuirk = (ExcludedSupportedSizesQuirk) DeviceQuirks.getAll().get(ExcludedSupportedSizesQuirk.class);
    public final ExtraSupportedOutputSizeQuirk extraSupportedOutputSizeQuirk = (ExtraSupportedOutputSizeQuirk) DeviceQuirks.getAll().get(ExtraSupportedOutputSizeQuirk.class);

    public OutputSizesCorrector(CameraMetadata cameraMetadata) {
        this.cameraMetadata = cameraMetadata;
    }
}
