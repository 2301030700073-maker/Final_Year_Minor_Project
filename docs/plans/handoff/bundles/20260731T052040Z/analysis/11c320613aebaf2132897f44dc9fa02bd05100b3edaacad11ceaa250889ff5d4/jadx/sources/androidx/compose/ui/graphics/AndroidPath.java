package androidx.compose.ui.graphics;

import android.graphics.Path;
import android.graphics.RectF;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidPath {
    public final Path internalPath;
    public float[] radii;
    public RectF rectF;

    public AndroidPath(Path path) {
        this.internalPath = path;
    }

    public final void reset() {
        this.internalPath.reset();
    }
}
