package androidx.compose.ui.graphics;

import android.graphics.PathMeasure;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidPathMeasure {
    public final PathMeasure internalPathMeasure;

    public AndroidPathMeasure(PathMeasure pathMeasure) {
        this.internalPathMeasure = pathMeasure;
    }

    public final void getSegment(float f, float f2, AndroidPath androidPath) {
        this.internalPathMeasure.getSegment(f, f2, androidPath.internalPath, true);
    }
}
