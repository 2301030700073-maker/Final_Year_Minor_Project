package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VideoStabilizationFeature extends GroupableFeature {
    public static final VideoStabilization DEFAULT_STABILIZATION = VideoStabilization.OFF;
    public final VideoStabilization videoStabilization = VideoStabilization.PREVIEW;
    public final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.VIDEO_STABILIZATION;

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public final FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public final boolean isSupportedIndividually(LegacySessionConfig legacySessionConfig, CameraInfoInternal cameraInfoInternal) {
        int ordinal = this.videoStabilization.ordinal();
        if (ordinal == 0 || ordinal == 1) {
            return true;
        }
        if (ordinal == 2) {
            return cameraInfoInternal.isVideoStabilizationSupported();
        }
        if (ordinal == 3) {
            return cameraInfoInternal.isPreviewStabilizationSupported();
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return false;
    }

    public final String toString() {
        return "VideoStabilizationFeature(mode=" + this.videoStabilization.name() + ')';
    }
}
