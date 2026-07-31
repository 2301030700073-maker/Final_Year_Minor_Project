package kotlin.collections;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.DropSequence;
import kotlin.sequences.TakeSequence;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IndexingIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public int index;
    public final Iterator iterator;

    public IndexingIterator(TakeSequence takeSequence) {
        this.$r8$classId = 2;
        this.index = 50;
        this.iterator = takeSequence.sequence.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.$r8$classId;
        Iterator it = this.iterator;
        switch (i) {
            case 0:
                return it.hasNext();
            case 1:
                break;
            default:
                return this.index > 0 && it.hasNext();
        }
        while (this.index > 0 && it.hasNext()) {
            it.next();
            this.index--;
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        Iterator it = this.iterator;
        switch (i) {
            case 0:
                int i2 = this.index;
                this.index = i2 + 1;
                if (i2 >= 0) {
                    return new IndexedValue(i2, it.next());
                }
                Jsoup.throwIndexOverflow();
                throw null;
            case 1:
                break;
            default:
                int i3 = this.index;
                if (i3 != 0) {
                    this.index = i3 - 1;
                    return it.next();
                }
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return null;
        }
        while (this.index > 0 && it.hasNext()) {
            it.next();
            this.index--;
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public IndexingIterator(Iterator it) {
        this.$r8$classId = 0;
        it.getClass();
        this.iterator = it;
    }

    public IndexingIterator(DropSequence dropSequence) {
        this.$r8$classId = 1;
        this.iterator = dropSequence.sequence.iterator();
        this.index = dropSequence.count;
    }
}
