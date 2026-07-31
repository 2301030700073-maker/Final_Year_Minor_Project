package androidx.compose.ui.semantics;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SemanticsSortKt {
    public static final SemanticsPropertyKey.AnonymousClass1 UnmergedConfigComparator;
    public static final Comparator[] semanticComparators;

    static {
        int i = 2;
        Comparator[] comparatorArr = new Comparator[2];
        int i2 = 0;
        while (i2 < 2) {
            comparatorArr[i2] = new SemanticsSortKt$special$$inlined$thenBy$1(new SemanticsSortKt$special$$inlined$thenBy$1(i2 == 0 ? LtrBoundsComparator.INSTANCE$1 : LtrBoundsComparator.INSTANCE), i);
            i2++;
        }
        semanticComparators = comparatorArr;
        UnmergedConfigComparator = SemanticsPropertyKey.AnonymousClass1.INSTANCE$19;
    }

    public static final void geometryDepthFirstSearch(SemanticsNode semanticsNode, ArrayList arrayList, AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1 androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1, AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2 androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2, MutableIntObjectMap mutableIntObjectMap) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        Object obj = semanticsConfiguration.props.get(SemanticsProperties.IsTraversalGroup);
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if ((booleanValue || ((Boolean) androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2.invoke(semanticsNode)).booleanValue()) && ((Boolean) androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1.invoke(semanticsNode)).booleanValue()) {
            arrayList.add(semanticsNode);
        }
        if (booleanValue) {
            mutableIntObjectMap.set(semanticsNode.id, subtreeSortedByGeometryGrouping(semanticsNode, androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1, androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2, SemanticsNode.getChildren$ui$default(7, semanticsNode)));
            return;
        }
        List children$ui$default = SemanticsNode.getChildren$ui$default(7, semanticsNode);
        int size = children$ui$default.size();
        for (int i = 0; i < size; i++) {
            geometryDepthFirstSearch((SemanticsNode) children$ui$default.get(i), arrayList, androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1, androidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2, mutableIntObjectMap);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00f3 A[LOOP:1: B:11:0x0046->B:29:0x00f3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fa A[EDGE_INSN: B:30:0x00fa->B:31:0x00fa BREAK  A[LOOP:1: B:11:0x0046->B:29:0x00f3], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.ArrayList subtreeSortedByGeometryGrouping(androidx.compose.ui.semantics.SemanticsNode r18, androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1 r19, androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2 r20, java.util.List r21) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.semantics.SemanticsSortKt.subtreeSortedByGeometryGrouping(androidx.compose.ui.semantics.SemanticsNode, androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1, androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$2, java.util.List):java.util.ArrayList");
    }
}
