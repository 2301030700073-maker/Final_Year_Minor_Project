package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsNodeKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NodeCoordinator$Companion$SemanticsSource$1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NodeCoordinator$Companion$SemanticsSource$1(int i) {
        this.$r8$classId = i;
    }

    /* renamed from: entityType-OLwlOKw, reason: not valid java name */
    public final int m579entityTypeOLwlOKw() {
        switch (this.$r8$classId) {
            case 0:
                return 8;
            default:
                return 16;
        }
    }

    public final boolean shouldHitTest(Modifier.Node node) {
        switch (this.$r8$classId) {
            case 0:
                return SemanticsNodeKt.isImportantForAccessibility(SemanticsNodeKt.SemanticsNode(HitTestResultKt.requireLayoutNode(node), false));
            default:
                return true;
        }
    }
}
