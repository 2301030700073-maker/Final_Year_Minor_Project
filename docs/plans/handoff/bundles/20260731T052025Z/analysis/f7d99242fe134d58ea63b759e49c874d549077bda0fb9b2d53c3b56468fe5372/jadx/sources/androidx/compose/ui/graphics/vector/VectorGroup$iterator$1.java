package androidx.compose.ui.graphics.vector;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderBaseIterator;
import kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;
import kotlinx.collections.immutable.implementations.immutableMap.TrieNodeMutableEntriesIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VectorGroup$iterator$1 implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId = 1;
    public final Iterator it;

    public VectorGroup$iterator$1(PersistentHashMapBuilder persistentHashMapBuilder) {
        persistentHashMapBuilder.getClass();
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeMutableEntriesIterator(this);
        }
        this.it = new PersistentHashMapBuilderBaseIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
            case 0:
                return this.it.hasNext();
            case 1:
                return ((androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderBaseIterator) this.it).hasNext;
            default:
                return ((PersistentHashMapBuilderBaseIterator) this.it).hasNext;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                return (VectorNode) this.it.next();
            case 1:
                return (Map.Entry) ((androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderBaseIterator) this.it).next();
            default:
                return (Map.Entry) ((PersistentHashMapBuilderBaseIterator) this.it).next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                ((androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderBaseIterator) this.it).remove();
                return;
            default:
                ((PersistentHashMapBuilderBaseIterator) this.it).remove();
                return;
        }
    }

    public VectorGroup$iterator$1(androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeMutableEntriesIterator(this);
        }
        this.it = new androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderBaseIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
    }

    public VectorGroup$iterator$1(VectorGroup vectorGroup) {
        this.it = vectorGroup.children.iterator();
    }
}
