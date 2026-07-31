package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.MenuHostHelper;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutNodeDrawScope implements DrawScope {
    public final CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
    public DrawModifierNode drawNode;

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo */
    public final void mo523drawArcyD3GUKo(long j, float f, float f2, long j2, long j3, float f3, Stroke stroke) {
        this.canvasDrawScope.mo523drawArcyD3GUKo(j, f, f2, j2, j3, f3, stroke);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg */
    public final void mo524drawCircleVaOC9Bg(long j, float f, long j2, DrawStyle drawStyle) {
        this.canvasDrawScope.mo524drawCircleVaOC9Bg(j, f, j2, drawStyle);
    }

    public final void drawContent() {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        Canvas canvas = canvasDrawScope.drawContext.getCanvas();
        DelegatableNode delegatableNode = this.drawNode;
        if (delegatableNode == null) {
            throw Modifier.CC.m405m("Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer.");
        }
        Modifier.Node node = (Modifier.Node) delegatableNode;
        Modifier.Node node2 = node.node.child;
        if (node2 != null && (node2.aggregateChildKindSet & 4) != 0) {
            while (node2 != null) {
                int i = node2.kindSet;
                if ((i & 2) != 0) {
                    break;
                } else if ((i & 4) != 0) {
                    break;
                } else {
                    node2 = node2.child;
                }
            }
        }
        node2 = null;
        if (node2 == null) {
            NodeCoordinator m604requireCoordinator64DMado = HitTestResultKt.m604requireCoordinator64DMado(delegatableNode, 4);
            if (m604requireCoordinator64DMado.getTail() == node.node) {
                m604requireCoordinator64DMado = m604requireCoordinator64DMado.wrapped;
                m604requireCoordinator64DMado.getClass();
            }
            m604requireCoordinator64DMado.performDraw(canvas, (GraphicsLayer) canvasDrawScope.drawContext.mMenuProviders);
            return;
        }
        MutableVector mutableVector = null;
        while (node2 != null) {
            if (node2 instanceof DrawModifierNode) {
                DrawModifierNode drawModifierNode = (DrawModifierNode) node2;
                GraphicsLayer graphicsLayer = (GraphicsLayer) canvasDrawScope.drawContext.mMenuProviders;
                NodeCoordinator m604requireCoordinator64DMado2 = HitTestResultKt.m604requireCoordinator64DMado(drawModifierNode, 4);
                long m1072toSizeozmzZPI = Validate.m1072toSizeozmzZPI(m604requireCoordinator64DMado2.measuredSize);
                LayoutNode layoutNode = m604requireCoordinator64DMado2.layoutNode;
                layoutNode.getClass();
                ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSharedDrawScope().m608drawDirecteZhPAX0$ui(canvas, m1072toSizeozmzZPI, m604requireCoordinator64DMado2, drawModifierNode, graphicsLayer);
            } else if ((node2.kindSet & 4) != 0 && (node2 instanceof DelegatingNode)) {
                int i2 = 0;
                for (Modifier.Node node3 = ((DelegatingNode) node2).delegate; node3 != null; node3 = node3.child) {
                    if ((node3.kindSet & 4) != 0) {
                        i2++;
                        if (i2 == 1) {
                            node2 = node3;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16]);
                            }
                            if (node2 != null) {
                                mutableVector.add(node2);
                                node2 = null;
                            }
                            mutableVector.add(node3);
                        }
                    }
                }
                if (i2 == 1) {
                }
            }
            node2 = HitTestResultKt.access$pop(mutableVector);
        }
    }

    /* renamed from: drawDirect-eZhPAX0$ui, reason: not valid java name */
    public final void m608drawDirecteZhPAX0$ui(Canvas canvas, long j, NodeCoordinator nodeCoordinator, DrawModifierNode drawModifierNode, GraphicsLayer graphicsLayer) {
        DrawModifierNode drawModifierNode2 = this.drawNode;
        this.drawNode = drawModifierNode;
        LayoutDirection layoutDirection = nodeCoordinator.layoutNode.layoutDirection;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
        CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) menuHostHelper.mProviderToLifecycleContainers).drawParams;
        Density density = drawParams.density;
        LayoutDirection layoutDirection2 = drawParams.layoutDirection;
        Canvas canvas2 = menuHostHelper.getCanvas();
        MenuHostHelper menuHostHelper2 = canvasDrawScope.drawContext;
        long m795getSizeNHjbRc = menuHostHelper2.m795getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = (GraphicsLayer) menuHostHelper2.mMenuProviders;
        menuHostHelper2.setDensity(nodeCoordinator);
        menuHostHelper2.setLayoutDirection(layoutDirection);
        menuHostHelper2.setCanvas(canvas);
        menuHostHelper2.m797setSizeuvyYCjk(j);
        menuHostHelper2.mMenuProviders = graphicsLayer;
        canvas.save();
        try {
            drawModifierNode.draw(this);
            canvas.restore();
            menuHostHelper2.setDensity(density);
            menuHostHelper2.setLayoutDirection(layoutDirection2);
            menuHostHelper2.setCanvas(canvas2);
            menuHostHelper2.m797setSizeuvyYCjk(m795getSizeNHjbRc);
            menuHostHelper2.mMenuProviders = graphicsLayer2;
            this.drawNode = drawModifierNode2;
        } catch (Throwable th) {
            canvas.restore();
            menuHostHelper2.setDensity(density);
            menuHostHelper2.setLayoutDirection(layoutDirection2);
            menuHostHelper2.setCanvas(canvas2);
            menuHostHelper2.m797setSizeuvyYCjk(m795getSizeNHjbRc);
            menuHostHelper2.mMenuProviders = graphicsLayer2;
            throw th;
        }
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs */
    public final void mo525drawImageAZ2fEMs(ImageBitmap imageBitmap, long j, long j2, long j3, float f, ColorFilter colorFilter, int i) {
        this.canvasDrawScope.mo525drawImageAZ2fEMs(imageBitmap, j, j2, j3, f, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0 */
    public final void mo527drawLineNGM6Ib0(long j, long j2, long j3, float f) {
        this.canvasDrawScope.mo527drawLineNGM6Ib0(j, j2, j3, f);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU */
    public final void mo528drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.canvasDrawScope.mo528drawPathGBMwjPU(androidPath, brush, f, drawStyle, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI */
    public final void mo529drawPathLG529CI(AndroidPath androidPath, long j, float f, DrawStyle drawStyle) {
        this.canvasDrawScope.mo529drawPathLG529CI(androidPath, j, f, drawStyle);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0 */
    public final void mo530drawRectnJ9OG0(long j, long j2, long j3, float f, ColorFilter colorFilter, int i) {
        this.canvasDrawScope.mo530drawRectnJ9OG0(j, j2, j3, f, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-ZuiqVtQ */
    public final void mo531drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle) {
        this.canvasDrawScope.mo531drawRoundRectZuiqVtQ(brush, j, j2, j3, f, drawStyle);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA */
    public final void mo532drawRoundRectuAw5IA(long j, long j2, long j3, long j4, DrawStyle drawStyle) {
        this.canvasDrawScope.mo532drawRoundRectuAw5IA(j, j2, j3, j4, drawStyle);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0 */
    public final long mo533getCenterF1C5BW0() {
        return this.canvasDrawScope.mo533getCenterF1C5BW0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final MenuHostHelper getDrawContext() {
        return this.canvasDrawScope.drawContext;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.canvasDrawScope.getFontScale();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final LayoutDirection getLayoutDirection() {
        return this.canvasDrawScope.drawParams.layoutDirection;
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getSize-NH-jbRc */
    public final long mo534getSizeNHjbRc() {
        return this.canvasDrawScope.drawContext.m795getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final int mo171roundToPx0680j_4(float f) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Modifier.CC.m388$default$roundToPx0680j_4(canvasDrawScope, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final float mo172toDpGaN1DYA(long j) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Modifier.CC.m389$default$toDpGaN1DYA(j, canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo173toDpu2uoSUM(float f) {
        return f / this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final long mo175toDpSizekrfVVM(long j) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Modifier.CC.m390$default$toDpSizekrfVVM(j, canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final float mo176toPxR2X_6o(long j) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Modifier.CC.m391$default$toPxR2X_6o(j, canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo177toPx0680j_4(float f) {
        return this.canvasDrawScope.getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final long mo178toSizeXkaWNTQ(long j) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Modifier.CC.m392$default$toSizeXkaWNTQ(j, canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public final long mo179toSp0xMU5do(float f) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Modifier.CC.m393$default$toSp0xMU5do(canvasDrawScope, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo180toSpkPz2Gy4(float f) {
        return this.canvasDrawScope.mo180toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo174toDpu2uoSUM(int i) {
        return this.canvasDrawScope.mo174toDpu2uoSUM(i);
    }
}
