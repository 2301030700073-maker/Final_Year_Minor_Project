package androidx.collection;

import androidx.sqlite.SQLite;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequenceBuilderIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableOrderedSetWrapper$iterator$1 implements Iterator, KMappedMarker {
    public int current = -1;
    public final SequenceBuilderIterator iterator;
    public final /* synthetic */ MutableOrderedSetWrapper this$0;

    public MutableOrderedSetWrapper$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper) {
        this.this$0 = mutableOrderedSetWrapper;
        this.iterator = SQLite.iterator(new MutableOrderedSetWrapper$iterator$1$iterator$1(mutableOrderedSetWrapper, this, null));
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.iterator.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.current;
        if (i != -1) {
            this.this$0.parent.removeElementAt(i);
            this.current = -1;
        }
    }
}
