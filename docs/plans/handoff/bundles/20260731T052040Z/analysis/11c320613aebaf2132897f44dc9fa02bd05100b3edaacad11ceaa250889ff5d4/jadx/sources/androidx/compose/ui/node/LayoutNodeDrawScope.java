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
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import okhttp3.Cookie;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LayoutNodeDrawScope implements DrawScope {
    public final CanvasDrawScope canvasDrawScope = new CanvasDrawScope();
    public DrawModifierNode drawNode;

    public final void drawContent() {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
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
            NodeCoordinator m317requireCoordinator64DMado = HitTestResultKt.m317requireCoordinator64DMado(delegatableNode, 4);
            if (m317requireCoordinator64DMado.getTail() == node.node) {
                m317requireCoordinator64DMado = m317requireCoordinator64DMado.wrapped;
                m317requireCoordinator64DMado.getClass();
            }
            m317requireCoordinator64DMado.performDraw(canvas, (GraphicsLayer) canvasDrawScope.drawContext.config);
            return;
        }
        MutableVector mutableVector = null;
        while (node2 != null) {
            if (node2 instanceof DrawModifierNode) {
                DrawModifierNode drawModifierNode = (DrawModifierNode) node2;
                GraphicsLayer graphicsLayer = (GraphicsLayer) canvasDrawScope.drawContext.config;
                NodeCoordinator m317requireCoordinator64DMado2 = HitTestResultKt.m317requireCoordinator64DMado(drawModifierNode, 4);
                long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(m317requireCoordinator64DMado2.measuredSize);
                LayoutNode layoutNode = m317requireCoordinator64DMado2.layoutNode;
                layoutNode.getClass();
                ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSharedDrawScope().m324drawDirecteZhPAX0$ui(canvas, m708toSizeozmzZPI, m317requireCoordinator64DMado2, drawModifierNode, graphicsLayer);
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
    public final void m324drawDirecteZhPAX0$ui(Canvas canvas, long j, NodeCoordinator nodeCoordinator, DrawModifierNode drawModifierNode, GraphicsLayer graphicsLayer) {
        DrawModifierNode drawModifierNode2 = this.drawNode;
        this.drawNode = drawModifierNode;
        LayoutDirection layoutDirection = nodeCoordinator.layoutNode.layoutDirection;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        ProcessFinisher processFinisher = canvasDrawScope.drawContext;
        CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) processFinisher.lastActivityManager).drawParams;
        Density density = drawParams.density;
        LayoutDirection layoutDirection2 = drawParams.layoutDirection;
        Canvas canvas2 = processFinisher.getCanvas();
        ProcessFinisher processFinisher2 = canvasDrawScope.drawContext;
        long m729getSizeNHjbRc = processFinisher2.m729getSizeNHjbRc();
        GraphicsLayer graphicsLayer2 = (GraphicsLayer) processFinisher2.config;
        processFinisher2.setDensity(nodeCoordinator);
        processFinisher2.setLayoutDirection(layoutDirection);
        processFinisher2.setCanvas(canvas);
        processFinisher2.m730setSizeuvyYCjk(j);
        processFinisher2.config = graphicsLayer;
        canvas.save();
        try {
            drawModifierNode.draw(this);
            canvas.restore();
            processFinisher2.setDensity(density);
            processFinisher2.setLayoutDirection(layoutDirection2);
            processFinisher2.setCanvas(canvas2);
            processFinisher2.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            processFinisher2.config = graphicsLayer2;
            this.drawNode = drawModifierNode2;
        } catch (Throwable th) {
            canvas.restore();
            processFinisher2.setDensity(density);
            processFinisher2.setLayoutDirection(layoutDirection2);
            processFinisher2.setCanvas(canvas2);
            processFinisher2.m730setSizeuvyYCjk(m729getSizeNHjbRc);
            processFinisher2.config = graphicsLayer2;
            throw th;
        }
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-AZ2fEMs */
    public final void mo261drawImageAZ2fEMs(AndroidImageBitmap androidImageBitmap, long j, long j2, long j3, float f, BlendModeColorFilter blendModeColorFilter, int i) {
        this.canvasDrawScope.mo261drawImageAZ2fEMs(androidImageBitmap, j, j2, j3, f, blendModeColorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0 */
    public final void mo262drawLineNGM6Ib0(long j, long j2, long j3, float f) {
        this.canvasDrawScope.mo262drawLineNGM6Ib0(j, j2, j3, f);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU */
    public final void mo263drawPathGBMwjPU(AndroidPath androidPath, Brush brush, float f, DrawStyle drawStyle, int i) {
        this.canvasDrawScope.mo263drawPathGBMwjPU(androidPath, brush, f, drawStyle, i);
    }

    /* renamed from: drawPath-LG529CI, reason: not valid java name */
    public final void m325drawPathLG529CI(AndroidPath androidPath, long j, DrawStyle drawStyle) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.drawParams.canvas.drawPath(androidPath, CanvasDrawScope.m259configurePaint2qPWKa0$default(canvasDrawScope, j, drawStyle, 3));
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0 */
    public final void mo264drawRectnJ9OG0(long j, long j2, long j3, DrawStyle drawStyle, int i) {
        this.canvasDrawScope.mo264drawRectnJ9OG0(j, j2, j3, drawStyle, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0 */
    public final long mo265getCenterF1C5BW0() {
        return this.canvasDrawScope.mo265getCenterF1C5BW0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public final ProcessFinisher getDrawContext() {
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
    public final long mo266getSizeNHjbRc() {
        return this.canvasDrawScope.drawContext.m729getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo57roundToPxR2X_6o(long j) {
        return this.canvasDrawScope.mo57roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final int mo58roundToPx0680j_4(float f) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Owner.CC.m357$default$roundToPx0680j_4(canvasDrawScope, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final float mo59toDpGaN1DYA(long j) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Owner.CC.m358$default$toDpGaN1DYA(j, canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo60toDpu2uoSUM(float f) {
        return f / this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final float mo62toPxR2X_6o(long j) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Owner.CC.m360$default$toPxR2X_6o(j, canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo63toPx0680j_4(float f) {
        return this.canvasDrawScope.getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final long mo64toSizeXkaWNTQ(long j) {
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        canvasDrawScope.getClass();
        return Owner.CC.m361$default$toSizeXkaWNTQ(j, canvasDrawScope);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo65toSpkPz2Gy4(float f) {
        return this.canvasDrawScope.mo65toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo61toDpu2uoSUM(int i) {
        return this.canvasDrawScope.mo61toDpu2uoSUM(i);
    }
}
