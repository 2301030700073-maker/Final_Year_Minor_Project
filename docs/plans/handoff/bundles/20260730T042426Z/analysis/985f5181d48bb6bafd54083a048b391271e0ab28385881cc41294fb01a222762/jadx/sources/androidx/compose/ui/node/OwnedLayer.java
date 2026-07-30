package androidx.compose.ui.node;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: OwnedLayer.kt */
/* loaded from: classes.dex */
public interface OwnedLayer {
    void destroy();

    void drawLayer(Canvas canvas, GraphicsLayer graphicsLayer);

    void invalidate();

    /* renamed from: inverseTransform-58bKbWc, reason: not valid java name */
    void mo1905inverseTransform58bKbWc(float[] fArr);

    /* renamed from: isInLayer-k-4lQ0M, reason: not valid java name */
    boolean mo1906isInLayerk4lQ0M(long j);

    void mapBounds(MutableRect mutableRect, boolean z);

    /* renamed from: mapOffset-8S9VItk, reason: not valid java name */
    long mo1907mapOffset8S9VItk(long j, boolean z);

    /* renamed from: move--gyyYBs, reason: not valid java name */
    void mo1908movegyyYBs(long j);

    /* renamed from: resize-ozmzZPI, reason: not valid java name */
    void mo1909resizeozmzZPI(long j);

    void reuseLayer(Function2 function2, Function0 function0);

    /* renamed from: transform-58bKbWc, reason: not valid java name */
    void mo1910transform58bKbWc(float[] fArr);

    void updateDisplayList();

    void updateLayerProperties(ReusableGraphicsLayerScope reusableGraphicsLayerScope);
}
