package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ReversedList extends AbstractMutableList {
    public final List delegate;

    public ReversedList(List list) {
        list.getClass();
        this.delegate = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        this.delegate.add(CollectionsKt.access$reversePositionIndex(i, this), obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.delegate.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.delegate.get(CollectionsKt.access$reverseElementIndex(i, this));
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int getSize() {
        return this.delegate.size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new ReversedList$listIterator$1(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new ReversedList$listIterator$1(this, 0);
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object removeAt(int i) {
        return this.delegate.remove(CollectionsKt.access$reverseElementIndex(i, this));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        return this.delegate.set(CollectionsKt.access$reverseElementIndex(i, this), obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new ReversedList$listIterator$1(this, i);
    }
}
