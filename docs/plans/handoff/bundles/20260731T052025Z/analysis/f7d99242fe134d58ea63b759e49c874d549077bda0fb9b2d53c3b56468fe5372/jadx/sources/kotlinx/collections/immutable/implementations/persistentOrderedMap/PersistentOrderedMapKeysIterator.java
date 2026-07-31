package kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.collection.MapEntry;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentOrderedMapKeysIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public final PersistentOrderedSetIterator internal;

    public PersistentOrderedMapKeysIterator(PersistentOrderedMap persistentOrderedMap, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.internal = new PersistentOrderedSetIterator(persistentOrderedMap.firstKey, persistentOrderedMap.hashMap, 2);
                break;
            case 2:
                this.internal = new PersistentOrderedSetIterator(persistentOrderedMap.firstKey, persistentOrderedMap.hashMap, 2);
                break;
            default:
                this.internal = new PersistentOrderedSetIterator(persistentOrderedMap.firstKey, persistentOrderedMap.hashMap, 2);
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
        }
        return this.internal.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        PersistentOrderedSetIterator persistentOrderedSetIterator = this.internal;
        switch (i) {
            case 0:
                Object obj = persistentOrderedSetIterator.nextElement;
                persistentOrderedSetIterator.next();
                return obj;
            case 1:
                return new MapEntry(2, persistentOrderedSetIterator.nextElement, persistentOrderedSetIterator.next().value);
            default:
                return persistentOrderedSetIterator.next().value;
        }
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
}
