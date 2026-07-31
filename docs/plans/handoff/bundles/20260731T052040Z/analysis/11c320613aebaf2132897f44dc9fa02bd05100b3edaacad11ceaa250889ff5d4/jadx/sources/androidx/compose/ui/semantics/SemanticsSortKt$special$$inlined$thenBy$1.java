package androidx.compose.ui.semantics;

import androidx.collection.MutableObjectFloatMap;
import androidx.compose.ui.node.LayoutNode;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.Comparator;
import java.util.Map;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SemanticsSortKt$special$$inlined$thenBy$1 implements Comparator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_thenBy;

    public SemanticsSortKt$special$$inlined$thenBy$1(Comparator comparator) {
        this.$r8$classId = 0;
        this.$this_thenBy = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.$this_thenBy;
        switch (i) {
            case 0:
                int compare = ((Comparator) obj3).compare(obj, obj2);
                if (compare != 0) {
                    return compare;
                }
                return LayoutNode.ZComparator.compare(((SemanticsNode) obj).layoutNode, ((SemanticsNode) obj2).layoutNode);
            case 1:
                DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = (DiskLruCache$$ExternalSyntheticLambda0) obj3;
                return ((Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(obj)).compareTo((Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(obj2));
            case 2:
                int compare2 = ((SemanticsSortKt$special$$inlined$thenBy$1) obj3).compare(obj, obj2);
                return compare2 != 0 ? compare2 : Integer.valueOf(((SemanticsNode) obj).id).compareTo(Integer.valueOf(((SemanticsNode) obj2).id));
            case 3:
                MutableObjectFloatMap mutableObjectFloatMap = (MutableObjectFloatMap) obj3;
                return Float.valueOf(mutableObjectFloatMap.get(((Map.Entry) obj2).getKey())).compareTo(Float.valueOf(mutableObjectFloatMap.get(((Map.Entry) obj).getKey())));
            default:
                FeedGroupReorderDialog feedGroupReorderDialog = (FeedGroupReorderDialog) obj3;
                return Integer.valueOf(feedGroupReorderDialog.groupOrderedIdList.indexOf(Long.valueOf(((FeedGroupEntity) obj).uid))).compareTo(Integer.valueOf(feedGroupReorderDialog.groupOrderedIdList.indexOf(Long.valueOf(((FeedGroupEntity) obj2).uid))));
        }
    }

    public /* synthetic */ SemanticsSortKt$special$$inlined$thenBy$1(Object obj, int i) {
        this.$r8$classId = i;
        this.$this_thenBy = obj;
    }
}
