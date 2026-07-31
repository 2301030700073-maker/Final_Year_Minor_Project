package kotlin.collections.builders;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderKeysIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeKeysIterator;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractMutableCollection;
import kotlin.collections.builders.MapBuilder;
import kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilder;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilderKeysIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MapBuilderValues extends AbstractMutableCollection {
    public final /* synthetic */ int $r8$classId;
    public final Object backing;

    public /* synthetic */ MapBuilderValues(int i, Object obj) {
        this.$r8$classId = i;
        this.backing = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection collection) {
        switch (this.$r8$classId) {
            case 0:
                collection.getClass();
                throw new UnsupportedOperationException();
            default:
                return super.addAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.$r8$classId) {
            case 0:
                ((MapBuilder) this.backing).clear();
                break;
            case 1:
                ((PersistentHashMapBuilder) this.backing).clear();
                break;
            case 2:
                ((kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder) this.backing).clear();
                break;
            default:
                ((PersistentOrderedMapBuilder) this.backing).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((MapBuilder) this.backing).containsValue(obj);
            case 1:
                return ((PersistentHashMapBuilder) this.backing).containsValue(obj);
            case 2:
                return ((kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder) this.backing).containsValue(obj);
            default:
                return ((PersistentOrderedMapBuilder) this.backing).containsValue(obj);
        }
    }

    @Override // kotlin.collections.AbstractMutableCollection
    public final int getSize() {
        switch (this.$r8$classId) {
            case 0:
                return ((MapBuilder) this.backing).size;
            case 1:
                return ((PersistentHashMapBuilder) this.backing).getSize();
            case 2:
                return ((kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder) this.backing).getSize();
            default:
                return ((PersistentOrderedMapBuilder) this.backing).getSize();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        switch (this.$r8$classId) {
            case 0:
                return ((MapBuilder) this.backing).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i = this.$r8$classId;
        int i2 = 0;
        Object obj = this.backing;
        switch (i) {
            case 0:
                MapBuilder mapBuilder = (MapBuilder) obj;
                mapBuilder.getClass();
                return new MapBuilder.KeysItr(mapBuilder, 2);
            case 1:
                PersistentHashMapBuilder persistentHashMapBuilder = (PersistentHashMapBuilder) obj;
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
                while (i2 < 8) {
                    trieNodeBaseIteratorArr[i2] = new TrieNodeKeysIterator(2);
                    i2++;
                }
                return new PersistentHashMapBuilderKeysIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
            case 2:
                kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder persistentHashMapBuilder2 = (kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder) obj;
                persistentHashMapBuilder2.getClass();
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr2 = new TrieNodeBaseIterator[8];
                while (i2 < 8) {
                    trieNodeBaseIteratorArr2[i2] = new kotlinx.collections.immutable.implementations.immutableMap.TrieNodeKeysIterator(2);
                    i2++;
                }
                return new kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderKeysIterator(persistentHashMapBuilder2, trieNodeBaseIteratorArr2);
            default:
                return new PersistentOrderedMapBuilderKeysIterator((PersistentOrderedMapBuilder) obj, 2);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                MapBuilder mapBuilder = (MapBuilder) this.backing;
                mapBuilder.checkIsMutable$kotlin_stdlib();
                int findValue = mapBuilder.findValue(obj);
                if (findValue < 0) {
                    return false;
                }
                mapBuilder.removeEntryAt(findValue);
                return true;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        switch (this.$r8$classId) {
            case 0:
                collection.getClass();
                ((MapBuilder) this.backing).checkIsMutable$kotlin_stdlib();
                break;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection collection) {
        switch (this.$r8$classId) {
            case 0:
                collection.getClass();
                ((MapBuilder) this.backing).checkIsMutable$kotlin_stdlib();
                break;
        }
        return super.retainAll(collection);
    }
}
