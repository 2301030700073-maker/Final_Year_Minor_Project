package kotlin.collections;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.DelimitedRangesSequence;
import kotlin.text.DelimitedRangesSequence$iterator$1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IndexingIterable implements Iterable, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public final Object iteratorFactory;

    public /* synthetic */ IndexingIterable(Object obj, int i) {
        this.$r8$classId = i;
        this.iteratorFactory = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int i = this.$r8$classId;
        Object obj = this.iteratorFactory;
        switch (i) {
            case 0:
                return new IndexingIterator(Intrinsics.iterator((Object[]) ((Worker$$ExternalSyntheticLambda0) obj).f$0));
            default:
                return new DelimitedRangesSequence$iterator$1((DelimitedRangesSequence) obj);
        }
    }
}
