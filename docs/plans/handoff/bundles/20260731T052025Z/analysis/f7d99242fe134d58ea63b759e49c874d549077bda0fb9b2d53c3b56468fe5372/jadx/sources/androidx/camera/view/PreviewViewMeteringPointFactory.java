package androidx.camera.view;

import android.graphics.PointF;
import android.graphics.Rect;
import androidx.camera.core.MeteringPointFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreviewViewMeteringPointFactory extends MeteringPointFactory {
    public final PreviewTransformation mPreviewTransformation;
    public Rect mSensorRect = null;

    static {
        new PointF(2.0f, 2.0f);
    }

    public PreviewViewMeteringPointFactory(PreviewTransformation previewTransformation) {
        this.mPreviewTransformation = previewTransformation;
    }
}
