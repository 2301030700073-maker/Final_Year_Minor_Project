package androidx.camera.camera2.compat.quirk;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AeFpsRangeLegacyQuirk implements AeFpsRangeQuirk {
    public final SynchronizedLazyImpl range$delegate;

    public AeFpsRangeLegacyQuirk(CameraMetadata cameraMetadata) {
        cameraMetadata.getClass();
        this.range$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(cameraMetadata, this));
    }
}
