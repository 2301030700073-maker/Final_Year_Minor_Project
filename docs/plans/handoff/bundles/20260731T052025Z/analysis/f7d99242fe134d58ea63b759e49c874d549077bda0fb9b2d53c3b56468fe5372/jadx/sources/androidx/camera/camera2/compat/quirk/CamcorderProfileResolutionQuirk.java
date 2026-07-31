package androidx.camera.camera2.compat.quirk;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.core.impl.Quirk;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CamcorderProfileResolutionQuirk implements Quirk {
    public final StreamConfigurationMapCompat streamConfigurationMapCompat;
    public final SynchronizedLazyImpl supportedResolution$delegate;

    public CamcorderProfileResolutionQuirk(StreamConfigurationMapCompat streamConfigurationMapCompat) {
        streamConfigurationMapCompat.getClass();
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        this.supportedResolution$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(4, this));
    }
}
