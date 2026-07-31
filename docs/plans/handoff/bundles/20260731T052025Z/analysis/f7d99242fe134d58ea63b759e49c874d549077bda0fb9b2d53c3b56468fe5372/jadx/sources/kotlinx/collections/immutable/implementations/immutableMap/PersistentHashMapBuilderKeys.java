package kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilder;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilderKeysIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderKeys extends AbstractMutableSet {
    public final /* synthetic */ int $r8$classId;
    public final AbstractMutableMap builder;

    public /* synthetic */ PersistentHashMapBuilderKeys(AbstractMutableMap abstractMutableMap, int i) {
        this.$r8$classId = i;
        this.builder = abstractMutableMap;
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
        switch (this.$r8$classId) {
            case 0:
                ((PersistentHashMapBuilder) this.builder).clear();
                break;
            default:
                ((PersistentOrderedMapBuilder) this.builder).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((PersistentHashMapBuilder) this.builder).containsKey(obj);
            default:
                return ((PersistentOrderedMapBuilder) this.builder).hashMapBuilder.containsKey(obj);
        }
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int getSize() {
        switch (this.$r8$classId) {
            case 0:
                return ((PersistentHashMapBuilder) this.builder).getSize();
            default:
                return ((PersistentOrderedMapBuilder) this.builder).getSize();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.$r8$classId;
        AbstractMutableMap abstractMutableMap = this.builder;
        switch (i) {
            case 0:
                PersistentHashMapBuilder persistentHashMapBuilder = (PersistentHashMapBuilder) abstractMutableMap;
                persistentHashMapBuilder.getClass();
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    trieNodeBaseIteratorArr[i2] = new TrieNodeKeysIterator(0);
                }
                return new PersistentHashMapBuilderKeysIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
            default:
                return new PersistentOrderedMapBuilderKeysIterator((PersistentOrderedMapBuilder) abstractMutableMap, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i = this.$r8$classId;
        AbstractMutableMap abstractMutableMap = this.builder;
        switch (i) {
            case 0:
                PersistentHashMapBuilder persistentHashMapBuilder = (PersistentHashMapBuilder) abstractMutableMap;
                if (persistentHashMapBuilder.containsKey(obj)) {
                    persistentHashMapBuilder.remove(obj);
                    break;
                }
                break;
            default:
                PersistentOrderedMapBuilder persistentOrderedMapBuilder = (PersistentOrderedMapBuilder) abstractMutableMap;
                if (persistentOrderedMapBuilder.hashMapBuilder.containsKey(obj)) {
                    persistentOrderedMapBuilder.remove(obj);
                    break;
                }
                break;
        }
        return true;
    }
}
