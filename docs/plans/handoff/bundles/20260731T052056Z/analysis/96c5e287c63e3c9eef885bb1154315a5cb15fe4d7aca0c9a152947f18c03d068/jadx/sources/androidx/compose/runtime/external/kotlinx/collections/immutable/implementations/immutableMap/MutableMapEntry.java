package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.collection.MapEntry;
import androidx.compose.ui.graphics.vector.VectorGroup$iterator$1;
import kotlin.jvm.internal.markers.KMutableMap;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutableMapEntry extends MapEntry implements KMutableMap.Entry {
    public final VectorGroup$iterator$1 parentIterator;
    public Object value;

    public MutableMapEntry(VectorGroup$iterator$1 vectorGroup$iterator$1, Object obj, Object obj2) {
        super(1, obj, obj2);
        this.parentIterator = vectorGroup$iterator$1;
        this.value = obj2;
    }

    @Override // androidx.collection.MapEntry, java.util.Map.Entry
    public final Object getValue() {
        return this.value;
    }

    @Override // androidx.collection.MapEntry, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.value;
        this.value = obj;
        PersistentHashMapBuilderBaseIterator persistentHashMapBuilderBaseIterator = (PersistentHashMapBuilderBaseIterator) this.parentIterator.it;
        PersistentHashMapBuilder persistentHashMapBuilder = persistentHashMapBuilderBaseIterator.builder;
        Object obj3 = this.key;
        if (!persistentHashMapBuilder.containsKey(obj3)) {
            return obj2;
        }
        boolean z = persistentHashMapBuilderBaseIterator.hasNext;
        if (!z) {
            persistentHashMapBuilder.put(obj3, obj);
        } else {
            if (!z) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            TrieNodeBaseIterator trieNodeBaseIterator = persistentHashMapBuilderBaseIterator.path[persistentHashMapBuilderBaseIterator.pathLastIndex];
            Object obj4 = trieNodeBaseIterator.buffer[trieNodeBaseIterator.index];
            persistentHashMapBuilder.put(obj3, obj);
            persistentHashMapBuilderBaseIterator.resetPath(obj4 != null ? obj4.hashCode() : 0, persistentHashMapBuilder.node, obj4, 0);
        }
        persistentHashMapBuilderBaseIterator.expectedModCount = persistentHashMapBuilder.modCount;
        return obj2;
    }
}
