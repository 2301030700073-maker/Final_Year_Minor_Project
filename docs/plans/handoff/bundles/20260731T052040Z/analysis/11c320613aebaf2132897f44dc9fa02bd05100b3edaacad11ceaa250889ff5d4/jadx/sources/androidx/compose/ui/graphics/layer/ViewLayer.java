package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.view.View;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.DialogWrapper$1$2;
import kotlin.jvm.functions.Function1;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewLayer extends View {
    public static final DialogWrapper$1$2 LayerOutlineProvider = new DialogWrapper$1$2(1);
    public boolean canUseCompositingLayer;
    public final CanvasDrawScope canvasDrawScope;
    public final CanvasHolder canvasHolder;
    public Density density;
    public Function1 drawBlock;
    public boolean isInvalidated;
    public Outline layerOutline;
    public LayoutDirection layoutDirection;
    public final DrawChildContainer ownerView;
    public GraphicsLayer parentLayer;

    public ViewLayer(DrawChildContainer drawChildContainer, CanvasHolder canvasHolder, CanvasDrawScope canvasDrawScope) {
        super(drawChildContainer.getContext());
        this.ownerView = drawChildContainer;
        this.canvasHolder = canvasHolder;
        this.canvasDrawScope = canvasDrawScope;
        setOutlineProvider(LayerOutlineProvider);
        this.canUseCompositingLayer = true;
        this.density = DrawStyle.DefaultDensity;
        this.layoutDirection = LayoutDirection.Ltr;
        GraphicsLayerImpl.Companion.getClass();
        this.drawBlock = GraphicsLayer$drawBlock$1.INSTANCE$1;
        setWillNotDraw(false);
        setClipBounds(null);
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        CanvasHolder canvasHolder = this.canvasHolder;
        AndroidCanvas androidCanvas = canvasHolder.androidCanvas;
        Canvas canvas2 = androidCanvas.internalCanvas;
        androidCanvas.internalCanvas = canvas;
        Density density = this.density;
        LayoutDirection layoutDirection = this.layoutDirection;
        float width = getWidth();
        float height = getHeight();
        long floatToRawIntBits = (Float.floatToRawIntBits(height) & 4294967295L) | (Float.floatToRawIntBits(width) << 32);
        GraphicsLayer graphicsLayer = this.parentLayer;
        Function1 function1 = this.drawBlock;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        ProcessFinisher processFinisher = canvasDrawScope.drawContext;
        CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) processFinisher.lastActivityManager).drawParams;
        Density density2 = drawParams.density;
        LayoutDirection layoutDirection2 = drawParams.layoutDirection;
        androidx.compose.ui.graphics.Canvas canvas3 = processFinisher.getCanvas();
        ProcessFinisher processFinisher2 = canvasDrawScope.drawContext;
        long m729getSizeNHjbRc = processFinisher2.m729getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = (GraphicsLayer) processFinisher2.config;
        processFinisher2.setDensity(density);
        processFinisher2.setLayoutDirection(layoutDirection);
        processFinisher2.setCanvas(androidCanvas);
        processFinisher2.m730setSizeuvyYCjk(floatToRawIntBits);
        processFinisher2.config = graphicsLayer;
        androidCanvas.save();
        try {
            function1.invoke(canvasDrawScope);
            androidCanvas.restore();
            processFinisher2.setDensity(density2);
            processFinisher2.setLayoutDirection(layoutDirection2);
            processFinisher2.setCanvas(canvas3);
            processFinisher2.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            processFinisher2.config = graphicsLayer2;
            canvasHolder.androidCanvas.internalCanvas = canvas2;
            this.isInvalidated = false;
        } catch (Throwable th) {
            androidCanvas.restore();
            processFinisher2.setDensity(density2);
            processFinisher2.setLayoutDirection(layoutDirection2);
            processFinisher2.setCanvas(canvas3);
            processFinisher2.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            processFinisher2.config = graphicsLayer2;
            throw th;
        }
    }

    public final boolean getCanUseCompositingLayer$ui_graphics() {
        return this.canUseCompositingLayer;
    }

    public final CanvasHolder getCanvasHolder() {
        return this.canvasHolder;
    }

    public final View getOwnerView() {
        return this.ownerView;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.canUseCompositingLayer;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (this.isInvalidated) {
            return;
        }
        this.isInvalidated = true;
        super.invalidate();
    }

    public final void setCanUseCompositingLayer$ui_graphics(boolean z) {
        if (this.canUseCompositingLayer != z) {
            this.canUseCompositingLayer = z;
            invalidate();
        }
    }

    public final void setInvalidated(boolean z) {
        this.isInvalidated = z;
    }

    @Override // android.view.View
    public final void forceLayout() {
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
