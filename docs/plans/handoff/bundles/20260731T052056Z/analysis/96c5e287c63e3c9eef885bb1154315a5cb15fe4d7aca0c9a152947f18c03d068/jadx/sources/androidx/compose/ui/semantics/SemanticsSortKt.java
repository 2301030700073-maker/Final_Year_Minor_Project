package androidx.compose.ui.semantics;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import org.wikipedia.feed.HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SemanticsSortKt {
    public static final SemanticsPropertyKey.AnonymousClass1 UnmergedConfigComparator;
    public static final Comparator[] semanticComparators;

    static {
        Comparator[] comparatorArr = new Comparator[2];
        int i = 0;
        while (i < 2) {
            comparatorArr[i] = new HomeViewModel$getPlacesCards$$inlined$sortedBy$1(3, new HomeViewModel$getPlacesCards$$inlined$sortedBy$1(i == 0 ? LtrBoundsComparator.INSTANCE$1 : LtrBoundsComparator.INSTANCE));
            i++;
        }
        semanticComparators = comparatorArr;
        UnmergedConfigComparator = SemanticsPropertyKey.AnonymousClass1.INSTANCE$20;
    }

    public static final void geometryDepthFirstSearch(SemanticsNode semanticsNode, ArrayList arrayList, NodeChainKt$fillVector$1 nodeChainKt$fillVector$1, NodeChainKt$fillVector$1 nodeChainKt$fillVector$12, MutableIntObjectMap mutableIntObjectMap) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        Object obj = semanticsConfiguration.props.get(SemanticsProperties.IsTraversalGroup);
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if ((booleanValue || ((Boolean) nodeChainKt$fillVector$12.invoke(semanticsNode)).booleanValue()) && ((Boolean) nodeChainKt$fillVector$1.invoke(semanticsNode)).booleanValue()) {
            arrayList.add(semanticsNode);
        }
        if (booleanValue) {
            mutableIntObjectMap.set(semanticsNode.id, subtreeSortedByGeometryGrouping(semanticsNode, nodeChainKt$fillVector$1, nodeChainKt$fillVector$12, SemanticsNode.getChildren$ui$default(7, semanticsNode)));
            return;
        }
        List children$ui$default = SemanticsNode.getChildren$ui$default(7, semanticsNode);
        int size = children$ui$default.size();
        for (int i = 0; i < size; i++) {
            geometryDepthFirstSearch((SemanticsNode) children$ui$default.get(i), arrayList, nodeChainKt$fillVector$1, nodeChainKt$fillVector$12, mutableIntObjectMap);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ed A[LOOP:1: B:11:0x0046->B:29:0x00ed, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f4 A[EDGE_INSN: B:30:0x00f4->B:31:0x00f4 BREAK  A[LOOP:1: B:11:0x0046->B:29:0x00ed], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.ArrayList subtreeSortedByGeometryGrouping(androidx.compose.ui.semantics.SemanticsNode r18, androidx.compose.ui.node.NodeChainKt$fillVector$1 r19, androidx.compose.ui.node.NodeChainKt$fillVector$1 r20, java.util.List r21) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.semantics.SemanticsSortKt.subtreeSortedByGeometryGrouping(androidx.compose.ui.semantics.SemanticsNode, androidx.compose.ui.node.NodeChainKt$fillVector$1, androidx.compose.ui.node.NodeChainKt$fillVector$1, java.util.List):java.util.ArrayList");
    }
}
