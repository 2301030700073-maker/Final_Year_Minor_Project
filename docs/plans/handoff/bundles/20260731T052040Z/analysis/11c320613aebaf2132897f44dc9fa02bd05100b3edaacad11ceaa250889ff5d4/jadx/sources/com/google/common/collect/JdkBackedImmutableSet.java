package com.google.common.collect;

import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JdkBackedImmutableSet extends IndexedImmutableSet {
    private final Set<?> delegate;
    private final ImmutableList delegateList;

    public JdkBackedImmutableSet(HashSet hashSet, ImmutableList immutableList) {
        this.delegate = hashSet;
        this.delegateList = immutableList;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.delegate.contains(obj);
    }

    @Override // com.google.common.collect.IndexedImmutableSet
    public final Object get(int i) {
        return this.delegateList.get(i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.delegateList.size();
    }
}
