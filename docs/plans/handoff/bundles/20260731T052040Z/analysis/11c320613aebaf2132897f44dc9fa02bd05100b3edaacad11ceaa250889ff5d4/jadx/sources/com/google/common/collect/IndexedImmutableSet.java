package com.google.common.collect;

import com.google.common.collect.ImmutableSet;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class IndexedImmutableSet extends ImmutableSet.CachingAsList {
    @Override // com.google.common.collect.ImmutableCollection
    public final int copyIntoArray(int i, Object[] objArr) {
        return asList().copyIntoArray(i, objArr);
    }

    @Override // com.google.common.collect.ImmutableSet.CachingAsList
    public final ImmutableList createAsList() {
        return new ImmutableAsList() { // from class: com.google.common.collect.IndexedImmutableSet.1
            @Override // com.google.common.collect.ImmutableAsList
            public final ImmutableCollection delegateCollection() {
                return IndexedImmutableSet.this;
            }

            @Override // java.util.List
            public final Object get(int i) {
                return IndexedImmutableSet.this.get(i);
            }

            @Override // com.google.common.collect.ImmutableAsList, com.google.common.collect.ImmutableCollection
            public final boolean isPartialView() {
                return IndexedImmutableSet.this.isPartialView();
            }

            @Override // com.google.common.collect.ImmutableAsList, java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return IndexedImmutableSet.this.size();
            }
        };
    }

    @Override // com.google.common.collect.ImmutableCollection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public void forEach(Consumer consumer) {
        consumer.getClass();
        int size = size();
        for (int i = 0; i < size; i++) {
            consumer.accept(get(i));
        }
    }

    public abstract Object get(int i);

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator iterator() {
        return asList().iterator();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public Spliterator spliterator() {
        int size = size();
        return new CollectSpliterators$1WithCharacteristics(IntStream.CC.range(0, size).spliterator(), new ImmutableList$$ExternalSyntheticLambda0(this, 1), 1297);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }
}
