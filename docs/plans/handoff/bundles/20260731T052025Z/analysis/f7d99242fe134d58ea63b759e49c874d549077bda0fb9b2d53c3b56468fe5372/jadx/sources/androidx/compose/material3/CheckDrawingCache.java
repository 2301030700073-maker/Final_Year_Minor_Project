package androidx.compose.material3;

import android.graphics.PathMeasure;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPathMeasure;
import androidx.compose.ui.graphics.AndroidPath_androidKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CheckDrawingCache {
    public final AndroidPath checkPath;
    public final AndroidPathMeasure pathMeasure;
    public final AndroidPath pathToDraw;

    public CheckDrawingCache() {
        AndroidPath Path = AndroidPath_androidKt.Path();
        AndroidPathMeasure androidPathMeasure = new AndroidPathMeasure(new PathMeasure());
        AndroidPath Path2 = AndroidPath_androidKt.Path();
        this.checkPath = Path;
        this.pathMeasure = androidPathMeasure;
        this.pathToDraw = Path2;
    }
}
