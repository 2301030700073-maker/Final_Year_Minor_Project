package androidx.compose.foundation;

import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.math.MathKt;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StretchOverscrollNode extends DelegatingNode implements DrawModifierNode {
    public RenderNode _renderNode;
    public final EdgeEffectWrapper edgeEffectWrapper;
    public final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    public StretchOverscrollNode(SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, EdgeEffectWrapper edgeEffectWrapper) {
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.edgeEffectWrapper = edgeEffectWrapper;
        delegate(suspendingPointerInputModifierNodeImpl);
    }

    public static boolean drawWithRotation(float f, EdgeEffect edgeEffect, Canvas canvas) {
        if (f == 0.0f) {
            return edgeEffect.draw(canvas);
        }
        int save = canvas.save();
        canvas.rotate(f);
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z;
        boolean z2;
        ProcessFinisher processFinisher;
        Orientation orientation;
        char c;
        float f;
        float f2;
        float f3;
        float f4;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        long m729getSizeNHjbRc = canvasDrawScope.drawContext.m729getSizeNHjbRc();
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
        androidEdgeEffectOverscrollEffect.m25updateSizeuvyYCjk$foundation(m729getSizeNHjbRc);
        Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvasDrawScope.drawContext.getCanvas());
        androidEdgeEffectOverscrollEffect.redrawSignal.getValue();
        ProcessFinisher processFinisher2 = canvasDrawScope.drawContext;
        if (Size.m208isEmptyimpl(processFinisher2.m729getSizeNHjbRc())) {
            layoutNodeDrawScope.drawContent();
            return;
        }
        boolean isHardwareAccelerated = nativeCanvas.isHardwareAccelerated();
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        if (!isHardwareAccelerated) {
            EdgeEffect edgeEffect = edgeEffectWrapper.topEffect;
            if (edgeEffect != null) {
                edgeEffect.finish();
            }
            EdgeEffect edgeEffect2 = edgeEffectWrapper.bottomEffect;
            if (edgeEffect2 != null) {
                edgeEffect2.finish();
            }
            EdgeEffect edgeEffect3 = edgeEffectWrapper.leftEffect;
            if (edgeEffect3 != null) {
                edgeEffect3.finish();
            }
            EdgeEffect edgeEffect4 = edgeEffectWrapper.rightEffect;
            if (edgeEffect4 != null) {
                edgeEffect4.finish();
            }
            EdgeEffect edgeEffect5 = edgeEffectWrapper.topEffectNegation;
            if (edgeEffect5 != null) {
                edgeEffect5.finish();
            }
            EdgeEffect edgeEffect6 = edgeEffectWrapper.bottomEffectNegation;
            if (edgeEffect6 != null) {
                edgeEffect6.finish();
            }
            EdgeEffect edgeEffect7 = edgeEffectWrapper.leftEffectNegation;
            if (edgeEffect7 != null) {
                edgeEffect7.finish();
            }
            EdgeEffect edgeEffect8 = edgeEffectWrapper.rightEffectNegation;
            if (edgeEffect8 != null) {
                edgeEffect8.finish();
            }
            layoutNodeDrawScope.drawContent();
            return;
        }
        float mo63toPx0680j_4 = layoutNodeDrawScope.mo63toPx0680j_4(30.0f);
        boolean z3 = EdgeEffectWrapper.isAnimating(edgeEffectWrapper.topEffect) || EdgeEffectWrapper.isStretched(edgeEffectWrapper.topEffectNegation) || EdgeEffectWrapper.isAnimating(edgeEffectWrapper.bottomEffect) || EdgeEffectWrapper.isStretched(edgeEffectWrapper.bottomEffectNegation);
        boolean z4 = EdgeEffectWrapper.isAnimating(edgeEffectWrapper.leftEffect) || EdgeEffectWrapper.isStretched(edgeEffectWrapper.leftEffectNegation) || EdgeEffectWrapper.isAnimating(edgeEffectWrapper.rightEffect) || EdgeEffectWrapper.isStretched(edgeEffectWrapper.rightEffectNegation);
        if (z3 && z4) {
            getRenderNode().setPosition(0, 0, nativeCanvas.getWidth(), nativeCanvas.getHeight());
        } else if (z3) {
            getRenderNode().setPosition(0, 0, (MathKt.roundToInt(mo63toPx0680j_4) * 2) + nativeCanvas.getWidth(), nativeCanvas.getHeight());
        } else {
            if (!z4) {
                layoutNodeDrawScope.drawContent();
                return;
            }
            getRenderNode().setPosition(0, 0, nativeCanvas.getWidth(), (MathKt.roundToInt(mo63toPx0680j_4) * 2) + nativeCanvas.getHeight());
        }
        RecordingCanvas beginRecording = getRenderNode().beginRecording();
        boolean isStretched = EdgeEffectWrapper.isStretched(edgeEffectWrapper.leftEffectNegation);
        Orientation orientation2 = Orientation.Horizontal;
        if (isStretched) {
            EdgeEffect edgeEffect9 = edgeEffectWrapper.leftEffectNegation;
            if (edgeEffect9 == null) {
                edgeEffect9 = edgeEffectWrapper.createEdgeEffect(orientation2);
                edgeEffectWrapper.leftEffectNegation = edgeEffect9;
            }
            drawWithRotation(90.0f, edgeEffect9, beginRecording);
            edgeEffect9.finish();
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.leftEffect)) {
            EdgeEffect orCreateLeftEffect = edgeEffectWrapper.getOrCreateLeftEffect();
            z2 = drawWithRotation(270.0f, orCreateLeftEffect, beginRecording);
            if (EdgeEffectWrapper.isStretched(edgeEffectWrapper.leftEffect)) {
                z = z4;
                float intBitsToFloat = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.m20displacementF1C5BW0$foundation() & 4294967295L));
                EdgeEffect edgeEffect10 = edgeEffectWrapper.leftEffectNegation;
                if (edgeEffect10 == null) {
                    edgeEffect10 = edgeEffectWrapper.createEdgeEffect(orientation2);
                    edgeEffectWrapper.leftEffectNegation = edgeEffect10;
                }
                int i = Build.VERSION.SDK_INT;
                float distance = i >= 31 ? Api31Impl.getDistance(orCreateLeftEffect) : 0.0f;
                float f5 = 1.0f - intBitsToFloat;
                if (i >= 31) {
                    Api31Impl.onPullDistance(edgeEffect10, distance, f5);
                } else {
                    edgeEffect10.onPull(distance, f5);
                }
            } else {
                z = z4;
            }
        } else {
            z = z4;
            z2 = false;
        }
        boolean isStretched2 = EdgeEffectWrapper.isStretched(edgeEffectWrapper.topEffectNegation);
        Orientation orientation3 = Orientation.Vertical;
        if (isStretched2) {
            EdgeEffect edgeEffect11 = edgeEffectWrapper.topEffectNegation;
            if (edgeEffect11 == null) {
                edgeEffect11 = edgeEffectWrapper.createEdgeEffect(orientation3);
                edgeEffectWrapper.topEffectNegation = edgeEffect11;
            }
            drawWithRotation(180.0f, edgeEffect11, beginRecording);
            edgeEffect11.finish();
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.topEffect)) {
            EdgeEffect orCreateTopEffect = edgeEffectWrapper.getOrCreateTopEffect();
            c = ' ';
            z2 = drawWithRotation(0.0f, orCreateTopEffect, beginRecording) || z2;
            if (EdgeEffectWrapper.isStretched(edgeEffectWrapper.topEffect)) {
                orientation = orientation2;
                float intBitsToFloat2 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.m20displacementF1C5BW0$foundation() >> 32));
                EdgeEffect edgeEffect12 = edgeEffectWrapper.topEffectNegation;
                if (edgeEffect12 == null) {
                    edgeEffect12 = edgeEffectWrapper.createEdgeEffect(orientation3);
                    edgeEffectWrapper.topEffectNegation = edgeEffect12;
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 31) {
                    processFinisher = processFinisher2;
                    f4 = Api31Impl.getDistance(orCreateTopEffect);
                } else {
                    processFinisher = processFinisher2;
                    f4 = 0.0f;
                }
                if (i2 >= 31) {
                    Api31Impl.onPullDistance(edgeEffect12, f4, intBitsToFloat2);
                } else {
                    edgeEffect12.onPull(f4, intBitsToFloat2);
                }
            } else {
                processFinisher = processFinisher2;
                orientation = orientation2;
            }
        } else {
            processFinisher = processFinisher2;
            orientation = orientation2;
            c = ' ';
        }
        if (EdgeEffectWrapper.isStretched(edgeEffectWrapper.rightEffectNegation)) {
            EdgeEffect edgeEffect13 = edgeEffectWrapper.rightEffectNegation;
            if (edgeEffect13 == null) {
                edgeEffect13 = edgeEffectWrapper.createEdgeEffect(orientation);
                edgeEffectWrapper.rightEffectNegation = edgeEffect13;
            }
            drawWithRotation(270.0f, edgeEffect13, beginRecording);
            edgeEffect13.finish();
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.rightEffect)) {
            EdgeEffect orCreateRightEffect = edgeEffectWrapper.getOrCreateRightEffect();
            z2 = drawWithRotation(90.0f, orCreateRightEffect, beginRecording) || z2;
            if (EdgeEffectWrapper.isStretched(edgeEffectWrapper.rightEffect)) {
                float intBitsToFloat3 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.m20displacementF1C5BW0$foundation() & 4294967295L));
                EdgeEffect edgeEffect14 = edgeEffectWrapper.rightEffectNegation;
                if (edgeEffect14 == null) {
                    edgeEffect14 = edgeEffectWrapper.createEdgeEffect(orientation);
                    edgeEffectWrapper.rightEffectNegation = edgeEffect14;
                }
                int i3 = Build.VERSION.SDK_INT;
                float distance2 = i3 >= 31 ? Api31Impl.getDistance(orCreateRightEffect) : 0.0f;
                if (i3 >= 31) {
                    Api31Impl.onPullDistance(edgeEffect14, distance2, intBitsToFloat3);
                } else {
                    edgeEffect14.onPull(distance2, intBitsToFloat3);
                }
            }
        }
        if (EdgeEffectWrapper.isStretched(edgeEffectWrapper.bottomEffectNegation)) {
            EdgeEffect edgeEffect15 = edgeEffectWrapper.bottomEffectNegation;
            if (edgeEffect15 == null) {
                edgeEffect15 = edgeEffectWrapper.createEdgeEffect(orientation3);
                edgeEffectWrapper.bottomEffectNegation = edgeEffect15;
            }
            f = 0.0f;
            drawWithRotation(0.0f, edgeEffect15, beginRecording);
            edgeEffect15.finish();
        } else {
            f = 0.0f;
        }
        if (EdgeEffectWrapper.isAnimating(edgeEffectWrapper.bottomEffect)) {
            EdgeEffect orCreateBottomEffect = edgeEffectWrapper.getOrCreateBottomEffect();
            boolean z5 = drawWithRotation(180.0f, orCreateBottomEffect, beginRecording) || z2;
            if (EdgeEffectWrapper.isStretched(edgeEffectWrapper.bottomEffect)) {
                float intBitsToFloat4 = Float.intBitsToFloat((int) (androidEdgeEffectOverscrollEffect.m20displacementF1C5BW0$foundation() >> c));
                EdgeEffect edgeEffect16 = edgeEffectWrapper.bottomEffectNegation;
                if (edgeEffect16 == null) {
                    edgeEffect16 = edgeEffectWrapper.createEdgeEffect(orientation3);
                    edgeEffectWrapper.bottomEffectNegation = edgeEffect16;
                }
                int i4 = Build.VERSION.SDK_INT;
                float distance3 = i4 >= 31 ? Api31Impl.getDistance(orCreateBottomEffect) : f;
                float f6 = 1.0f - intBitsToFloat4;
                if (i4 >= 31) {
                    Api31Impl.onPullDistance(edgeEffect16, distance3, f6);
                } else {
                    edgeEffect16.onPull(distance3, f6);
                }
            }
            z2 = z5;
        }
        if (z2) {
            androidEdgeEffectOverscrollEffect.invalidateOverscroll$foundation();
        }
        float f7 = z ? f : mo63toPx0680j_4;
        if (z3) {
            mo63toPx0680j_4 = f;
        }
        LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.internalCanvas = beginRecording;
        long m729getSizeNHjbRc2 = processFinisher.m729getSizeNHjbRc();
        ProcessFinisher processFinisher3 = canvasDrawScope.drawContext;
        CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) processFinisher3.lastActivityManager).drawParams;
        Density density = drawParams.density;
        LayoutDirection layoutDirection2 = drawParams.layoutDirection;
        androidx.compose.ui.graphics.Canvas canvas = processFinisher3.getCanvas();
        long m729getSizeNHjbRc3 = canvasDrawScope.drawContext.m729getSizeNHjbRc();
        ProcessFinisher processFinisher4 = canvasDrawScope.drawContext;
        GraphicsLayer graphicsLayer = (GraphicsLayer) processFinisher4.config;
        processFinisher4.setDensity(layoutNodeDrawScope);
        processFinisher4.setLayoutDirection(layoutDirection);
        processFinisher4.setCanvas(androidCanvas);
        processFinisher4.m730setSizeuvyYCjk(m729getSizeNHjbRc2);
        processFinisher4.config = null;
        androidCanvas.save();
        try {
            ((PopupMenu$1) canvasDrawScope.drawContext.context).translate(f7, mo63toPx0680j_4);
            try {
                layoutNodeDrawScope.drawContent();
                androidCanvas.restore();
                ProcessFinisher processFinisher5 = canvasDrawScope.drawContext;
                processFinisher5.setDensity(density);
                processFinisher5.setLayoutDirection(layoutDirection2);
                processFinisher5.setCanvas(canvas);
                processFinisher5.m730setSizeuvyYCjk(m729getSizeNHjbRc3);
                processFinisher5.config = graphicsLayer;
                getRenderNode().endRecording();
                int save = nativeCanvas.save();
                nativeCanvas.translate(f2, f3);
                nativeCanvas.drawRenderNode(getRenderNode());
                nativeCanvas.restoreToCount(save);
            } finally {
                ((PopupMenu$1) canvasDrawScope.drawContext.context).translate(-f7, -mo63toPx0680j_4);
            }
        } catch (Throwable th) {
            androidCanvas.restore();
            ProcessFinisher processFinisher6 = canvasDrawScope.drawContext;
            processFinisher6.setDensity(density);
            processFinisher6.setLayoutDirection(layoutDirection2);
            processFinisher6.setCanvas(canvas);
            processFinisher6.m730setSizeuvyYCjk(m729getSizeNHjbRc3);
            processFinisher6.config = graphicsLayer;
            throw th;
        }
    }

    public final RenderNode getRenderNode() {
        RenderNode renderNode = this._renderNode;
        if (renderNode != null) {
            return renderNode;
        }
        RenderNode m = StretchOverscrollNode$$ExternalSyntheticApiModelOutline0.m();
        this._renderNode = m;
        return m;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}
