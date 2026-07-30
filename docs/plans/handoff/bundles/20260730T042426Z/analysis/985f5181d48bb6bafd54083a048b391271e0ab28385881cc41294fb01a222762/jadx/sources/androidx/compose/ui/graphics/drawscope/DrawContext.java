package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: DrawContext.kt */
/* loaded from: classes.dex */
public interface DrawContext {
    Canvas getCanvas();

    Density getDensity();

    GraphicsLayer getGraphicsLayer();

    LayoutDirection getLayoutDirection();

    /* renamed from: getSize-NH-jbRc */
    long mo1495getSizeNHjbRc();

    DrawTransform getTransform();

    void setCanvas(Canvas canvas);

    void setDensity(Density density);

    void setGraphicsLayer(GraphicsLayer graphicsLayer);

    void setLayoutDirection(LayoutDirection layoutDirection);

    /* renamed from: setSize-uvyYCjk */
    void mo1496setSizeuvyYCjk(long j);
}
