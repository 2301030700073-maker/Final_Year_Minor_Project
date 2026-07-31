package kotlin.collections;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.DropSequence;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IndexingIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId = 0;
    public int index;
    public final Iterator iterator;

    public IndexingIterator(DropSequence dropSequence, byte b) {
        this.index = dropSequence.count;
        this.iterator = dropSequence.sequence.iterator();
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
                IntOffsetKt.throwIndexOverflow();
                throw null;
            case 1:
                break;
            default:
                int i3 = this.index;
                if (i3 != 0) {
                    this.index = i3 - 1;
                    return it.next();
                }
                Regex$$ExternalSyntheticBUOutline0.m990m();
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
        it.getClass();
        this.iterator = it;
    }

    public IndexingIterator(DropSequence dropSequence) {
        this.iterator = dropSequence.sequence.iterator();
        this.index = dropSequence.count;
    }
}
