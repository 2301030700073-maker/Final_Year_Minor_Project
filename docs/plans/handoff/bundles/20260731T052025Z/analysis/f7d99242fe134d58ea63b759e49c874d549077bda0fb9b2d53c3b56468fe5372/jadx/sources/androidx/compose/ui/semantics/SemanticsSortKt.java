package androidx.compose.ui.semantics;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import com.bytehamster.lib.preferencesearch.PreferenceParser;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SemanticsSortKt {
    public static final SemanticsPropertyKey.AnonymousClass1 UnmergedConfigComparator;
    public static final Comparator[] semanticComparators;

    static {
        Comparator[] comparatorArr = new Comparator[2];
        int i = 0;
        while (i < 2) {
            comparatorArr[i] = new PreferenceParser.AnonymousClass1(4, new SemanticsSortKt$special$$inlined$thenBy$1(i == 0 ? LtrBoundsComparator.INSTANCE$1 : LtrBoundsComparator.INSTANCE));
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

    /* JADX WARN: Removed duplicated region for block: B:29:0x00f0 A[LOOP:1: B:11:0x0046->B:29:0x00f0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f8 A[EDGE_INSN: B:30:0x00f8->B:31:0x00f8 BREAK  A[LOOP:1: B:11:0x0046->B:29:0x00f0], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.ArrayList subtreeSortedByGeometryGrouping(androidx.compose.ui.semantics.SemanticsNode r18, androidx.compose.ui.node.NodeChainKt$fillVector$1 r19, androidx.compose.ui.node.NodeChainKt$fillVector$1 r20, java.util.List r21) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.semantics.SemanticsSortKt.subtreeSortedByGeometryGrouping(androidx.compose.ui.semantics.SemanticsNode, androidx.compose.ui.node.NodeChainKt$fillVector$1, androidx.compose.ui.node.NodeChainKt$fillVector$1, java.util.List):java.util.ArrayList");
    }
}
