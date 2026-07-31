package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawCache {
    public AndroidCanvas cachedCanvas;
    public AndroidImageBitmap mCachedImage;
    public long size = 0;
    public int config = 0;
    public final CanvasDrawScope cacheScope = new CanvasDrawScope();
}
