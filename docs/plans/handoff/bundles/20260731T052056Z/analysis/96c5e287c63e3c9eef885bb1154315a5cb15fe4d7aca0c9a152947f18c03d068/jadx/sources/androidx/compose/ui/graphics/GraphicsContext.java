package androidx.compose.ui.graphics;

import androidx.cardview.widget.CardView;
import androidx.compose.ui.graphics.layer.GraphicsLayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface GraphicsContext {
    GraphicsLayer createGraphicsLayer();

    CardView.AnonymousClass1 getShadowContext();

    void releaseGraphicsLayer(GraphicsLayer graphicsLayer);
}
