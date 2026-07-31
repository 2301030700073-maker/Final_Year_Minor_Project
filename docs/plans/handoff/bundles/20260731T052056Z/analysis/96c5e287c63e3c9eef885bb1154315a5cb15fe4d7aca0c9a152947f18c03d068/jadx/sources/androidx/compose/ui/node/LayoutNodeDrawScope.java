package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.caverock.androidsvg.SVG;
import kotlin.ExceptionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutNodeDrawScope implements DrawScope {
    public final CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
    public DrawModifierNode drawNode;

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo */
    public final void mo465drawArcyD3GUKo(long j, float f, float f2, long j2, long j3, float f3, DrawStyle drawStyle) {
        this.canvasDrawScope.mo465drawArcyD3GUKo(j, f, f2, j2, j3, f3, drawStyle);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg */
    public final void mo466drawCircleVaOC9Bg(long j, float f, long j2, DrawStyle drawStyle) {
        this.canvasDrawScope.mo466drawCircleVaOC9Bg(j, f, j2, drawStyle);
    }

    public final void drawContent() {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        SVG svg = canvasDrawScope.drawContext;
        Canvas canvas = canvasDrawScope.drawContext.getCanvas();
        DelegatableNode delegatableNode = this.drawNode;
        if (delegatableNode == null) {
            throw Modifier.CC.m("Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer.");
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
            NodeCoordinator m547requireCoordinator64DMado = HitTestResultKt.m547requireCoordinator64DMado(delegatableNode, 4);
            if (m547requireCoordinator64DMado.getTail() == node.node) {
                m547requireCoordinator64DMado = m547requireCoordinator64DMado.wrapped;
                m547requireCoordinator64DMado.getClass();
            }
            m547requireCoordinator64DMado.performDraw(canvas, (GraphicsLayer) svg.cssRules);
            return;
        }
        MutableVector mutableVector = null;
        while (node2 != null) {
            if (node2 instanceof DrawModifierNode) {
                DrawModifierNode drawModifierNode = (DrawModifierNode) node2;
                GraphicsLayer graphicsLayer = (GraphicsLayer) svg.cssRules;
                NodeCoordinator m547requireCoordinator64DMado2 = HitTestResultKt.m547requireCoordinator64DMado(drawModifierNode, 4);
                long m813toSizeozmzZPI = ExceptionsKt.m813toSizeozmzZPI(m547requireCoordinator64DMado2.measuredSize);
                LayoutNode layoutNode = m547requireCoordinator64DMado2.layoutNode;
                layoutNode.getClass();
                ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSharedDrawScope().m551drawDirecteZhPAX0$ui(canvas, m813toSizeozmzZPI, m547requireCoordinator64DMado2, drawModifierNode, graphicsLayer);
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
            node2 = HitTestResultKt.pop(mutableVector);
        }
    }

    /* renamed from: drawDirect-eZhPAX0$ui, reason: not valid java name */
    public final void m551drawDirecteZhPAX0$ui(Canvas canvas, long j, NodeCoordinator nodeCoordinator, DrawModifierNode drawModifierNode, GraphicsLayer graphicsLayer) {
        DrawModifierNode drawModifierNode2 = this.drawNode;
        this.drawNode = drawModifierNode;
        LayoutDirection layoutDirection = nodeCoordinator.layoutNode.layoutDirection;
        SVG svg = this.canvasDrawScope.drawContext;
        Density density = svg.getDensity();
        LayoutDirection layoutDirection2 = svg.getLayoutDirection();
        Canvas canvas2 = svg.getCanvas();
        long m796getSizeNHjbRc = svg.m796getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = (GraphicsLayer) svg.cssRules;
        svg.setDensity(nodeCoordinator);
        svg.setLayoutDirection(layoutDirection);
        svg.setCanvas(canvas);
        svg.m797setSizeuvyYCjk(j);
        svg.cssRules = graphicsLayer;
        canvas.save();
        try {
            drawModifierNode.draw(this);
            canvas.restore();
            svg.setDensity(density);
            svg.setLayoutDirection(layoutDirection2);
            svg.setCanvas(canvas2);
            svg.m797setSizeuvyYCjk(m796getSizeNHjbRc);
            svg.cssRules = graphicsLayer2;
            this.drawNode = drawModifierNode2;
        } catch (Throwable th) {
            canvas.restore();
            svg.setDensity(density);
            svg.setLayoutDirection(layoutDirection2);
            svg.setCanvas(canvas2);
            svg.m797setSizeuvyYCjk(m796getSizeNHjbRc);
            svg.cssRules = graphicsLayer2;
            throw th;
        }
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs */
    public final void mo467drawImageAZ2fEMs(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        this.canvasDrawScope.mo467drawImageAZ2fEMs(androidImageBitmap, j, j2, j3, f, blendModeColorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-gbVJVH8 */
    public final void mo468drawImagegbVJVH8(AndroidImageBitmap androidImageBitmap, long j, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        this.canvasDrawScope.mo468drawImagegbVJVH8(androidImageBitmap, j, f, blendModeColorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0 */
    public final void mo469drawLineNGM6Ib0(long j, long j2, long j3, float f, int i) {
        this.canvasDrawScope.mo469drawLineNGM6Ib0(j, j2, j3, f, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU */
    public final void mo470drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.canvasDrawScope.mo470drawPathGBMwjPU(androidPath, brush, f, drawStyle, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI */
    public final void mo471drawPathLG529CI(AndroidPath androidPath, long j, float f, DrawStyle drawStyle) {
        this.canvasDrawScope.mo471drawPathLG529CI(androidPath, j, f, drawStyle);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-AsUm42w */
    public final void mo472drawRectAsUm42w(Brush brush, long j, long j2, float f, DrawStyle drawStyle, BlendModeColorFilter blendModeColorFilter, int i) {
        this.canvasDrawScope.mo472drawRectAsUm42w(brush, j, j2, f, drawStyle, blendModeColorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0 */
    public final void mo473drawRectnJ9OG0(long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        this.canvasDrawScope.mo473drawRectnJ9OG0(j, j2, j3, f, blendModeColorFilter, i);
    }

    /* renamed from: drawRoundRect-ZuiqVtQ, reason: not valid java name */
    public final void m552drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle drawStyle) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        canvasDrawScope.drawParams.canvas.drawRoundRect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j2 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (j2 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), canvasDrawScope.m464configurePaintswdJneE(brush, drawStyle, f, null, 3, 1));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA */
    public final void mo474drawRoundRectuAw5IA(long j, long j2, long j3, long j4) {
        this.canvasDrawScope.mo474drawRoundRectuAw5IA(j, j2, j3, j4);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0 */
    public final long mo475getCenterF1C5BW0() {
        return this.canvasDrawScope.mo475getCenterF1C5BW0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final SVG getDrawContext() {
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
    public final long mo476getSizeNHjbRc() {
        return this.canvasDrawScope.drawContext.m796getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo80roundToPxR2X_6o(long j) {
        return this.canvasDrawScope.mo80roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final int mo81roundToPx0680j_4(float f) {
        return Modifier.CC.m334$default$roundToPx0680j_4(this.canvasDrawScope, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final float mo82toDpGaN1DYA(long j) {
        return Modifier.CC.m335$default$toDpGaN1DYA(j, this.canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo83toDpu2uoSUM(float f) {
        return f / this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final long mo85toDpSizekrfVVM(long j) {
        return Modifier.CC.m336$default$toDpSizekrfVVM(j, this.canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final float mo86toPxR2X_6o(long j) {
        return Modifier.CC.m337$default$toPxR2X_6o(j, this.canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo87toPx0680j_4(float f) {
        return this.canvasDrawScope.getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final long mo88toSizeXkaWNTQ(long j) {
        return Modifier.CC.m338$default$toSizeXkaWNTQ(j, this.canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo89toSpkPz2Gy4(float f) {
        return this.canvasDrawScope.mo89toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo84toDpu2uoSUM(int i) {
        return this.canvasDrawScope.mo84toDpu2uoSUM(i);
    }
}
