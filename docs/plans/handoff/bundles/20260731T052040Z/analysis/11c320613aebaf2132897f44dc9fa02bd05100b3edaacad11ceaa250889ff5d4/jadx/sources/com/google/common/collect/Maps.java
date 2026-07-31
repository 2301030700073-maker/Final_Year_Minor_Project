package com.google.common.collect;

import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.util.Log;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates$AndPredicate;
import com.google.common.collect.AbstractMapBasedMultimap;
import com.google.common.primitives.Ints;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Map;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import kotlin.text.UStringsKt;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Maps {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.common.collect.Maps$1, reason: invalid class name */
    public final class AnonymousClass1 implements Iterator {
        public final /* synthetic */ int $r8$classId;
        public final Iterator backingIterator;

        public AnonymousClass1(Iterator it, int i) {
            this.$r8$classId = i;
            it.getClass();
            this.backingIterator = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.backingIterator.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Object next = this.backingIterator.next();
            switch (this.$r8$classId) {
                case 0:
                    return ((Map.Entry) next).getKey();
                default:
                    return ((Map.Entry) next).getValue();
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.backingIterator.remove();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.common.collect.Maps$8, reason: invalid class name */
    public final class AnonymousClass8 extends UnmodifiableIterator {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Iterator val$entryIterator;

        public /* synthetic */ AnonymousClass8(Iterator it, int i) {
            this.$r8$classId = i;
            this.val$entryIterator = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            switch (this.$r8$classId) {
            }
            return this.val$entryIterator.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i = this.$r8$classId;
            Iterator it = this.val$entryIterator;
            switch (i) {
                case 0:
                    final Map.Entry entry = (Map.Entry) it.next();
                    entry.getClass();
                    return new AbstractMapEntry() { // from class: com.google.common.collect.Maps.7
                        @Override // java.util.Map.Entry
                        public final Object getKey() {
                            return entry.getKey();
                        }

                        @Override // java.util.Map.Entry
                        public final Object getValue() {
                            return entry.getValue();
                        }
                    };
                default:
                    return it.next();
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class EntrySet extends Sets$ImprovedAbstractSet {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            AbstractMapBasedMultimap.AsMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public abstract boolean contains(Object obj);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return AbstractMapBasedMultimap.AsMap.this.isEmpty();
        }

        @Override // com.google.common.collect.Sets$ImprovedAbstractSet, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            try {
                collection.getClass();
                return Maps.removeAllImpl(this, collection);
            } catch (UnsupportedOperationException unused) {
                Iterator it = collection.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    z |= ((AbstractMapBasedMultimap.AsMap.AsMapEntries) this).remove(it.next());
                }
                return z;
            }
        }

        @Override // com.google.common.collect.Sets$ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            try {
                collection.getClass();
                return super.retainAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet(Maps.capacity(collection.size()));
                for (Object obj : collection) {
                    if (this.contains(obj) && (obj instanceof Map.Entry)) {
                        hashSet.add(((Map.Entry) obj).getKey());
                    }
                }
                return AbstractMapBasedMultimap.AsMap.this.keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return AbstractMapBasedMultimap.AsMap.this.submap.size();
        }
    }

    public static int capacity(int i) {
        if (i >= 3) {
            return i < 1073741824 ? (int) Math.ceil(i / 0.75d) : Log.LOG_LEVEL_OFF;
        }
        checkNonnegative(i, "expectedSize");
        return i + 1;
    }

    public static void checkElementsNotNull(Object... objArr) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (objArr[i] == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(i, "at index "));
                return;
            }
        }
    }

    public static void checkEntryNotNull(Object obj, Object obj2) {
        if (obj == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(Modifier.CC.m(obj2, "null key in entry: null="));
        } else {
            if (obj2 != null) {
                return;
            }
            throw new NullPointerException("null value in entry: " + obj + "=null");
        }
    }

    public static void checkNonnegative(int i, String str) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    public static boolean contains(Iterator it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean equalsImpl(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static int expandedCapacity(int i, int i2) {
        if (i2 < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int i3 = i + (i >> 1) + 1;
        if (i3 < i2) {
            i3 = Integer.highestOneBit(i2 - 1) << 1;
        }
        return i3 < 0 ? Log.LOG_LEVEL_OFF : i3;
    }

    public static Sets$FilteredSet filter(Set set, Predicate predicate) {
        if (set instanceof SortedSet) {
            Collection collection = (SortedSet) set;
            if (!(collection instanceof Sets$FilteredSet)) {
                return new Sets$FilteredSortedSet(collection, predicate);
            }
            Sets$FilteredSet sets$FilteredSet = (Sets$FilteredSet) collection;
            Predicate predicate2 = sets$FilteredSet.predicate;
            predicate2.getClass();
            return new Sets$FilteredSortedSet((SortedSet) sets$FilteredSet.unfiltered, new Predicates$AndPredicate(Arrays.asList(predicate2, predicate)));
        }
        if (!(set instanceof Sets$FilteredSet)) {
            set.getClass();
            return new Sets$FilteredSet(set, predicate);
        }
        Sets$FilteredSet sets$FilteredSet2 = (Sets$FilteredSet) set;
        Predicate predicate3 = sets$FilteredSet2.predicate;
        predicate3.getClass();
        return new Sets$FilteredSet((Set) sets$FilteredSet2.unfiltered, new Predicates$AndPredicate(Arrays.asList(predicate3, predicate)));
    }

    public static CollectSpliterators$FlatMapSpliteratorOfObject flatMap(Spliterator spliterator, Function function, long j) {
        spliterator.getClass();
        return new CollectSpliterators$FlatMapSpliteratorOfObject(null, spliterator, function, 64, j);
    }

    public static Iterators$ArrayItr forArray(Object[] objArr, int i, int i2) {
        Okio.checkArgument(i >= 0);
        Okio.checkPositionIndexes(0, i, objArr.length);
        Okio.checkPositionIndex(i2, i);
        return i == 0 ? Iterators$ArrayItr.EMPTY : new Iterators$ArrayItr(objArr, i, i2);
    }

    public static int hashCodeImpl(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static Sets$2 intersection(ImmutableSet immutableSet, ImmutableSet immutableSet2) {
        Okio.checkNotNull(immutableSet, "set1");
        Okio.checkNotNull(immutableSet2, "set2");
        return new Sets$2(immutableSet, immutableSet2);
    }

    public static CollectSpliterators$1 map(Spliterator spliterator, Function function) {
        spliterator.getClass();
        return new CollectSpliterators$1(spliterator, function);
    }

    public static ArrayList newArrayList(Object... objArr) {
        int length = objArr.length;
        checkNonnegative(length, "arraySize");
        ArrayList arrayList = new ArrayList(Ints.saturatedCast(length + 5 + (length / 10)));
        Collections.addAll(arrayList, objArr);
        return arrayList;
    }

    public static HashMap newHashMapWithExpectedSize(int i) {
        return new HashMap(capacity(i));
    }

    public static boolean removeAllImpl(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        boolean z = false;
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                z |= set.remove(it.next());
            }
            return z;
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    public static int smear(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static String toStringImpl(Map map) {
        int size = map.size();
        checkNonnegative(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public abstract Maps add(Object obj);

    public void addAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class Values extends AbstractCollection implements j$.util.Collection {
        public final /* synthetic */ int $r8$classId;
        public final Object map;

        public Values(AbstractMapBasedMultimap.AsMap asMap) {
            this.$r8$classId = 0;
            this.map = asMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            int i = this.$r8$classId;
            Object obj = this.map;
            switch (i) {
                case 0:
                    ((AbstractMapBasedMultimap.AsMap) obj).clear();
                    break;
                case 1:
                    ((AbstractMapBasedMultimap) obj).clear();
                    break;
                default:
                    ((AbstractMapBasedMultimap) obj).clear();
                    break;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.map;
            switch (i) {
                case 0:
                    break;
                case 1:
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        Collection collection = (Collection) ((AbstractMapBasedMultimap) obj2).asMap().get(key);
                        if (collection != null && collection.contains(value)) {
                            break;
                        }
                    }
                    break;
                default:
                    Iterator it = ((AbstractMapBasedMultimap) obj2).asMap().values().iterator();
                    while (it.hasNext()) {
                        if (((Collection) it.next()).contains(obj)) {
                            break;
                        }
                    }
                    break;
            }
            return true;
        }

        @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public void forEach(Consumer consumer) {
            switch (this.$r8$classId) {
                case 0:
                    consumer.getClass();
                    Map.EL.forEach((AbstractMapBasedMultimap.AsMap) this.map, new Maps$KeySet$$ExternalSyntheticLambda0(consumer, 3));
                    break;
                case 1:
                    Iterable.CC.$default$forEach(this, consumer);
                    break;
                default:
                    Iterable.CC.$default$forEach(this, consumer);
                    break;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            switch (this.$r8$classId) {
                case 0:
                    return ((AbstractMapBasedMultimap.AsMap) this.map).isEmpty();
                default:
                    return super.isEmpty();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            int i = this.$r8$classId;
            Object obj = this.map;
            switch (i) {
                case 0:
                    return new AnonymousClass1(((AbstractMapBasedMultimap.AsMap) obj).entrySet().iterator(), 1);
                case 1:
                    return new AbstractMapBasedMultimap.AnonymousClass1((AbstractMapBasedMultimap) obj, 1);
                default:
                    return new AbstractMapBasedMultimap.AnonymousClass1((AbstractMapBasedMultimap) obj, 0);
            }
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            int i = this.$r8$classId;
            return Stream.Wrapper.convert(parallelStream());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.map;
            switch (i) {
                case 0:
                    AbstractMapBasedMultimap.AsMap asMap = (AbstractMapBasedMultimap.AsMap) obj2;
                    try {
                        return super.remove(obj);
                    } catch (UnsupportedOperationException unused) {
                        for (Map.Entry entry : asMap.entrySet()) {
                            if (UStringsKt.equal(obj, entry.getValue())) {
                                asMap.remove(entry.getKey());
                                return true;
                            }
                        }
                        return false;
                    }
                case 1:
                    if (!(obj instanceof Map.Entry)) {
                        return false;
                    }
                    Map.Entry entry2 = (Map.Entry) obj;
                    return ((AbstractMapBasedMultimap) obj2).remove(entry2.getKey(), entry2.getValue());
                default:
                    return super.remove(obj);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            switch (this.$r8$classId) {
                case 0:
                    AbstractMapBasedMultimap.AsMap asMap = (AbstractMapBasedMultimap.AsMap) this.map;
                    try {
                        collection.getClass();
                        return super.removeAll(collection);
                    } catch (UnsupportedOperationException unused) {
                        HashSet hashSet = new HashSet();
                        for (Map.Entry entry : asMap.entrySet()) {
                            if (collection.contains(entry.getValue())) {
                                hashSet.add(entry.getKey());
                            }
                        }
                        return asMap.keySet().removeAll(hashSet);
                    }
                default:
                    return super.removeAll(collection);
            }
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ boolean removeIf(java.util.function.Predicate predicate) {
            int i = this.$r8$classId;
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(java.util.Collection collection) {
            switch (this.$r8$classId) {
                case 0:
                    AbstractMapBasedMultimap.AsMap asMap = (AbstractMapBasedMultimap.AsMap) this.map;
                    try {
                        collection.getClass();
                        return super.retainAll(collection);
                    } catch (UnsupportedOperationException unused) {
                        HashSet hashSet = new HashSet();
                        for (Map.Entry entry : asMap.entrySet()) {
                            if (collection.contains(entry.getValue())) {
                                hashSet.add(entry.getKey());
                            }
                        }
                        return asMap.keySet().retainAll(hashSet);
                    }
                default:
                    return super.retainAll(collection);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            int i = this.$r8$classId;
            Object obj = this.map;
            switch (i) {
            }
            return ((AbstractMapBasedMultimap) obj).totalSize;
        }

        @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public Spliterator spliterator() {
            int i = this.$r8$classId;
            Object obj = this.map;
            switch (i) {
                case 0:
                    return Collection.CC.$default$spliterator(this);
                case 1:
                    return ((AbstractMapBasedMultimap) obj).entrySpliterator();
                default:
                    return ((AbstractMapBasedMultimap) obj).valueSpliterator();
            }
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            int i = this.$r8$classId;
            return Stream.Wrapper.convert(stream());
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            Object[] array;
            int i = this.$r8$classId;
            array = toArray((Object[]) intFunction.apply(0));
            return array;
        }

        public /* synthetic */ Values(AbstractMapBasedMultimap abstractMapBasedMultimap, int i) {
            this.$r8$classId = i;
            this.map = abstractMapBasedMultimap;
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream parallelStream() {
            int i = this.$r8$classId;
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream stream() {
            int i = this.$r8$classId;
            return Collection.CC.$default$stream(this);
        }

        @Override // java.util.Collection, java.lang.Iterable
        public /* synthetic */ java.util.Spliterator spliterator() {
            int i = this.$r8$classId;
            return Spliterator.Wrapper.convert(spliterator());
        }
    }

    public static ArrayList newArrayList(Iterator it) {
        ArrayList arrayList = new ArrayList();
        it.getClass();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
