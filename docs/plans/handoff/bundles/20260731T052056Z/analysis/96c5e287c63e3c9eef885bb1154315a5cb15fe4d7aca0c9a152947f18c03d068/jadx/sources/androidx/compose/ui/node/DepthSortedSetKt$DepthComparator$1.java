package androidx.compose.ui.node;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DepthSortedSetKt$DepthComparator$1 implements Comparator {
    public static final DepthSortedSetKt$DepthComparator$1 INSTANCE = new DepthSortedSetKt$DepthComparator$1(1);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ DepthSortedSetKt$DepthComparator$1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                LayoutNode layoutNode = (LayoutNode) obj;
                LayoutNode layoutNode2 = (LayoutNode) obj2;
                int compare = Intrinsics.compare(layoutNode.depth, layoutNode2.depth);
                return compare != 0 ? compare : Intrinsics.compare(layoutNode.hashCode(), layoutNode2.hashCode());
            default:
                LayoutNode layoutNode3 = (LayoutNode) obj;
                LayoutNode layoutNode4 = (LayoutNode) obj2;
                int compare2 = Intrinsics.compare(layoutNode4.depth, layoutNode3.depth);
                return compare2 != 0 ? compare2 : Intrinsics.compare(layoutNode3.hashCode(), layoutNode4.hashCode());
        }
    }
}
