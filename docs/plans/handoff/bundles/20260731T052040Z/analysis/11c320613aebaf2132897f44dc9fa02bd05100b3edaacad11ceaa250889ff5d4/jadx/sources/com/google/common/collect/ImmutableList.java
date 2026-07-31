package com.google.common.collect;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;
import kotlin.text.UStringsKt;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImmutableList extends ImmutableCollection implements List, RandomAccess, j$.util.List {
    public static final /* synthetic */ int $r8$clinit = 0;

    public static ImmutableList asImmutableList(int i, Object[] objArr) {
        if (i == 0) {
            return RegularImmutableList.EMPTY;
        }
        if (i != 1) {
            if (i < objArr.length) {
                objArr = Arrays.copyOf(objArr, i);
            }
            return new RegularImmutableList(objArr);
        }
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        return new SingletonImmutableList(obj);
    }

    public static ImmutableList copyOf(Collection collection) {
        if (!(collection instanceof ImmutableCollection)) {
            Object[] array = collection.toArray();
            Maps.checkElementsNotNull(array);
            return asImmutableList(array.length, array);
        }
        ImmutableList asList = ((ImmutableCollection) collection).asList();
        if (!asList.isPartialView()) {
            return asList;
        }
        Object[] array2 = asList.toArray(ImmutableCollection.EMPTY_ARRAY);
        return asImmutableList(array2.length, array2);
    }

    public static ImmutableList of(Long l, Long l2, Long l3, Long l4, Long l5) {
        Object[] objArr = {l, l2, l3, l4, l5};
        Maps.checkElementsNotNull(objArr);
        return asImmutableList(5, objArr);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(int i, Object[] objArr) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (!(list instanceof RandomAccess)) {
                        Iterator it = iterator();
                        Iterator it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && UStringsKt.equal(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                    for (int i = 0; i < size; i++) {
                        if (UStringsKt.equal(get(i), list.get(i))) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public void forEach(Consumer consumer) {
        consumer.getClass();
        int size = size();
        for (int i = 0; i < size; i++) {
            consumer.accept(get(i));
        }
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public AbstractIndexedListIterator listIterator(int i) {
        return new AbstractIndexedListIterator(size(), i) { // from class: com.google.common.collect.ImmutableList.1
            @Override // com.google.common.collect.AbstractIndexedListIterator
            public final Object get(int i2) {
                return ImmutableList.this.get(i2);
            }
        };
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final void sort(Comparator comparator) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public Spliterator spliterator() {
        int size = size();
        return new CollectSpliterators$1WithCharacteristics(IntStream.CC.range(0, size).spliterator(), new ImmutableList$$ExternalSyntheticLambda0(this, 0), 1296);
    }

    @Override // java.util.List
    public ImmutableList subList(int i, int i2) {
        Okio.checkPositionIndexes(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? RegularImmutableList.EMPTY : i3 == 1 ? new SingletonImmutableList(get(i)) : new SubList(i, i3);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SubList extends ImmutableList {
        public final transient int length;
        public final transient int offset;

        public SubList(int i, int i2) {
            this.offset = i;
            this.length = i2;
        }

        @Override // java.util.List
        public final Object get(int i) {
            Okio.checkElementIndex(i, this.length);
            return ImmutableList.this.get(i + this.offset);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.length;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final ImmutableList subList(int i, int i2) {
            Okio.checkPositionIndexes(i, i2, this.length);
            ImmutableList immutableList = ImmutableList.this;
            int i3 = this.offset;
            return immutableList.subList(i + i3, i2 + i3);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder extends Maps {
        public boolean forceCopy;
        public Object[] contents = new Object[4];
        public int size = 0;

        /* renamed from: add, reason: collision with other method in class */
        public final void m642add(Object obj) {
            obj.getClass();
            getReadyToExpandTo(this.size + 1);
            Object[] objArr = this.contents;
            int i = this.size;
            this.size = i + 1;
            objArr[i] = obj;
        }

        public final void addAll$1(Iterable iterable) {
            iterable.getClass();
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                getReadyToExpandTo(collection.size() + this.size);
                if (collection instanceof ImmutableCollection) {
                    this.size = ((ImmutableCollection) collection).copyIntoArray(this.size, this.contents);
                    return;
                }
            }
            addAll(iterable);
        }

        public final ImmutableList build() {
            this.forceCopy = true;
            return ImmutableList.asImmutableList(this.size, this.contents);
        }

        public final void getReadyToExpandTo(int i) {
            Object[] objArr = this.contents;
            if (objArr.length < i) {
                this.contents = Arrays.copyOf(objArr, Maps.expandedCapacity(objArr.length, i));
                this.forceCopy = false;
            } else if (this.forceCopy) {
                this.contents = Arrays.copyOf(objArr, objArr.length);
                this.forceCopy = false;
            }
        }

        @Override // com.google.common.collect.Maps
        public final /* bridge */ /* synthetic */ Maps add(Object obj) {
            m642add(obj);
            return this;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList asList() {
        return this;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public static ImmutableList copyOf(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return RegularImmutableList.EMPTY;
        }
        if (length != 1) {
            Object[] objArr2 = (Object[]) objArr.clone();
            Maps.checkElementsNotNull(objArr2);
            return asImmutableList(objArr2.length, objArr2);
        }
        return new SingletonImmutableList(objArr[0]);
    }
}
