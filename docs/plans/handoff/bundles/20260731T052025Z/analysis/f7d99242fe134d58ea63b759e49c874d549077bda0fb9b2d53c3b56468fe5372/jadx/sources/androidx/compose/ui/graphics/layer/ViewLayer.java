package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.view.View;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContextKt;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupLayout;
import androidx.core.view.MenuHostHelper;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewLayer extends View {
    public static final PopupLayout.AnonymousClass2 LayerOutlineProvider = new PopupLayout.AnonymousClass2(2);
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
        this.density = DrawContextKt.DefaultDensity;
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
        MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
        CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) menuHostHelper.mProviderToLifecycleContainers).drawParams;
        Density density2 = drawParams.density;
        LayoutDirection layoutDirection2 = drawParams.layoutDirection;
        androidx.compose.ui.graphics.Canvas canvas3 = menuHostHelper.getCanvas();
        MenuHostHelper menuHostHelper2 = canvasDrawScope.drawContext;
        long m795getSizeNHjbRc = menuHostHelper2.m795getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = (GraphicsLayer) menuHostHelper2.mMenuProviders;
        menuHostHelper2.setDensity(density);
        menuHostHelper2.setLayoutDirection(layoutDirection);
        menuHostHelper2.setCanvas(androidCanvas);
        menuHostHelper2.m797setSizeuvyYCjk(floatToRawIntBits);
        menuHostHelper2.mMenuProviders = graphicsLayer;
        androidCanvas.save();
        try {
            function1.invoke(canvasDrawScope);
            androidCanvas.restore();
            menuHostHelper2.setDensity(density2);
            menuHostHelper2.setLayoutDirection(layoutDirection2);
            menuHostHelper2.setCanvas(canvas3);
            menuHostHelper2.m797setSizeuvyYCjk(m795getSizeNHjbRc);
            menuHostHelper2.mMenuProviders = graphicsLayer2;
            canvasHolder.androidCanvas.internalCanvas = canvas2;
            this.isInvalidated = false;
        } catch (Throwable th) {
            androidCanvas.restore();
            menuHostHelper2.setDensity(density2);
            menuHostHelper2.setLayoutDirection(layoutDirection2);
            menuHostHelper2.setCanvas(canvas3);
            menuHostHelper2.m797setSizeuvyYCjk(m795getSizeNHjbRc);
            menuHostHelper2.mMenuProviders = graphicsLayer2;
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
