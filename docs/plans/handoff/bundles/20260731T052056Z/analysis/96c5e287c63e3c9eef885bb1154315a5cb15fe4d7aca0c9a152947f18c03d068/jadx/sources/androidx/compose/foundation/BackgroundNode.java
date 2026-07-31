package androidx.compose.foundation;

import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BackgroundNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode, SemanticsModifierNode {
    public float alpha;
    public Brush brush;
    public long color;
    public LayoutDirection lastLayoutDirection;
    public ColorKt lastOutline;
    public Shape lastShape;
    public long lastSize;
    public Shape shape;
    public ColorKt tmpOutline;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setShape(semanticsPropertyReceiver, this.shape);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        ColorKt colorKt;
        Brush brush;
        float f;
        AndroidPath androidPath;
        LayoutNodeDrawScope layoutNodeDrawScope2;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        if (this.shape == ColorKt.RectangleShape) {
            if (!ULong.m820equalsimpl0(this.color, Color.Unspecified)) {
                Modifier.CC.m350drawRectnJ9OG0$default(layoutNodeDrawScope, this.color, 0L, RecyclerView.DECELERATION_RATE, null, 126);
            }
            Brush brush2 = this.brush;
            if (brush2 != null) {
                Modifier.CC.m349drawRectAsUm42w$default(layoutNodeDrawScope, brush2, 0L, 0L, this.alpha, null, null, 118);
            }
        } else {
            if (Size.m394equalsimpl0(canvasDrawScope.drawContext.m796getSizeNHjbRc(), this.lastSize) && layoutNodeDrawScope.getLayoutDirection() == this.lastLayoutDirection && Intrinsics.areEqual(this.lastShape, this.shape)) {
                colorKt = this.lastOutline;
                colorKt.getClass();
            } else {
                HitTestResultKt.observeReads(this, new Recomposer$$ExternalSyntheticLambda6(4, this, layoutNodeDrawScope));
                colorKt = this.tmpOutline;
                this.tmpOutline = null;
            }
            this.lastOutline = colorKt;
            this.lastSize = canvasDrawScope.drawContext.m796getSizeNHjbRc();
            this.lastLayoutDirection = layoutNodeDrawScope.getLayoutDirection();
            this.lastShape = this.shape;
            colorKt.getClass();
            if (!ULong.m820equalsimpl0(this.color, Color.Unspecified)) {
                ColorKt.m437drawOutlinewDX37Ww$default(layoutNodeDrawScope, colorKt, this.color);
            }
            Brush brush3 = this.brush;
            if (brush3 != null) {
                float f2 = this.alpha;
                boolean z = colorKt instanceof Outline$Rectangle;
                Fill fill = Fill.INSTANCE;
                if (z) {
                    Rect rect = ((Outline$Rectangle) colorKt).rect;
                    float f3 = rect.left;
                    float f4 = rect.top;
                    layoutNodeDrawScope.mo472drawRectAsUm42w(brush3, (4294967295L & Float.floatToRawIntBits(f4)) | (Float.floatToRawIntBits(f3) << 32), ColorKt.size(rect), f2, fill, null, 3);
                } else {
                    if (colorKt instanceof Outline$Rounded) {
                        Outline$Rounded outline$Rounded = (Outline$Rounded) colorKt;
                        brush = brush3;
                        androidPath = outline$Rounded.roundRectPath;
                        if (androidPath != null) {
                            layoutNodeDrawScope2 = layoutNodeDrawScope;
                            f = f2;
                        } else {
                            RoundRect roundRect = outline$Rounded.roundRect;
                            float intBitsToFloat = Float.intBitsToFloat((int) (roundRect.bottomLeftCornerRadius >> 32));
                            float f5 = roundRect.left;
                            float f6 = roundRect.top;
                            long floatToRawIntBits = (Float.floatToRawIntBits(f6) & 4294967295L) | (Float.floatToRawIntBits(f5) << 32);
                            float width = roundRect.getWidth();
                            float height = roundRect.getHeight();
                            layoutNodeDrawScope.m552drawRoundRectZuiqVtQ(brush, floatToRawIntBits, (Float.floatToRawIntBits(width) << 32) | (Float.floatToRawIntBits(height) & 4294967295L), (4294967295L & Float.floatToRawIntBits(intBitsToFloat)) | (Float.floatToRawIntBits(intBitsToFloat) << 32), f2, fill);
                        }
                    } else {
                        if (!(colorKt instanceof Outline$Generic)) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return;
                        }
                        AndroidPath androidPath2 = ((Outline$Generic) colorKt).path;
                        brush = brush3;
                        f = f2;
                        androidPath = androidPath2;
                        layoutNodeDrawScope2 = layoutNodeDrawScope;
                    }
                    layoutNodeDrawScope2.mo470drawPathGBMwjPU(androidPath, brush, f, fill, 3);
                }
            }
        }
        layoutNodeDrawScope.drawContent();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return false;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        this.lastSize = 9205357640488583168L;
        this.lastLayoutDirection = null;
        this.lastOutline = null;
        this.lastShape = null;
        HitTestResultKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}
