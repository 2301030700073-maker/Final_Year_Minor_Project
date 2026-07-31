package androidx.camera.core.featuregroup.impl.feature;

import android.util.Range;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.featuregroup.GroupableFeature;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FpsRangeFeature extends GroupableFeature {
    public static final Range DEFAULT_FPS_RANGE = new Range(30, 30);
    public final int minFps = 60;
    public final int maxFps = 60;
    public final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.FPS_RANGE;

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public final FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FpsRangeFeature(minFps=");
        sb.append(this.minFps);
        sb.append(", maxFps=");
        return CameraDevices$CC.m(sb, this.maxFps, ')');
    }
}
