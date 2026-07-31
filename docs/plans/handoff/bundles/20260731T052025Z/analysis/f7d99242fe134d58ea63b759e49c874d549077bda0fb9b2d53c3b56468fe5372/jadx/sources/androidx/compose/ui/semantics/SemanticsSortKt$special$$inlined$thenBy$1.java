package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import app.k9mail.feature.widget.message.list.MessageListItem;
import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SemanticsSortKt$special$$inlined$thenBy$1 implements Comparator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Comparator $this_thenBy;

    public SemanticsSortKt$special$$inlined$thenBy$1(Comparator comparator) {
        this.$r8$classId = 0;
        this.$this_thenBy = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Comparator comparator = this.$this_thenBy;
        switch (i) {
            case 0:
                int compare = comparator.compare(obj, obj2);
                if (compare != 0) {
                    return compare;
                }
                return LayoutNode.ZComparator.compare(((SemanticsNode) obj).layoutNode, ((SemanticsNode) obj2).layoutNode);
            case 1:
                int compare2 = comparator.compare(obj, obj2);
                return compare2 != 0 ? compare2 : Long.valueOf(((MessageListItem) obj2).sortDatabaseId).compareTo(Long.valueOf(((MessageListItem) obj).sortDatabaseId));
            case 2:
                int compare3 = comparator.compare(obj, obj2);
                return compare3 != 0 ? compare3 : Long.valueOf(((com.fsck.k9.ui.messagelist.MessageListItem) obj2).databaseId).compareTo(Long.valueOf(((com.fsck.k9.ui.messagelist.MessageListItem) obj).databaseId));
            case 3:
                int compare4 = comparator.compare(obj, obj2);
                return compare4 != 0 ? compare4 : Long.valueOf(((com.fsck.k9.ui.messagelist.MessageListItem) obj).messageDate).compareTo(Long.valueOf(((com.fsck.k9.ui.messagelist.MessageListItem) obj2).messageDate));
            default:
                int compare5 = comparator.compare(obj, obj2);
                return compare5 != 0 ? compare5 : Long.valueOf(((com.fsck.k9.ui.messagelist.MessageListItem) obj2).messageDate).compareTo(Long.valueOf(((com.fsck.k9.ui.messagelist.MessageListItem) obj).messageDate));
        }
    }

    public /* synthetic */ SemanticsSortKt$special$$inlined$thenBy$1(Comparator comparator, int i) {
        this.$r8$classId = i;
        this.$this_thenBy = comparator;
    }
}
