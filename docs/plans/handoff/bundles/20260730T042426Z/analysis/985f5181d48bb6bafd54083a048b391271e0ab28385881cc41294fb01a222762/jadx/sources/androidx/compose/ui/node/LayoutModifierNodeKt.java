package androidx.compose.ui.node;

/* compiled from: LayoutModifierNode.kt */
/* loaded from: classes.dex */
public abstract class LayoutModifierNodeKt {
    public static final void invalidateLayer(LayoutModifierNode layoutModifierNode) {
        DelegatableNodeKt.m1803requireCoordinator64DMado(layoutModifierNode, NodeKind.m1903constructorimpl(2)).invalidateLayer();
    }

    public static final void invalidateMeasurement(LayoutModifierNode layoutModifierNode) {
        DelegatableNodeKt.requireLayoutNode(layoutModifierNode).invalidateMeasurements$ui_release();
    }
}
