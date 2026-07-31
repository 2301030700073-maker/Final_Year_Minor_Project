package androidx.compose.runtime.snapshots;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SnapshotStateList$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Collection f$0;

    public /* synthetic */ SnapshotStateList$$ExternalSyntheticLambda0(int i, Collection collection) {
        this.$r8$classId = i;
        this.f$0 = collection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean retainAll;
        int i = this.$r8$classId;
        Collection<?> collection = this.f$0;
        switch (i) {
            case 0:
                retainAll = ((List) obj).retainAll(collection);
                break;
            case 1:
                retainAll = collection.contains(obj);
                break;
            default:
                retainAll = collection.contains(obj);
                break;
        }
        return Boolean.valueOf(retainAll);
    }
}
