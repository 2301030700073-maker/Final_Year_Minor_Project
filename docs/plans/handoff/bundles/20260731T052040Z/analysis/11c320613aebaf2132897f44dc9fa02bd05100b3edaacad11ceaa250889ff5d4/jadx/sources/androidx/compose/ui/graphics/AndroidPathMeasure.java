package androidx.compose.ui.graphics;

import android.graphics.PathMeasure;
import androidx.compose.ui.Modifier;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidPathMeasure {
    public final PathMeasure internalPathMeasure;

    public AndroidPathMeasure(PathMeasure pathMeasure) {
        this.internalPathMeasure = pathMeasure;
    }

    public final void getSegment(float f, float f2, AndroidPath androidPath) {
        if (!Modifier.CC.m182m((Object) androidPath)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
        } else {
            this.internalPathMeasure.getSegment(f, f2, androidPath.internalPath, true);
        }
    }
}
