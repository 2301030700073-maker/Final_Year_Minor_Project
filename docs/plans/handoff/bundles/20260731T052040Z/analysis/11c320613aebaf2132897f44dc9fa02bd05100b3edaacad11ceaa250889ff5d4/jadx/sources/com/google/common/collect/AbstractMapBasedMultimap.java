package com.google.common.collect;

import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import com.google.common.collect.AbstractMultimap;
import com.google.common.collect.Maps;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.List;
import j$.util.Map;
import j$.util.Objects;
import j$.util.Set;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;
import okio.Okio;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractMapBasedMultimap extends AbstractMultimap implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    public transient Map map;
    public transient int totalSize;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$1, reason: invalid class name */
    public final class AnonymousClass1 implements Iterator {
        public final /* synthetic */ int $r8$classId;
        public final Iterator keyIterator;
        public final /* synthetic */ AbstractMapBasedMultimap this$0;
        public Object key = null;
        public Collection collection = null;
        public Iterator valueIterator = Iterators$EmptyModifiableIterator.INSTANCE;

        public AnonymousClass1(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
            this.$r8$classId = i;
            this.this$0 = abstractMapBasedMultimap;
            this.keyIterator = abstractMapBasedMultimap.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.keyIterator.hasNext() || this.valueIterator.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.valueIterator.hasNext()) {
                Map.Entry entry = (Map.Entry) this.keyIterator.next();
                this.key = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.collection = collection;
                this.valueIterator = collection.iterator();
            }
            Object obj = this.key;
            Object next = this.valueIterator.next();
            switch (this.$r8$classId) {
                case 0:
                    return next;
                default:
                    return new ImmutableEntry(obj, next);
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.valueIterator.remove();
            Collection collection = this.collection;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.keyIterator.remove();
            }
            AbstractMapBasedMultimap abstractMapBasedMultimap = this.this$0;
            abstractMapBasedMultimap.totalSize--;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RandomAccessWrappedList extends WrappedList implements RandomAccess {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class SortedAsMap extends AsMap implements SortedMap {
        public SortedSet sortedKeySet;
        public final /* synthetic */ Multimaps$CustomListMultimap this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SortedAsMap(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
            super(sortedMap);
            this.this$0 = multimaps$CustomListMultimap;
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return sortedMap().comparator();
        }

        public SortedSet createKeySet() {
            return new SortedKeySet(this.this$0, sortedMap());
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return sortedMap().firstKey();
        }

        public SortedMap headMap(Object obj) {
            return new SortedAsMap(this.this$0, sortedMap().headMap(obj));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        public SortedSet keySet() {
            SortedSet sortedSet = this.sortedKeySet;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet createKeySet = createKeySet();
            this.sortedKeySet = createKeySet;
            return createKeySet;
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            return sortedMap().lastKey();
        }

        public SortedMap sortedMap() {
            return (SortedMap) this.submap;
        }

        public SortedMap subMap(Object obj, Object obj2) {
            return new SortedAsMap(this.this$0, sortedMap().subMap(obj, obj2));
        }

        public SortedMap tailMap(Object obj) {
            return new SortedAsMap(this.this$0, sortedMap().tailMap(obj));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class SortedKeySet extends KeySet implements SortedSet, j$.util.SortedSet {
        public final /* synthetic */ Multimaps$CustomListMultimap this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SortedKeySet(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
            super(sortedMap);
            this.this$0 = multimaps$CustomListMultimap;
        }

        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return sortedMap().comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            return sortedMap().firstKey();
        }

        public SortedSet headSet(Object obj) {
            return new SortedKeySet(this.this$0, sortedMap().headMap(obj));
        }

        @Override // java.util.SortedSet
        public final Object last() {
            return sortedMap().lastKey();
        }

        public SortedMap sortedMap() {
            return (SortedMap) this.map;
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new SortedKeySet(this.this$0, sortedMap().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new SortedKeySet(this.this$0, sortedMap().tailMap(obj));
        }
    }

    public AbstractMapBasedMultimap(Map map) {
        Okio.checkArgument(map.isEmpty());
        this.map = map;
    }

    public final void clear() {
        Iterator it = this.map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    public AsMap createAsMap() {
        return new AsMap(this.map);
    }

    public abstract Collection createCollection();

    public KeySet createKeySet() {
        return new KeySet(this.map);
    }

    @Override // com.google.common.collect.Multimap
    public Collection entries() {
        Maps.Values values = this.entries;
        if (values == null) {
            int i = 1;
            values = this instanceof AbstractSetMultimap ? new AbstractMultimap.EntrySet(this, i) : new Maps.Values(this, i);
            this.entries = values;
        }
        return values;
    }

    public final CollectSpliterators$FlatMapSpliteratorOfObject entrySpliterator() {
        return Maps.flatMap(Set.EL.spliterator(this.map.entrySet()), new Nodes$$ExternalSyntheticLambda0(1), this.totalSize);
    }

    @Override // com.google.common.collect.Multimap
    public Collection get(Object obj) {
        Collection collection = (Collection) this.map.get(obj);
        if (collection == null) {
            collection = createCollection();
        }
        return wrapCollection(obj, collection);
    }

    @Override // com.google.common.collect.Multimap
    public boolean put(Object obj, Object obj2) {
        Collection collection = (Collection) this.map.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.totalSize++;
            return true;
        }
        Collection createCollection = createCollection();
        if (!createCollection.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.totalSize++;
        this.map.put(obj, createCollection);
        return true;
    }

    public final void setMap(Map map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection collection : map.values()) {
            Okio.checkArgument(!collection.isEmpty());
            this.totalSize = collection.size() + this.totalSize;
        }
    }

    public final CollectSpliterators$FlatMapSpliteratorOfObject valueSpliterator() {
        return Maps.flatMap(Collection.EL.spliterator(this.map.values()), new Nodes$$ExternalSyntheticLambda0(2), this.totalSize);
    }

    public abstract java.util.Collection wrapCollection(Object obj, java.util.Collection collection);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NavigableAsMap extends SortedAsMap implements NavigableMap {
        public final /* synthetic */ Multimaps$CustomListMultimap this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigableAsMap(Multimaps$CustomListMultimap multimaps$CustomListMultimap, NavigableMap navigableMap) {
            super(multimaps$CustomListMultimap, navigableMap);
            this.this$0 = multimaps$CustomListMultimap;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            Map.Entry ceilingEntry = sortedMap().ceilingEntry(obj);
            if (ceilingEntry == null) {
                return null;
            }
            return wrapEntry(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            return sortedMap().ceilingKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        public final SortedSet createKeySet() {
            return new NavigableKeySet(this.this$0, sortedMap());
        }

        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            return new NavigableAsMap(this.this$0, sortedMap().descendingMap());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            Map.Entry firstEntry = sortedMap().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return wrapEntry(firstEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            Map.Entry floorEntry = sortedMap().floorEntry(obj);
            if (floorEntry == null) {
                return null;
            }
            return wrapEntry(floorEntry);
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            return sortedMap().floorKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return new NavigableAsMap(this.this$0, sortedMap().headMap(obj, z));
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            Map.Entry higherEntry = sortedMap().higherEntry(obj);
            if (higherEntry == null) {
                return null;
            }
            return wrapEntry(higherEntry);
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            return sortedMap().higherKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        public final java.util.Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            Map.Entry lastEntry = sortedMap().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return wrapEntry(lastEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            Map.Entry lowerEntry = sortedMap().lowerEntry(obj);
            if (lowerEntry == null) {
                return null;
            }
            return wrapEntry(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            return sortedMap().lowerKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        public final ImmutableEntry pollAsMapEntry(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            java.util.Collection createCollection = this.this$0.createCollection();
            createCollection.addAll((java.util.Collection) entry.getValue());
            it.remove();
            return new ImmutableEntry(entry.getKey(), DesugarCollections.unmodifiableList((List) createCollection));
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            return pollAsMapEntry(((AsMap.AsMapEntries) entrySet()).iterator());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            return pollAsMapEntry(((AsMap.AsMapEntries) ((AsMap) descendingMap()).entrySet()).iterator());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        public final NavigableMap sortedMap() {
            return (NavigableMap) ((SortedMap) this.submap);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return new NavigableAsMap(this.this$0, sortedMap().subMap(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return new NavigableAsMap(this.this$0, sortedMap().tailMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        public final SortedSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class AsMap extends AbstractMap {
        public transient AsMapEntries entrySet;
        public final transient Map submap;
        public transient Maps.Values values;

        public AsMap(Map map) {
            this.submap = map;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            if (this.submap == abstractMapBasedMultimap.map) {
                abstractMapBasedMultimap.clear();
                return;
            }
            KeySet.AnonymousClass1 anonymousClass1 = new KeySet.AnonymousClass1(this);
            while (anonymousClass1.hasNext()) {
                anonymousClass1.next();
                anonymousClass1.remove();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            Map map = this.submap;
            map.getClass();
            try {
                return map.containsKey(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final java.util.Set entrySet() {
            AsMapEntries asMapEntries = this.entrySet;
            if (asMapEntries != null) {
                return asMapEntries;
            }
            AsMapEntries asMapEntries2 = new AsMapEntries();
            this.entrySet = asMapEntries2;
            return asMapEntries2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean equals(Object obj) {
            return this == obj || this.submap.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Object obj2;
            Map map = this.submap;
            map.getClass();
            try {
                obj2 = map.get(obj);
            } catch (ClassCastException | NullPointerException unused) {
                obj2 = null;
            }
            java.util.Collection collection = (java.util.Collection) obj2;
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int hashCode() {
            return this.submap.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.util.Set keySet() {
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            java.util.Set set = abstractMapBasedMultimap.keySet;
            if (set != null) {
                return set;
            }
            KeySet createKeySet = abstractMapBasedMultimap.createKeySet();
            abstractMapBasedMultimap.keySet = createKeySet;
            return createKeySet;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            java.util.Collection collection = (java.util.Collection) this.submap.remove(obj);
            if (collection == null) {
                return null;
            }
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            java.util.Collection createCollection = abstractMapBasedMultimap.createCollection();
            createCollection.addAll(collection);
            abstractMapBasedMultimap.totalSize -= collection.size();
            collection.clear();
            return createCollection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.submap.size();
        }

        @Override // java.util.AbstractMap
        public final String toString() {
            return this.submap.toString();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final java.util.Collection values() {
            Maps.Values values = this.values;
            if (values != null) {
                return values;
            }
            Maps.Values values2 = new Maps.Values(this);
            this.values = values2;
            return values2;
        }

        public final ImmutableEntry wrapEntry(Map.Entry entry) {
            Object key = entry.getKey();
            return new ImmutableEntry(key, AbstractMapBasedMultimap.this.wrapCollection(key, (java.util.Collection) entry.getValue()));
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class AsMapEntries extends Maps.EntrySet implements Set {
            public AsMapEntries() {
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                java.util.Set entrySet = AsMap.this.submap.entrySet();
                entrySet.getClass();
                try {
                    return entrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }

            @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
            public /* synthetic */ void forEach(Consumer consumer) {
                Iterable.CC.$default$forEach(this, consumer);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new KeySet.AnonymousClass1(AsMap.this);
            }

            @Override // java.util.Collection
            public /* synthetic */ Stream parallelStream() {
                return Stream.Wrapper.convert(parallelStream());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                Object obj2;
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
                Object key = entry.getKey();
                Map map = abstractMapBasedMultimap.map;
                map.getClass();
                try {
                    obj2 = map.remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    obj2 = null;
                }
                java.util.Collection collection = (java.util.Collection) obj2;
                if (collection == null) {
                    return true;
                }
                int size = collection.size();
                collection.clear();
                abstractMapBasedMultimap.totalSize -= size;
                return true;
            }

            @Override // java.util.Collection, j$.util.Collection
            public /* synthetic */ boolean removeIf(Predicate predicate) {
                return Collection.CC.$default$removeIf(this, predicate);
            }

            @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Set, j$.util.Collection, j$.lang.Iterable
            public final Spliterator spliterator() {
                AsMap asMap = AsMap.this;
                return Maps.map(Set.EL.spliterator(asMap.submap.entrySet()), new Player$$ExternalSyntheticLambda41(asMap, 2));
            }

            @Override // java.util.Collection
            public /* synthetic */ java.util.stream.Stream stream() {
                return Stream.Wrapper.convert(stream());
            }

            @Override // java.util.Collection, j$.util.Collection
            public /* synthetic */ Object[] toArray(IntFunction intFunction) {
                Object[] array;
                array = toArray((Object[]) intFunction.apply(0));
                return array;
            }

            @Override // java.util.Collection, j$.util.Collection
            public /* synthetic */ j$.util.stream.Stream parallelStream() {
                return Collection.CC.$default$parallelStream(this);
            }

            @Override // java.util.Collection, j$.util.Collection
            public /* synthetic */ j$.util.stream.Stream stream() {
                return Collection.CC.$default$stream(this);
            }

            @Override // java.util.Collection, java.lang.Iterable, java.util.Set
            public /* synthetic */ java.util.Spliterator spliterator() {
                return Spliterator.Wrapper.convert(spliterator());
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class KeySet extends Sets$ImprovedAbstractSet implements Set {
        public final Map map;

        public KeySet(Map map) {
            map.getClass();
            this.map = map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Iterator it = iterator();
            while (true) {
                AnonymousClass1 anonymousClass1 = (AnonymousClass1) it;
                if (!anonymousClass1.hasNext()) {
                    return;
                }
                anonymousClass1.next();
                anonymousClass1.remove();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(java.util.Collection collection) {
            return this.map.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return this == obj || this.map.keySet().equals(obj);
        }

        @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public final void forEach(Consumer consumer) {
            consumer.getClass();
            Map.EL.forEach(this.map, new Maps$KeySet$$ExternalSyntheticLambda0(consumer, 0));
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.map.keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return this.map.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new AnonymousClass1(this, this.map.entrySet().iterator());
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream parallelStream() {
            return Stream.Wrapper.convert(parallelStream());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int i;
            java.util.Collection collection = (java.util.Collection) this.map.remove(obj);
            if (collection != null) {
                i = collection.size();
                collection.clear();
                AbstractMapBasedMultimap.this.totalSize -= i;
            } else {
                i = 0;
            }
            return i > 0;
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.map.size();
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Set, j$.util.Collection, j$.lang.Iterable
        public final Spliterator spliterator() {
            return Set.EL.spliterator(this.map.keySet());
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            return Stream.Wrapper.convert(stream());
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            Object[] array;
            array = toArray((Object[]) intFunction.apply(0));
            return array;
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public /* synthetic */ java.util.Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$KeySet$1, reason: invalid class name */
        public class AnonymousClass1 implements Iterator {
            public final /* synthetic */ int $r8$classId = 1;
            public Object entry;
            public final /* synthetic */ Object this$1;
            public final Iterator val$entryIterator;

            public AnonymousClass1(WrappedList wrappedList) {
                this.this$1 = wrappedList;
                java.util.Collection collection = wrappedList.delegate;
                this.entry = collection;
                this.val$entryIterator = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                switch (this.$r8$classId) {
                    case 0:
                        break;
                    case 1:
                        break;
                    default:
                        validateIterator();
                        break;
                }
                return this.val$entryIterator.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                int i = this.$r8$classId;
                Iterator it = this.val$entryIterator;
                switch (i) {
                    case 0:
                        Map.Entry entry = (Map.Entry) it.next();
                        this.entry = entry;
                        return entry.getKey();
                    case 1:
                        Map.Entry entry2 = (Map.Entry) it.next();
                        this.entry = (java.util.Collection) entry2.getValue();
                        return ((AsMap) this.this$1).wrapEntry(entry2);
                    default:
                        validateIterator();
                        return it.next();
                }
            }

            @Override // java.util.Iterator
            public final void remove() {
                int i = this.$r8$classId;
                Object obj = this.this$1;
                Iterator it = this.val$entryIterator;
                switch (i) {
                    case 0:
                        Okio.checkState("no calls to next() since the last call to remove()", ((Map.Entry) this.entry) != null);
                        java.util.Collection collection = (java.util.Collection) ((Map.Entry) this.entry).getValue();
                        it.remove();
                        AbstractMapBasedMultimap.this.totalSize -= collection.size();
                        collection.clear();
                        this.entry = null;
                        break;
                    case 1:
                        Okio.checkState("no calls to next() since the last call to remove()", ((java.util.Collection) this.entry) != null);
                        it.remove();
                        AbstractMapBasedMultimap.this.totalSize -= ((java.util.Collection) this.entry).size();
                        ((java.util.Collection) this.entry).clear();
                        this.entry = null;
                        break;
                    default:
                        it.remove();
                        WrappedList wrappedList = (WrappedList) obj;
                        wrappedList.this$0$1.totalSize--;
                        wrappedList.removeIfEmpty();
                        break;
                }
            }

            public void validateIterator() {
                WrappedList wrappedList = (WrappedList) this.this$1;
                wrappedList.refreshIfEmpty();
                if (wrappedList.delegate == ((java.util.Collection) this.entry)) {
                    return;
                }
                Arrangement$$ExternalSyntheticLambda0.m();
            }

            public AnonymousClass1(WrappedList wrappedList, ListIterator listIterator) {
                this.this$1 = wrappedList;
                this.entry = wrappedList.delegate;
                this.val$entryIterator = listIterator;
            }

            public AnonymousClass1(KeySet keySet, Iterator it) {
                this.this$1 = keySet;
                this.val$entryIterator = it;
            }

            public AnonymousClass1(AsMap asMap) {
                this.this$1 = asMap;
                this.val$entryIterator = asMap.submap.entrySet().iterator();
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class WrappedList extends AbstractCollection implements List, j$.util.List, j$.util.Collection {
        public final WrappedList ancestor;
        public final java.util.Collection ancestorDelegate;
        public java.util.Collection delegate;
        public final Object key;
        public final /* synthetic */ AbstractMapBasedMultimap this$0$1;

        public WrappedList(Object obj, List list, WrappedList wrappedList) {
            this.this$0$1 = AbstractMapBasedMultimap.this;
            this.key = obj;
            this.delegate = list;
            this.ancestor = wrappedList;
            this.ancestorDelegate = wrappedList == null ? null : wrappedList.delegate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            refreshIfEmpty();
            boolean isEmpty = this.delegate.isEmpty();
            boolean add = this.delegate.add(obj);
            if (add) {
                this.this$0$1.totalSize++;
                if (isEmpty) {
                    addToMap();
                }
            }
            return add;
        }

        @Override // java.util.List
        public final boolean addAll(int i, java.util.Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = ((List) this.delegate).addAll(i, collection);
            if (addAll) {
                AbstractMapBasedMultimap.this.totalSize += this.delegate.size() - size;
                if (size == 0) {
                    addToMap();
                }
            }
            return addAll;
        }

        public final void addToMap() {
            WrappedList wrappedList = this.ancestor;
            if (wrappedList != null) {
                wrappedList.addToMap();
            } else {
                this.this$0$1.map.put(this.key, this.delegate);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.delegate.clear();
            this.this$0$1.totalSize -= size;
            removeIfEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            refreshIfEmpty();
            return this.delegate.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean containsAll(java.util.Collection collection) {
            refreshIfEmpty();
            return this.delegate.containsAll(collection);
        }

        @Override // java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            refreshIfEmpty();
            return this.delegate.equals(obj);
        }

        @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public /* synthetic */ void forEach(Consumer consumer) {
            Iterable.CC.$default$forEach(this, consumer);
        }

        @Override // java.util.List
        public final Object get(int i) {
            refreshIfEmpty();
            return ((List) this.delegate).get(i);
        }

        @Override // java.util.Collection, java.util.List
        public final int hashCode() {
            refreshIfEmpty();
            return this.delegate.hashCode();
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            refreshIfEmpty();
            return ((List) this.delegate).indexOf(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            refreshIfEmpty();
            return new KeySet.AnonymousClass1(this);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            refreshIfEmpty();
            return ((List) this.delegate).lastIndexOf(obj);
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            refreshIfEmpty();
            return new WrappedListIterator();
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream parallelStream() {
            return Stream.Wrapper.convert(parallelStream());
        }

        public final void refreshIfEmpty() {
            java.util.Collection collection;
            WrappedList wrappedList = this.ancestor;
            if (wrappedList != null) {
                wrappedList.refreshIfEmpty();
                if (wrappedList.delegate == this.ancestorDelegate) {
                    return;
                }
                Arrangement$$ExternalSyntheticLambda0.m();
                return;
            }
            if (!this.delegate.isEmpty() || (collection = (java.util.Collection) this.this$0$1.map.get(this.key)) == null) {
                return;
            }
            this.delegate = collection;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean remove(Object obj) {
            refreshIfEmpty();
            boolean remove = this.delegate.remove(obj);
            if (remove) {
                AbstractMapBasedMultimap abstractMapBasedMultimap = this.this$0$1;
                abstractMapBasedMultimap.totalSize--;
                removeIfEmpty();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(java.util.Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.delegate.removeAll(collection);
            if (removeAll) {
                this.this$0$1.totalSize += this.delegate.size() - size;
                removeIfEmpty();
            }
            return removeAll;
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        public final void removeIfEmpty() {
            WrappedList wrappedList = this.ancestor;
            if (wrappedList != null) {
                wrappedList.removeIfEmpty();
            } else if (this.delegate.isEmpty()) {
                this.this$0$1.map.remove(this.key);
            }
        }

        @Override // java.util.List, j$.util.List
        public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
            List.CC.$default$replaceAll(this, unaryOperator);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean retainAll(java.util.Collection collection) {
            collection.getClass();
            int size = size();
            boolean retainAll = this.delegate.retainAll(collection);
            if (retainAll) {
                this.this$0$1.totalSize += this.delegate.size() - size;
                removeIfEmpty();
            }
            return retainAll;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            refreshIfEmpty();
            return ((java.util.List) this.delegate).set(i, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            refreshIfEmpty();
            return this.delegate.size();
        }

        @Override // java.util.List, j$.util.List
        public /* synthetic */ void sort(Comparator comparator) {
            List.CC.$default$sort(this, comparator);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
        public final Spliterator spliterator() {
            refreshIfEmpty();
            return Collection.EL.spliterator(this.delegate);
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            return Stream.Wrapper.convert(stream());
        }

        @Override // java.util.List
        public final java.util.List subList(int i, int i2) {
            refreshIfEmpty();
            java.util.List subList = ((java.util.List) this.delegate).subList(i, i2);
            WrappedList wrappedList = this.ancestor;
            if (wrappedList == null) {
                wrappedList = this;
            }
            boolean z = subList instanceof RandomAccess;
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object obj = this.key;
            return z ? abstractMapBasedMultimap.new RandomAccessWrappedList(obj, subList, wrappedList) : abstractMapBasedMultimap.new WrappedList(obj, subList, wrappedList);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            Object[] array;
            array = toArray((Object[]) intFunction.apply(0));
            return array;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            refreshIfEmpty();
            return this.delegate.toString();
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            refreshIfEmpty();
            return new WrappedListIterator(i);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream stream() {
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public /* synthetic */ java.util.Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class WrappedListIterator extends KeySet.AnonymousClass1 implements ListIterator {
            public WrappedListIterator(int i) {
                super(WrappedList.this, ((java.util.List) WrappedList.this.delegate).listIterator(i));
            }

            @Override // java.util.ListIterator
            public final void add(Object obj) {
                WrappedList wrappedList = WrappedList.this;
                boolean isEmpty = wrappedList.isEmpty();
                getDelegateListIterator().add(obj);
                AbstractMapBasedMultimap.this.totalSize++;
                if (isEmpty) {
                    wrappedList.addToMap();
                }
            }

            public final ListIterator getDelegateListIterator() {
                validateIterator();
                return (ListIterator) this.val$entryIterator;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return getDelegateListIterator().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return getDelegateListIterator().nextIndex();
            }

            @Override // java.util.ListIterator
            public final Object previous() {
                return getDelegateListIterator().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return getDelegateListIterator().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(Object obj) {
                getDelegateListIterator().set(obj);
            }

            public WrappedListIterator() {
                super(WrappedList.this);
            }
        }

        @Override // java.util.List
        public final Object remove(int i) {
            refreshIfEmpty();
            Object remove = ((java.util.List) this.delegate).remove(i);
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            abstractMapBasedMultimap.totalSize--;
            removeIfEmpty();
            return remove;
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            refreshIfEmpty();
            boolean isEmpty = this.delegate.isEmpty();
            ((java.util.List) this.delegate).add(i, obj);
            AbstractMapBasedMultimap.this.totalSize++;
            if (isEmpty) {
                addToMap();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean addAll(java.util.Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.delegate.addAll(collection);
            if (addAll) {
                this.this$0$1.totalSize += this.delegate.size() - size;
                if (size == 0) {
                    addToMap();
                }
            }
            return addAll;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NavigableKeySet extends SortedKeySet implements NavigableSet, j$.util.SortedSet {
        public final /* synthetic */ Multimaps$CustomListMultimap this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigableKeySet(Multimaps$CustomListMultimap multimaps$CustomListMultimap, NavigableMap navigableMap) {
            super(multimaps$CustomListMultimap, navigableMap);
            this.this$0 = multimaps$CustomListMultimap;
        }

        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return sortedMap().ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return ((KeySet) descendingSet()).iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return new NavigableKeySet(this.this$0, sortedMap().descendingMap());
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return sortedMap().floorKey(obj);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return new NavigableKeySet(this.this$0, sortedMap().headMap(obj, z));
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return sortedMap().higherKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return sortedMap().lowerKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            KeySet.AnonymousClass1 anonymousClass1 = (KeySet.AnonymousClass1) iterator();
            if (!anonymousClass1.hasNext()) {
                return null;
            }
            Object next = anonymousClass1.next();
            anonymousClass1.remove();
            return next;
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            Iterator descendingIterator = descendingIterator();
            if (!descendingIterator.hasNext()) {
                return null;
            }
            Object next = descendingIterator.next();
            descendingIterator.remove();
            return next;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet
        public final NavigableMap sortedMap() {
            return (NavigableMap) ((SortedMap) this.map);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return new NavigableKeySet(this.this$0, sortedMap().subMap(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return new NavigableKeySet(this.this$0, sortedMap().tailMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }
}
