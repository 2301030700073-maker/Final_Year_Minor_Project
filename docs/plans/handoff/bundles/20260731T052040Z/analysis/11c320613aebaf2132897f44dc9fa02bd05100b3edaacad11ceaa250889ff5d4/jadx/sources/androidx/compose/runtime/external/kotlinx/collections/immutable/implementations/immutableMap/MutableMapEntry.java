package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.collection.MapEntry;
import androidx.compose.ui.graphics.vector.VectorGroup$iterator$1;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableMapEntry extends MapEntry implements KMutableMap.Entry {
    public final VectorGroup$iterator$1 parentIterator;
    public Object value;

    public MutableMapEntry(VectorGroup$iterator$1 vectorGroup$iterator$1, Object obj, Object obj2) {
        super(obj, obj2, 1);
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
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
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
