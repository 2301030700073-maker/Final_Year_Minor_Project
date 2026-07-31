package kotlin.collections.builders;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.AbstractMutableSet;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapBuilderKeys extends AbstractMutableSet {
    public final /* synthetic */ int $r8$classId;
    public final MapBuilder backing;

    public /* synthetic */ MapBuilderKeys(MapBuilder mapBuilder, int i) {
        this.$r8$classId = i;
        this.backing = mapBuilder;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                ((Map.Entry) obj).getClass();
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        int i = this.$r8$classId;
        collection.getClass();
        switch (i) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        switch (i) {
            case 0:
                mapBuilder.clear();
                break;
            default:
                mapBuilder.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        switch (i) {
            case 0:
                return mapBuilder.containsKey(obj);
            default:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                int findKey = mapBuilder.findKey(entry.getKey());
                if (findKey < 0) {
                    return false;
                }
                Object[] objArr = mapBuilder.valuesArray;
                objArr.getClass();
                return Intrinsics.areEqual(objArr[findKey], entry.getValue());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        switch (this.$r8$classId) {
            case 1:
                collection.getClass();
                return this.backing.containsAllEntries$kotlin_stdlib(collection);
            default:
                return super.containsAll(collection);
        }
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int getSize() {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        switch (i) {
        }
        return mapBuilder.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        switch (i) {
        }
        return mapBuilder.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        switch (i) {
            case 0:
                return new MapBuilder.KeysItr(mapBuilder, 0);
            default:
                return new MapBuilder.KeysItr(mapBuilder, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        switch (i) {
            case 0:
                mapBuilder.checkIsMutable$kotlin_stdlib();
                int findKey = mapBuilder.findKey(obj);
                if (findKey >= 0) {
                    mapBuilder.removeEntryAt(findKey);
                    break;
                } else {
                    break;
                }
            default:
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    mapBuilder.checkIsMutable$kotlin_stdlib();
                    int findKey2 = mapBuilder.findKey(entry.getKey());
                    if (findKey2 >= 0) {
                        Object[] objArr = mapBuilder.valuesArray;
                        objArr.getClass();
                        if (Intrinsics.areEqual(objArr[findKey2], entry.getValue())) {
                            mapBuilder.removeEntryAt(findKey2);
                            break;
                        }
                    }
                }
                break;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        collection.getClass();
        switch (i) {
            case 0:
                mapBuilder.checkIsMutable$kotlin_stdlib();
                break;
            default:
                mapBuilder.checkIsMutable$kotlin_stdlib();
                break;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        int i = this.$r8$classId;
        MapBuilder mapBuilder = this.backing;
        collection.getClass();
        switch (i) {
            case 0:
                mapBuilder.checkIsMutable$kotlin_stdlib();
                break;
            default:
                mapBuilder.checkIsMutable$kotlin_stdlib();
                break;
        }
        return super.retainAll(collection);
    }
}
