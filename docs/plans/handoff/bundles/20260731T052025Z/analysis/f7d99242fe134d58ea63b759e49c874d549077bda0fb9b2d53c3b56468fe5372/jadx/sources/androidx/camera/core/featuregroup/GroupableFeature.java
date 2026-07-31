package androidx.camera.core.featuregroup;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.featuregroup.impl.feature.DynamicRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.ImageFormatFeature;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class GroupableFeature {
    static {
        new DynamicRangeFeature();
        new FpsRangeFeature();
        new VideoStabilizationFeature();
        new ImageFormatFeature();
    }

    public GroupableFeature() {
        new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(11, this));
    }

    public abstract FeatureTypeInternal getFeatureTypeInternal();

    public boolean isSupportedIndividually(LegacySessionConfig legacySessionConfig, CameraInfoInternal cameraInfoInternal) {
        return true;
    }
}
