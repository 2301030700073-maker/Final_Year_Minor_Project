package androidx.collection;

import androidx.datastore.preferences.protobuf.SmallSortedMap$1;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.Map;
import java.lang.reflect.Array;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrayMap extends SimpleArrayMap implements Map, j$.util.Map {
    public EntrySet mEntrySet;
    public KeySet mKeySet;
    public ValueCollection mValues;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class EntrySet extends AbstractSet {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Map this$0;

        public /* synthetic */ EntrySet(int i, Map map) {
            this.$r8$classId = i;
            this.this$0 = map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            int i = this.$r8$classId;
            Map map = this.this$0;
            switch (i) {
                case 1:
                    Map.Entry entry = (Map.Entry) obj;
                    if (contains(entry)) {
                        return false;
                    }
                    ((SmallSortedMap$1) map).put$androidx$datastore$preferences$protobuf$SmallSortedMap((Comparable) entry.getKey(), entry.getValue());
                    return true;
                case 2:
                    Map.Entry entry2 = (Map.Entry) obj;
                    if (contains(entry2)) {
                        return false;
                    }
                    ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) map).put((Comparable) entry2.getKey(), entry2.getValue());
                    return true;
                default:
                    return super.add(obj);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            int i = this.$r8$classId;
            Map map = this.this$0;
            switch (i) {
                case 1:
                    ((SmallSortedMap$1) map).clear();
                    break;
                case 2:
                    ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) map).clear();
                    break;
                default:
                    super.clear();
                    break;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            int i = this.$r8$classId;
            Map map = this.this$0;
            switch (i) {
                case 1:
                    Map.Entry entry = (Map.Entry) obj;
                    Object obj2 = ((SmallSortedMap$1) map).get(entry.getKey());
                    Object value = entry.getValue();
                    if (obj2 != value) {
                        return obj2 != null && obj2.equals(value);
                    }
                    return true;
                case 2:
                    Map.Entry entry2 = (Map.Entry) obj;
                    Object obj3 = ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) map).get(entry2.getKey());
                    Object value2 = entry2.getValue();
                    if (obj3 != value2) {
                        return obj3 != null && obj3.equals(value2);
                    }
                    return true;
                default:
                    return super.contains(obj);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            int i = this.$r8$classId;
            Map map = this.this$0;
            switch (i) {
                case 0:
                    return ((ArrayMap) map).new MapIterator();
                case 1:
                    final SmallSortedMap$1 smallSortedMap$1 = (SmallSortedMap$1) map;
                    final int i2 = 0;
                    return new Iterator() { // from class: androidx.datastore.preferences.protobuf.SmallSortedMap$EntryIterator
                        public Iterator lazyOverflowIterator;
                        public boolean nextCalledBeforeRemove;
                        public int pos = -1;

                        public final Iterator getOverflowIterator() {
                            int i3 = i2;
                            AbstractMap abstractMap = smallSortedMap$1;
                            switch (i3) {
                                case 0:
                                    Iterator it = this.lazyOverflowIterator;
                                    if (it != null) {
                                        return it;
                                    }
                                    Iterator it2 = ((SmallSortedMap$1) abstractMap).overflowEntries.entrySet().iterator();
                                    this.lazyOverflowIterator = it2;
                                    return it2;
                                default:
                                    Iterator it3 = this.lazyOverflowIterator;
                                    if (it3 != null) {
                                        return it3;
                                    }
                                    Iterator it4 = ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap).overflowEntries.entrySet().iterator();
                                    this.lazyOverflowIterator = it4;
                                    return it4;
                            }
                        }

                        @Override // java.util.Iterator
                        public final boolean hasNext() {
                            int i3 = i2;
                            AbstractMap abstractMap = smallSortedMap$1;
                            switch (i3) {
                                case 0:
                                    SmallSortedMap$1 smallSortedMap$12 = (SmallSortedMap$1) abstractMap;
                                    if (this.pos + 1 < smallSortedMap$12.entryList.size() || (!smallSortedMap$12.overflowEntries.isEmpty() && getOverflowIterator().hasNext())) {
                                        break;
                                    }
                                    break;
                                default:
                                    if (this.pos + 1 < ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap).entryList.size() || getOverflowIterator().hasNext()) {
                                        break;
                                    }
                                    break;
                            }
                            return true;
                        }

                        @Override // java.util.Iterator
                        public final Object next() {
                            int i3 = i2;
                            AbstractMap abstractMap = smallSortedMap$1;
                            switch (i3) {
                                case 0:
                                    this.nextCalledBeforeRemove = true;
                                    int i4 = this.pos + 1;
                                    this.pos = i4;
                                    SmallSortedMap$1 smallSortedMap$12 = (SmallSortedMap$1) abstractMap;
                                    if (i4 >= smallSortedMap$12.entryList.size()) {
                                        break;
                                    } else {
                                        break;
                                    }
                                default:
                                    this.nextCalledBeforeRemove = true;
                                    int i5 = this.pos + 1;
                                    this.pos = i5;
                                    kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1 smallSortedMap$13 = (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap;
                                    if (i5 >= smallSortedMap$13.entryList.size()) {
                                        break;
                                    } else {
                                        break;
                                    }
                            }
                            return (Map.Entry) getOverflowIterator().next();
                        }

                        @Override // java.util.Iterator
                        public final void remove() {
                            int i3 = i2;
                            AbstractMap abstractMap = smallSortedMap$1;
                            switch (i3) {
                                case 0:
                                    SmallSortedMap$1 smallSortedMap$12 = (SmallSortedMap$1) abstractMap;
                                    if (!this.nextCalledBeforeRemove) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("remove() was called before next()");
                                        break;
                                    } else {
                                        this.nextCalledBeforeRemove = false;
                                        int i4 = SmallSortedMap$1.$r8$clinit;
                                        smallSortedMap$12.checkMutable();
                                        if (this.pos >= smallSortedMap$12.entryList.size()) {
                                            getOverflowIterator().remove();
                                            break;
                                        } else {
                                            int i5 = this.pos;
                                            this.pos = i5 - 1;
                                            smallSortedMap$12.removeArrayEntryAt(i5);
                                            break;
                                        }
                                    }
                                default:
                                    kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1 smallSortedMap$13 = (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap;
                                    if (!this.nextCalledBeforeRemove) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("remove() was called before next()");
                                        break;
                                    } else {
                                        this.nextCalledBeforeRemove = false;
                                        int i6 = kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1.$r8$clinit;
                                        smallSortedMap$13.checkMutable();
                                        if (this.pos >= smallSortedMap$13.entryList.size()) {
                                            getOverflowIterator().remove();
                                            break;
                                        } else {
                                            int i7 = this.pos;
                                            this.pos = i7 - 1;
                                            smallSortedMap$13.removeArrayEntryAt(i7);
                                            break;
                                        }
                                    }
                            }
                        }
                    };
                default:
                    final kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1 smallSortedMap$12 = (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) map;
                    final int i3 = 1;
                    return new Iterator() { // from class: androidx.datastore.preferences.protobuf.SmallSortedMap$EntryIterator
                        public Iterator lazyOverflowIterator;
                        public boolean nextCalledBeforeRemove;
                        public int pos = -1;

                        public final Iterator getOverflowIterator() {
                            int i32 = i3;
                            AbstractMap abstractMap = smallSortedMap$12;
                            switch (i32) {
                                case 0:
                                    Iterator it = this.lazyOverflowIterator;
                                    if (it != null) {
                                        return it;
                                    }
                                    Iterator it2 = ((SmallSortedMap$1) abstractMap).overflowEntries.entrySet().iterator();
                                    this.lazyOverflowIterator = it2;
                                    return it2;
                                default:
                                    Iterator it3 = this.lazyOverflowIterator;
                                    if (it3 != null) {
                                        return it3;
                                    }
                                    Iterator it4 = ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap).overflowEntries.entrySet().iterator();
                                    this.lazyOverflowIterator = it4;
                                    return it4;
                            }
                        }

                        @Override // java.util.Iterator
                        public final boolean hasNext() {
                            int i32 = i3;
                            AbstractMap abstractMap = smallSortedMap$12;
                            switch (i32) {
                                case 0:
                                    SmallSortedMap$1 smallSortedMap$122 = (SmallSortedMap$1) abstractMap;
                                    if (this.pos + 1 < smallSortedMap$122.entryList.size() || (!smallSortedMap$122.overflowEntries.isEmpty() && getOverflowIterator().hasNext())) {
                                        break;
                                    }
                                    break;
                                default:
                                    if (this.pos + 1 < ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap).entryList.size() || getOverflowIterator().hasNext()) {
                                        break;
                                    }
                                    break;
                            }
                            return true;
                        }

                        @Override // java.util.Iterator
                        public final Object next() {
                            int i32 = i3;
                            AbstractMap abstractMap = smallSortedMap$12;
                            switch (i32) {
                                case 0:
                                    this.nextCalledBeforeRemove = true;
                                    int i4 = this.pos + 1;
                                    this.pos = i4;
                                    SmallSortedMap$1 smallSortedMap$122 = (SmallSortedMap$1) abstractMap;
                                    if (i4 >= smallSortedMap$122.entryList.size()) {
                                        break;
                                    } else {
                                        break;
                                    }
                                default:
                                    this.nextCalledBeforeRemove = true;
                                    int i5 = this.pos + 1;
                                    this.pos = i5;
                                    kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1 smallSortedMap$13 = (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap;
                                    if (i5 >= smallSortedMap$13.entryList.size()) {
                                        break;
                                    } else {
                                        break;
                                    }
                            }
                            return (Map.Entry) getOverflowIterator().next();
                        }

                        @Override // java.util.Iterator
                        public final void remove() {
                            int i32 = i3;
                            AbstractMap abstractMap = smallSortedMap$12;
                            switch (i32) {
                                case 0:
                                    SmallSortedMap$1 smallSortedMap$122 = (SmallSortedMap$1) abstractMap;
                                    if (!this.nextCalledBeforeRemove) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("remove() was called before next()");
                                        break;
                                    } else {
                                        this.nextCalledBeforeRemove = false;
                                        int i4 = SmallSortedMap$1.$r8$clinit;
                                        smallSortedMap$122.checkMutable();
                                        if (this.pos >= smallSortedMap$122.entryList.size()) {
                                            getOverflowIterator().remove();
                                            break;
                                        } else {
                                            int i5 = this.pos;
                                            this.pos = i5 - 1;
                                            smallSortedMap$122.removeArrayEntryAt(i5);
                                            break;
                                        }
                                    }
                                default:
                                    kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1 smallSortedMap$13 = (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) abstractMap;
                                    if (!this.nextCalledBeforeRemove) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("remove() was called before next()");
                                        break;
                                    } else {
                                        this.nextCalledBeforeRemove = false;
                                        int i6 = kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1.$r8$clinit;
                                        smallSortedMap$13.checkMutable();
                                        if (this.pos >= smallSortedMap$13.entryList.size()) {
                                            getOverflowIterator().remove();
                                            break;
                                        } else {
                                            int i7 = this.pos;
                                            this.pos = i7 - 1;
                                            smallSortedMap$13.removeArrayEntryAt(i7);
                                            break;
                                        }
                                    }
                            }
                        }
                    };
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i = this.$r8$classId;
            Map map = this.this$0;
            switch (i) {
                case 1:
                    Map.Entry entry = (Map.Entry) obj;
                    if (!contains(entry)) {
                        return false;
                    }
                    ((SmallSortedMap$1) map).remove(entry.getKey());
                    return true;
                case 2:
                    Map.Entry entry2 = (Map.Entry) obj;
                    if (!contains(entry2)) {
                        return false;
                    }
                    ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) map).remove(entry2.getKey());
                    return true;
                default:
                    return super.remove(obj);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            int i = this.$r8$classId;
            Map map = this.this$0;
            switch (i) {
                case 0:
                    return ((ArrayMap) map).size;
                case 1:
                    return ((SmallSortedMap$1) map).size();
                default:
                    return ((kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1) map).size();
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MapIterator implements Iterator, Map.Entry {
        public int mEnd;
        public boolean mEntryValid;
        public int mIndex = -1;

        public MapIterator() {
            this.mEnd = ArrayMap.this.size - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.mEntryValid) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This container does not support retaining Map.Entry objects");
                return false;
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                int i = this.mIndex;
                ArrayMap arrayMap = ArrayMap.this;
                if (Intrinsics.areEqual(key, arrayMap.keyAt(i)) && Intrinsics.areEqual(entry.getValue(), arrayMap.valueAt(this.mIndex))) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            if (this.mEntryValid) {
                return ArrayMap.this.keyAt(this.mIndex);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This container does not support retaining Map.Entry objects");
            return null;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            if (this.mEntryValid) {
                return ArrayMap.this.valueAt(this.mIndex);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This container does not support retaining Map.Entry objects");
            return null;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.mIndex < this.mEnd;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (!this.mEntryValid) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This container does not support retaining Map.Entry objects");
                return 0;
            }
            int i = this.mIndex;
            ArrayMap arrayMap = ArrayMap.this;
            Object keyAt = arrayMap.keyAt(i);
            Object valueAt = arrayMap.valueAt(this.mIndex);
            return (keyAt == null ? 0 : keyAt.hashCode()) ^ (valueAt != null ? valueAt.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            this.mIndex++;
            this.mEntryValid = true;
            return this;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.mEntryValid) {
                Gson$$ExternalSyntheticBUOutline0.m();
                return;
            }
            ArrayMap.this.removeAt(this.mIndex);
            this.mIndex--;
            this.mEnd--;
            this.mEntryValid = false;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (this.mEntryValid) {
                return ArrayMap.this.setValueAt(this.mIndex, obj);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This container does not support retaining Map.Entry objects");
            return null;
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        EntrySet entrySet = this.mEntrySet;
        if (entrySet != null) {
            return entrySet;
        }
        EntrySet entrySet2 = new EntrySet(0, this);
        this.mEntrySet = entrySet2;
        return entrySet2;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map
    public final Set keySet() {
        KeySet keySet = this.mKeySet;
        if (keySet != null) {
            return keySet;
        }
        KeySet keySet2 = new KeySet();
        this.mKeySet = keySet2;
        return keySet2;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        ensureCapacity(map.size() + this.size);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public final boolean removeAll(Collection collection) {
        int i = this.size;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i != this.size;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map
    public final Collection values() {
        ValueCollection valueCollection = this.mValues;
        if (valueCollection != null) {
            return valueCollection;
        }
        ValueCollection valueCollection2 = new ValueCollection();
        this.mValues = valueCollection2;
        return valueCollection2;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KeyIterator implements Iterator, KMappedMarker {
        public final /* synthetic */ int $r8$classId;
        public boolean canRemove;
        public int index;
        public int size;
        public final /* synthetic */ Object this$0;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public KeyIterator(ArrayMap arrayMap, int i) {
            this(arrayMap.size);
            this.$r8$classId = i;
            switch (i) {
                case 1:
                    this.this$0 = arrayMap;
                    this(arrayMap.size);
                    break;
                default:
                    this.this$0 = arrayMap;
                    break;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.index < this.size;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Object keyAt;
            if (!hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            int i = this.index;
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    keyAt = ((ArrayMap) obj).keyAt(i);
                    break;
                case 1:
                    keyAt = ((ArrayMap) obj).valueAt(i);
                    break;
                default:
                    keyAt = ((ArraySet) obj).array[i];
                    break;
            }
            this.index++;
            this.canRemove = true;
            return keyAt;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.canRemove) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Call next() before removing an element.");
                return;
            }
            int i = this.index - 1;
            this.index = i;
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    ((ArrayMap) obj).removeAt(i);
                    break;
                case 1:
                    ((ArrayMap) obj).removeAt(i);
                    break;
                default:
                    ((ArraySet) obj).removeAt(i);
                    break;
            }
            this.size--;
            this.canRemove = false;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public KeyIterator(ArraySet arraySet) {
            this(arraySet._size);
            this.$r8$classId = 2;
            this.this$0 = arraySet;
        }

        public KeyIterator(int i) {
            this.size = i;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KeySet implements Set {
        public KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return ArrayMap.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection collection) {
            return ArrayMap.this.containsAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            try {
                if (arrayMap.size == set.size()) {
                    return arrayMap.containsAll(set);
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            ArrayMap arrayMap = ArrayMap.this;
            int i = 0;
            for (int i2 = arrayMap.size - 1; i2 >= 0; i2--) {
                Object keyAt = arrayMap.keyAt(i2);
                i += keyAt == null ? 0 : keyAt.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new KeyIterator(ArrayMap.this, 0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            int indexOfKey = arrayMap.indexOfKey(obj);
            if (indexOfKey < 0) {
                return false;
            }
            arrayMap.removeAt(indexOfKey);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection collection) {
            return ArrayMap.this.removeAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.size;
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (!collection.contains(arrayMap.keyAt(i2))) {
                    arrayMap.removeAt(i2);
                }
            }
            return i != arrayMap.size;
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return ArrayMap.this.size;
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.size;
            if (objArr.length < i) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
            }
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.keyAt(i2);
            }
            if (objArr.length > i) {
                objArr[i] = null;
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.size;
            Object[] objArr = new Object[i];
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.keyAt(i2);
            }
            return objArr;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ValueCollection implements Collection {
        public ValueCollection() {
        }

        @Override // java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return ArrayMap.this.__restricted$indexOfValue(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new KeyIterator(ArrayMap.this, 1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            int __restricted$indexOfValue = arrayMap.__restricted$indexOfValue(obj);
            if (__restricted$indexOfValue < 0) {
                return false;
            }
            arrayMap.removeAt(__restricted$indexOfValue);
            return true;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.size;
            int i2 = 0;
            boolean z = false;
            while (i2 < i) {
                if (collection.contains(arrayMap.valueAt(i2))) {
                    arrayMap.removeAt(i2);
                    i2--;
                    i--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.size;
            int i2 = 0;
            boolean z = false;
            while (i2 < i) {
                if (!collection.contains(arrayMap.valueAt(i2))) {
                    arrayMap.removeAt(i2);
                    i2--;
                    i--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return ArrayMap.this.size;
        }

        @Override // java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.size;
            if (objArr.length < i) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
            }
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.valueAt(i2);
            }
            if (objArr.length > i) {
                objArr[i] = null;
            }
            return objArr;
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.size;
            Object[] objArr = new Object[i];
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.valueAt(i2);
            }
            return objArr;
        }
    }
}
