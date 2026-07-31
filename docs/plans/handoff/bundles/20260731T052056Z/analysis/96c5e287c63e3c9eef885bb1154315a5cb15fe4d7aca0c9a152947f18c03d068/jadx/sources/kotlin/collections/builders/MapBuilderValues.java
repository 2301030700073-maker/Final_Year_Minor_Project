package kotlin.collections.builders;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderKeysIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNodeKeysIterator;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.markers.KMutableCollection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapBuilderValues extends AbstractCollection implements Collection, KMutableCollection {
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
        int i = this.$r8$classId;
        Object obj = this.backing;
        switch (i) {
            case 0:
                ((MapBuilder) obj).clear();
                break;
            default:
                ((PersistentHashMapBuilder) obj).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.backing;
        switch (i) {
            case 0:
                return ((MapBuilder) obj2).containsValue(obj);
            default:
                return ((PersistentHashMapBuilder) obj2).containsValue(obj);
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
        Object obj = this.backing;
        switch (i) {
            case 0:
                return new MapBuilder.KeysItr((MapBuilder) obj, 2);
            default:
                PersistentHashMapBuilder persistentHashMapBuilder = (PersistentHashMapBuilder) obj;
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    trieNodeBaseIteratorArr[i2] = new TrieNodeKeysIterator(2);
                }
                return new PersistentHashMapBuilderKeysIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
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

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i = this.$r8$classId;
        Object obj = this.backing;
        switch (i) {
            case 0:
                return ((MapBuilder) obj).size;
            default:
                return ((PersistentHashMapBuilder) obj).size;
        }
    }
}
