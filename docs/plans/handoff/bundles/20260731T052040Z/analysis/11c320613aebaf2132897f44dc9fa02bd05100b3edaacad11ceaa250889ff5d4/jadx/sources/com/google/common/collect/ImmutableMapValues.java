package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import j$.util.Map;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImmutableMapValues extends ImmutableCollection {
    private final ImmutableMap map;

    public ImmutableMapValues(ImmutableMap immutableMap) {
        this.map = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList asList() {
        final ImmutableList asList = this.map.entrySet().asList();
        return new ImmutableAsList() { // from class: com.google.common.collect.ImmutableMapValues.2
            @Override // com.google.common.collect.ImmutableAsList
            public final ImmutableCollection delegateCollection() {
                return ImmutableMapValues.this;
            }

            @Override // java.util.List
            public final Object get(int i) {
                return ((Map.Entry) asList.get(i)).getValue();
            }
        };
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return obj != null && Maps.contains(new ImmutableMap.AnonymousClass1(this), obj);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        Map.EL.forEach(this.map, new Maps$KeySet$$ExternalSyntheticLambda0(consumer, 2));
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final UnmodifiableIterator iterator() {
        return new ImmutableMap.AnonymousClass1(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.map.size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final Spliterator spliterator() {
        return Maps.map(this.map.entrySet().spliterator(), new Nodes$$ExternalSyntheticLambda0(4));
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new ImmutableMap.AnonymousClass1(this);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }
}
