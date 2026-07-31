package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DrawCache {
    public AndroidCanvas cachedCanvas;
    public AndroidImageBitmap mCachedImage;
    public long size = 0;
    public int config = 0;
    public final CanvasDrawScope cacheScope = new CanvasDrawScope();
}
