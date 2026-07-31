package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.ui.graphics.vector.VectorGroup$iterator$1;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.AbstractMutableSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderKeys extends AbstractMutableSet {
    public final /* synthetic */ int $r8$classId;
    public final PersistentHashMapBuilder builder;

    public /* synthetic */ PersistentHashMapBuilderKeys(int i, PersistentHashMapBuilder persistentHashMapBuilder) {
        this.$r8$classId = i;
        this.builder = persistentHashMapBuilder;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.$r8$classId;
        PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
        switch (i) {
            case 0:
                persistentHashMapBuilder.clear();
                break;
            default:
                persistentHashMapBuilder.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return this.builder.containsKey(obj);
            default:
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
                    Object obj2 = persistentHashMapBuilder.get(key);
                    if (obj2 != null) {
                        return obj2.equals(entry.getValue());
                    }
                    if (entry.getValue() == null && persistentHashMapBuilder.containsKey(entry.getKey())) {
                        return true;
                    }
                }
                return false;
        }
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int getSize() {
        int i = this.$r8$classId;
        PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
        switch (i) {
        }
        return persistentHashMapBuilder.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.$r8$classId;
        PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
        switch (i) {
            case 0:
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    trieNodeBaseIteratorArr[i2] = new TrieNodeKeysIterator(0);
                }
                return new PersistentHashMapBuilderKeysIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
            default:
                return new VectorGroup$iterator$1(persistentHashMapBuilder);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
                if (!persistentHashMapBuilder.containsKey(obj)) {
                    return false;
                }
                persistentHashMapBuilder.remove(obj);
                return true;
            default:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return this.builder.remove(entry.getKey(), entry.getValue());
        }
    }
}
