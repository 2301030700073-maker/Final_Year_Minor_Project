package kotlin.collections;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.UIntArray;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import kotlinx.serialization.internal.EnumDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IndexingIterable implements Iterable, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public final Object iteratorFactory;

    public IndexingIterable() {
        this.$r8$classId = 1;
        this.iteratorFactory = new CopyOnWriteArrayList();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int i = this.$r8$classId;
        Object obj = this.iteratorFactory;
        switch (i) {
            case 0:
                return new IndexingIterator((Iterator) ((Function0) obj).invoke());
            case 1:
                Iterator it = ((CopyOnWriteArrayList) obj).iterator();
                it.getClass();
                return it;
            case 2:
                Object[] objArr = (Object[]) obj;
                objArr.getClass();
                return new UIntArray.Iterator(objArr);
            case 3:
                return new UIntArray.Iterator(7, (boolean[]) obj);
            case 4:
                return ((Sequence) obj).iterator();
            default:
                return new UIntArray.Iterator((EnumDescriptor) obj);
        }
    }

    public /* synthetic */ IndexingIterable(int i, Object obj) {
        this.$r8$classId = i;
        this.iteratorFactory = obj;
    }
}
