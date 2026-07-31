package androidx.compose.foundation;

import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackgroundNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode, SemanticsModifierNode {
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
        LayoutNodeDrawScope layoutNodeDrawScope2;
        ColorKt colorKt;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        if (this.shape != ColorKt.RectangleShape) {
            layoutNodeDrawScope2 = layoutNodeDrawScope;
            if (Size.m449equalsimpl0(canvasDrawScope.drawContext.m795getSizeNHjbRc(), this.lastSize) && layoutNodeDrawScope2.getLayoutDirection() == this.lastLayoutDirection && Intrinsics.areEqual(this.lastShape, this.shape)) {
                colorKt = this.lastOutline;
                colorKt.getClass();
            } else {
                HitTestResultKt.observeReads(this, new Recomposer$$ExternalSyntheticLambda6(9, this, layoutNodeDrawScope2));
                colorKt = this.tmpOutline;
                this.tmpOutline = null;
            }
            this.lastOutline = colorKt;
            this.lastSize = canvasDrawScope.drawContext.m795getSizeNHjbRc();
            this.lastLayoutDirection = layoutNodeDrawScope2.getLayoutDirection();
            this.lastShape = this.shape;
            colorKt.getClass();
            if (!Color.m482equalsimpl0(this.color, Color.Unspecified)) {
                ColorKt.m492drawOutlinewDX37Ww$default(layoutNodeDrawScope2, colorKt, this.color);
            }
        } else if (Color.m482equalsimpl0(this.color, Color.Unspecified)) {
            layoutNodeDrawScope2 = layoutNodeDrawScope;
        } else {
            layoutNodeDrawScope2 = layoutNodeDrawScope;
            Modifier.CC.m402drawRectnJ9OG0$default(layoutNodeDrawScope2, this.color, 0L, 0.0f, null, 126);
        }
        layoutNodeDrawScope2.drawContent();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
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
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}
