package com.google.common.collect;

import com.google.common.base.Predicate;
import com.google.common.collect.Sets$2;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import okio.Okio;
import org.jsoup.select.Evaluator$$ExternalSyntheticLambda0;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Collections2$FilteredCollection extends AbstractCollection implements Collection {
    public final Predicate predicate;
    public final java.util.Collection unfiltered;

    public Collections2$FilteredCollection(java.util.Collection collection, Predicate predicate) {
        this.unfiltered = collection;
        this.predicate = predicate;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        Okio.checkArgument(this.predicate.apply(obj));
        return this.unfiltered.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Okio.checkArgument(this.predicate.apply(it.next()));
        }
        return this.unfiltered.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        Iterables.removeIf(this.unfiltered, this.predicate);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        boolean z;
        java.util.Collection collection = this.unfiltered;
        collection.getClass();
        try {
            z = collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            z = false;
        }
        if (z) {
            return this.predicate.apply(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        Iterable.EL.forEach(this.unfiltered, new PrettyTime$$ExternalSyntheticLambda0(this, consumer, 2));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        Iterator it = this.unfiltered.iterator();
        Predicate predicate = this.predicate;
        Okio.checkNotNull(predicate, "predicate");
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (predicate.apply(it.next())) {
                break;
            }
            i++;
        }
        return true ^ (i != -1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.unfiltered.iterator();
        it.getClass();
        Predicate predicate = this.predicate;
        predicate.getClass();
        return new Sets$2.AnonymousClass1(it, predicate);
    }

    @Override // java.util.Collection
    public /* synthetic */ Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        return contains(obj) && this.unfiltered.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        Objects.requireNonNull(collection);
        return removeIf(new Collections2$FilteredCollection$$ExternalSyntheticLambda0(0, collection));
    }

    @Override // java.util.Collection, j$.util.Collection
    public final boolean removeIf(java.util.function.Predicate predicate) {
        predicate.getClass();
        return Collection.EL.removeIf(this.unfiltered, new Evaluator$$ExternalSyntheticLambda0(this, predicate, 2));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(java.util.Collection collection) {
        return removeIf(new Collections2$FilteredCollection$$ExternalSyntheticLambda0(1, collection));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator it = this.unfiltered.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.predicate.apply(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public final Spliterator spliterator() {
        Spliterator spliterator = Collection.EL.spliterator(this.unfiltered);
        spliterator.getClass();
        Predicate predicate = this.predicate;
        predicate.getClass();
        return new CollectSpliterators$1Splitr(spliterator, predicate);
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return Maps.newArrayList(iterator()).toArray();
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream parallelStream() {
        return Collection.CC.$default$parallelStream(this);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream stream() {
        return Collection.CC.$default$stream(this);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        Object[] array;
        array = toArray((Object[]) intFunction.apply(0));
        return array;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return Maps.newArrayList(iterator()).toArray(objArr);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }
}
