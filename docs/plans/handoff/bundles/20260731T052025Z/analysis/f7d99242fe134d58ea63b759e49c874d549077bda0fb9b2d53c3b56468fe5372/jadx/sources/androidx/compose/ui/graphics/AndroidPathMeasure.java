package androidx.compose.ui.graphics;

import android.graphics.PathMeasure;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPathMeasure {
    public final PathMeasure internalPathMeasure;

    public AndroidPathMeasure(PathMeasure pathMeasure) {
        this.internalPathMeasure = pathMeasure;
    }

    public final void getSegment(float f, float f2, AndroidPath androidPath) {
        if (!ImageAnalysis$$ExternalSyntheticLambda3.m(androidPath)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
        } else {
            this.internalPathMeasure.getSegment(f, f2, androidPath.internalPath, true);
        }
    }
}
