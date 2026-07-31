package com.google.common.collect;

import java.util.ListIterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RegularImmutableAsList extends ImmutableAsList {
    private final ImmutableCollection delegate;
    private final ImmutableList delegateList;

    public RegularImmutableAsList(ImmutableCollection immutableCollection, Object[] objArr) {
        this(immutableCollection, ImmutableList.asImmutableList(objArr.length, objArr));
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int copyIntoArray(int i, Object[] objArr) {
        return this.delegateList.copyIntoArray(i, objArr);
    }

    @Override // com.google.common.collect.ImmutableAsList
    public final ImmutableCollection delegateCollection() {
        return this.delegate;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        this.delegateList.forEach(consumer);
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.delegateList.get(i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] internalArray() {
        return this.delegateList.internalArray();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int internalArrayEnd() {
        return this.delegateList.internalArrayEnd();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int internalArrayStart() {
        return this.delegateList.internalArrayStart();
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public final AbstractIndexedListIterator listIterator(int i) {
        return this.delegateList.listIterator(i);
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public final ListIterator listIterator(int i) {
        return this.delegateList.listIterator(i);
    }

    public RegularImmutableAsList(ImmutableCollection immutableCollection, ImmutableList immutableList) {
        this.delegate = immutableCollection;
        this.delegateList = immutableList;
    }
}
