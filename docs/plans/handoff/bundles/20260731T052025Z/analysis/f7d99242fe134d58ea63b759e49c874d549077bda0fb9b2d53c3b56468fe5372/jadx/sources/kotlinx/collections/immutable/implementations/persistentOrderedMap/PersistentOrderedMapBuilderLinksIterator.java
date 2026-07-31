package kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.collections.immutable.internal.EndOfChain;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentOrderedMapBuilderLinksIterator implements Iterator, KMappedMarker {
    public final PersistentOrderedMapBuilder builder;
    public int expectedModCount;
    public int index;
    public Object lastIteratedKey;
    public Object nextKey;
    public boolean nextWasInvoked;

    public PersistentOrderedMapBuilderLinksIterator(Object obj, PersistentOrderedMapBuilder persistentOrderedMapBuilder) {
        persistentOrderedMapBuilder.getClass();
        this.nextKey = obj;
        this.builder = persistentOrderedMapBuilder;
        this.lastIteratedKey = EndOfChain.INSTANCE;
        this.expectedModCount = persistentOrderedMapBuilder.hashMapBuilder.modCount;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.index < this.builder.getSize();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final LinkedValue next() {
        PersistentOrderedMapBuilder persistentOrderedMapBuilder = this.builder;
        if (persistentOrderedMapBuilder.hashMapBuilder.modCount != this.expectedModCount) {
            StreamSharing$$ExternalSyntheticLambda0.m();
            return null;
        }
        if (!hasNext()) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return null;
        }
        Object obj = this.nextKey;
        this.lastIteratedKey = obj;
        this.nextWasInvoked = true;
        this.index++;
        V v = persistentOrderedMapBuilder.hashMapBuilder.get(obj);
        if (v != 0) {
            LinkedValue linkedValue = (LinkedValue) v;
            this.nextKey = linkedValue.next;
            return linkedValue;
        }
        throw new ConcurrentModificationException("Hash code of a key (" + this.nextKey + ") has changed after it was added to the persistent map.");
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
        Object obj = this.lastIteratedKey;
        PersistentOrderedMapBuilder persistentOrderedMapBuilder = this.builder;
        TypeIntrinsics.asMutableMap(persistentOrderedMapBuilder).remove(obj);
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = persistentOrderedMapBuilder.hashMapBuilder.modCount;
        this.index--;
    }
}
