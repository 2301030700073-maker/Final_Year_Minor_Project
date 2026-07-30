package androidx.compose.ui.node;

/* compiled from: DrawModifierNode.kt */
/* loaded from: classes.dex */
public abstract class DrawModifierNodeKt {
    public static final void invalidateDraw(DrawModifierNode drawModifierNode) {
        if (drawModifierNode.getNode().isAttached()) {
            DelegatableNodeKt.m1803requireCoordinator64DMado(drawModifierNode, NodeKind.m1903constructorimpl(1)).invalidateLayer();
        }
    }
}
