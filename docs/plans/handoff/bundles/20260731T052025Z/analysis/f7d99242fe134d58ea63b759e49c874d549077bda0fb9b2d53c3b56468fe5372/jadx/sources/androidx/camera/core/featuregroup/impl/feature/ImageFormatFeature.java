package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.featuregroup.GroupableFeature;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageFormatFeature extends GroupableFeature {
    public final int imageCaptureOutputFormat = 1;
    public final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.IMAGE_FORMAT;

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public final FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImageFormatFeature(imageCaptureOutputFormat=");
        int i = this.imageCaptureOutputFormat;
        return CameraDevices$CC.m(sb, i != 0 ? i != 1 ? CameraDevices$CC.m("UNDEFINED(", i, ')') : "JPEG_R" : "JPEG", ')');
    }
}
