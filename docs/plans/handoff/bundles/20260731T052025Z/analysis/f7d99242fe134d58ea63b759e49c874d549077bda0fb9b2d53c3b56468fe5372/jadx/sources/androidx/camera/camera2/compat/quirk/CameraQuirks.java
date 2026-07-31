package androidx.camera.camera2.compat.quirk;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.Quirks;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraQuirks {
    public final CameraMetadata cameraMetadata;
    public final SynchronizedLazyImpl quirks$delegate;
    public final StreamConfigurationMapCompat streamConfigurationMapCompat;

    public CameraQuirks(CameraMetadata cameraMetadata, StreamConfigurationMapCompat streamConfigurationMapCompat) {
        streamConfigurationMapCompat.getClass();
        this.cameraMetadata = cameraMetadata;
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        this.quirks$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(5, this));
    }

    public final Quirks getQuirks() {
        return (Quirks) this.quirks$delegate.getValue();
    }
}
