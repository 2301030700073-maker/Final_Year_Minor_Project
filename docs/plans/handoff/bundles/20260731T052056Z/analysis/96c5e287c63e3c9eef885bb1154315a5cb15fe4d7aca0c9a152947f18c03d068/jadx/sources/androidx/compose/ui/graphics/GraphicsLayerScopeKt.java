package androidx.compose.ui.graphics;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.platform.CompositionLocalsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GraphicsLayerScopeKt {
    public static final long DefaultShadowColor;

    static {
        int i = Color.$r8$clinit;
        DefaultShadowColor = Color.Black;
    }

    public static final GraphicsLayer rememberGraphicsLayer(GapComposer gapComposer) {
        GraphicsContext graphicsContext = (GraphicsContext) gapComposer.consume(CompositionLocalsKt.LocalGraphicsContext);
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new GraphicsContextObserver(graphicsContext);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return ((GraphicsContextObserver) rememberedValue).graphicsLayer;
    }
}
