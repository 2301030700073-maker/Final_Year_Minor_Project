package androidx.compose.ui.node;

/* compiled from: ParentDataModifierNode.kt */
/* loaded from: classes.dex */
public abstract class ParentDataModifierNodeKt {
    public static final void invalidateParentData(ParentDataModifierNode parentDataModifierNode) {
        DelegatableNodeKt.requireLayoutNode(parentDataModifierNode).invalidateParentData$ui_release();
    }
}
