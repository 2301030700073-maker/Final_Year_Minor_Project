package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DrawCache {
    public AndroidCanvas cachedCanvas;
    public AndroidImageBitmap mCachedImage;
    public long size = 0;
    public int config = 0;
    public final CanvasDrawScope cacheScope = new CanvasDrawScope();
}
