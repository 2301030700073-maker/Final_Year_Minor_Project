package com.google.common.collect;

import j$.util.Set;
import j$.util.Spliterator;
import java.util.Collections;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingletonImmutableList extends ImmutableList {
    public final transient Object element;

    public SingletonImmutableList(Object obj) {
        obj.getClass();
        this.element = obj;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Okio.checkElementIndex(i, 1);
        return this.element;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final UnmodifiableIterator iterator() {
        return new Iterators$9(this.element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final Spliterator spliterator() {
        return Set.EL.spliterator(Collections.singleton(this.element));
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public final ImmutableList subList(int i, int i2) {
        Okio.checkPositionIndexes(i, i2, 1);
        return i == i2 ? RegularImmutableList.EMPTY : this;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.element.toString() + ']';
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }
}
