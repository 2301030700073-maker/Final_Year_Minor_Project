package kotlin.collections;

import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import java.util.Iterator;
import kotlin.UIntArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.DelimitedRangesSequence;
import kotlin.text.DelimitedRangesSequence$iterator$1;
import kotlinx.serialization.internal.EnumDescriptor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IndexingIterable implements Iterable, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public final Object iteratorFactory;

    public /* synthetic */ IndexingIterable(int i, Object obj) {
        this.$r8$classId = i;
        this.iteratorFactory = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int i = this.$r8$classId;
        Object obj = this.iteratorFactory;
        switch (i) {
            case 0:
                return new IndexingIterator(Intrinsics.iterator((Object[]) ((K9$$ExternalSyntheticLambda0) obj).f$0));
            case 1:
                return new DelimitedRangesSequence$iterator$1((DelimitedRangesSequence) obj);
            default:
                return new UIntArray.Iterator((EnumDescriptor) obj);
        }
    }
}
