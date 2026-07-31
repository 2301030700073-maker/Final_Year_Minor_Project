package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderBaseIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeMutableEntriesIterator;
import java.util.Iterator;
import java.util.Map;
import kotlin.UIntArray;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VectorGroup$iterator$1 implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId = 1;
    public final Iterator it;

    public VectorGroup$iterator$1(PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeMutableEntriesIterator(this);
        }
        this.it = new PersistentHashMapBuilderBaseIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.$r8$classId;
        Iterator it = this.it;
        switch (i) {
            case 0:
                return it.hasNext();
            case 1:
                return ((PersistentHashMapBuilderBaseIterator) it).hasNext;
            default:
                return ((UIntArray.Iterator) it).hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.$r8$classId;
        Iterator it = this.it;
        switch (i) {
            case 0:
                return (VectorNode) it.next();
            case 1:
                return (Map.Entry) ((PersistentHashMapBuilderBaseIterator) it).next();
            default:
                return ((UIntArray.Iterator) it).next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                ((PersistentHashMapBuilderBaseIterator) this.it).remove();
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public VectorGroup$iterator$1(Object[] objArr) {
        objArr.getClass();
        this.it = new UIntArray.Iterator(objArr);
    }

    public VectorGroup$iterator$1(VectorGroup vectorGroup) {
        this.it = vectorGroup.children.iterator();
    }
}
