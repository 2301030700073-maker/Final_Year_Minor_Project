package androidx.compose.ui.node;

import androidx.compose.ui.layout.LayoutCoordinates;

/* compiled from: LayoutAwareModifierNode.kt */
/* loaded from: classes.dex */
public interface LayoutAwareModifierNode extends DelegatableNode {
    void onPlaced(LayoutCoordinates layoutCoordinates);

    /* renamed from: onRemeasured-ozmzZPI */
    void mo177onRemeasuredozmzZPI(long j);

    /* compiled from: LayoutAwareModifierNode.kt */
    /* renamed from: androidx.compose.ui.node.LayoutAwareModifierNode$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onPlaced(LayoutAwareModifierNode layoutAwareModifierNode, LayoutCoordinates layoutCoordinates) {
        }

        /* renamed from: $default$onRemeasured-ozmzZPI, reason: not valid java name */
        public static void m1810$default$onRemeasuredozmzZPI(LayoutAwareModifierNode layoutAwareModifierNode, long j) {
        }
    }
}
