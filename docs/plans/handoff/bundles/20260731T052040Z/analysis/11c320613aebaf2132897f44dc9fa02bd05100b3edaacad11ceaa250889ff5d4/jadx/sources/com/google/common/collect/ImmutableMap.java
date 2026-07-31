package com.google.common.collect;

import com.google.common.collect.Maps;
import j$.util.Map;
import j$.util.Objects;
import j$.util.Spliterator;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImmutableMap implements Map, Serializable, j$.util.Map {
    public static final Map.Entry[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];
    public transient ImmutableSet entrySet;
    public transient ImmutableSet keySet;
    public transient ImmutableCollection values;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public Map.Entry[] entries = new Map.Entry[4];
        public int size = 0;

        public final ImmutableMap buildOrThrow() {
            int i = this.size;
            if (i == 0) {
                return RegularImmutableMap.EMPTY;
            }
            Map.Entry[] entryArr = this.entries;
            if (i != 1) {
                return RegularImmutableMap.fromEntryArray(i, entryArr);
            }
            Map.Entry entry = entryArr[0];
            Objects.requireNonNull(entry);
            return new SingletonImmutableBiMap(entry.getKey(), entry.getValue());
        }

        public final void put(Object obj, Object obj2) {
            int i = this.size + 1;
            Map.Entry[] entryArr = this.entries;
            if (i > entryArr.length) {
                this.entries = (Map.Entry[]) Arrays.copyOf(entryArr, Maps.expandedCapacity(entryArr.length, i));
            }
            ImmutableMapEntry immutableMapEntry = new ImmutableMapEntry(obj, obj2);
            Map.Entry[] entryArr2 = this.entries;
            int i2 = this.size;
            this.size = i2 + 1;
            entryArr2[i2] = immutableMapEntry;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class IteratorBasedImmutableMap extends ImmutableMap {
        @Override // com.google.common.collect.ImmutableMap
        public final ImmutableSet createEntrySet() {
            return new ImmutableMapEntrySet() { // from class: com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap.1EntrySetImpl
                @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
                public final UnmodifiableIterator iterator() {
                    return new Maps.AnonymousClass8(((ImmutableEnumMap) IteratorBasedImmutableMap.this).delegate.entrySet().iterator(), 0);
                }

                @Override // com.google.common.collect.ImmutableMapEntrySet
                public final ImmutableMap map() {
                    return IteratorBasedImmutableMap.this;
                }
            };
        }

        @Override // com.google.common.collect.ImmutableMap
        public final ImmutableSet createKeySet() {
            return new ImmutableMapKeySet(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        public final ImmutableCollection createValues() {
            return new ImmutableMapValues(this);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final /* bridge */ /* synthetic */ Set entrySet() {
            return entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final Set keySet() {
            ImmutableSet immutableSet = this.keySet;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet createKeySet = createKeySet();
            this.keySet = createKeySet;
            return createKeySet;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final /* bridge */ /* synthetic */ Collection values() {
            return values();
        }
    }

    public static IllegalArgumentException conflictException(Map.Entry entry, String str) {
        return new IllegalArgumentException("Multiple entries with same key: " + entry + " and " + ((Object) str));
    }

    public static ImmutableMap copyOf(Map map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            return (ImmutableMap) map;
        }
        if (!(map instanceof EnumMap)) {
            Set entrySet = map.entrySet();
            Map.Entry[] entryArr = (Map.Entry[]) (entrySet instanceof Collection ? entrySet : Maps.newArrayList(entrySet.iterator())).toArray(EMPTY_ENTRY_ARRAY);
            int length = entryArr.length;
            if (length == 0) {
                return RegularImmutableMap.EMPTY;
            }
            if (length != 1) {
                return RegularImmutableMap.fromEntryArray(entryArr.length, entryArr);
            }
            Map.Entry entry = entryArr[0];
            Objects.requireNonNull(entry);
            return new SingletonImmutableBiMap(entry.getKey(), entry.getValue());
        }
        EnumMap enumMap = new EnumMap((EnumMap) map);
        for (Map.Entry entry2 : enumMap.entrySet()) {
            Maps.checkEntryNotNull(entry2.getKey(), entry2.getValue());
        }
        int size = enumMap.size();
        if (size == 0) {
            return RegularImmutableMap.EMPTY;
        }
        if (size != 1) {
            return new ImmutableEnumMap(enumMap);
        }
        Map.Entry entry3 = (Map.Entry) Iterables.getOnlyElement(enumMap.entrySet());
        return new SingletonImmutableBiMap((Enum) entry3.getKey(), entry3.getValue());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract ImmutableSet createEntrySet();

    public abstract ImmutableSet createKeySet();

    public abstract ImmutableCollection createValues();

    @Override // java.util.Map
    public final ImmutableSet entrySet() {
        ImmutableSet immutableSet = this.entrySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet createEntrySet = createEntrySet();
        this.entrySet = createEntrySet;
        return createEntrySet;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return Maps.hashCodeImpl(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public UnmodifiableIterator keyIterator() {
        return new AnonymousClass1(entrySet().iterator());
    }

    @Override // java.util.Map
    public Set keySet() {
        ImmutableSet immutableSet = this.keySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet createKeySet = createKeySet();
        this.keySet = createKeySet;
        return createKeySet;
    }

    public Spliterator keySpliterator() {
        return Maps.map(entrySet().spliterator(), new Nodes$$ExternalSyntheticLambda0(3));
    }

    @Override // java.util.Map, j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return Maps.toStringImpl(this);
    }

    @Override // java.util.Map
    public ImmutableCollection values() {
        ImmutableCollection immutableCollection = this.values;
        if (immutableCollection != null) {
            return immutableCollection;
        }
        ImmutableCollection createValues = createValues();
        this.values = createValues;
        return createValues;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.common.collect.ImmutableMap$1, reason: invalid class name */
    public final class AnonymousClass1 extends UnmodifiableIterator {
        public final /* synthetic */ int $r8$classId = 1;
        public final UnmodifiableIterator val$entryIterator;

        public AnonymousClass1(ImmutableMapValues immutableMapValues) {
            ImmutableMap immutableMap;
            immutableMap = immutableMapValues.map;
            this.val$entryIterator = immutableMap.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            switch (this.$r8$classId) {
            }
            return this.val$entryIterator.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            switch (this.$r8$classId) {
                case 0:
                    return ((Map.Entry) this.val$entryIterator.next()).getKey();
                default:
                    return ((Map.Entry) this.val$entryIterator.next()).getValue();
            }
        }

        public AnonymousClass1(UnmodifiableIterator unmodifiableIterator) {
            this.val$entryIterator = unmodifiableIterator;
        }
    }
}
