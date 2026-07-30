package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.layer.GraphicsLayer;

/* compiled from: GraphicsContext.kt */
/* loaded from: classes.dex */
public interface GraphicsContext {
    GraphicsLayer createGraphicsLayer();

    void releaseGraphicsLayer(GraphicsLayer graphicsLayer);
}
