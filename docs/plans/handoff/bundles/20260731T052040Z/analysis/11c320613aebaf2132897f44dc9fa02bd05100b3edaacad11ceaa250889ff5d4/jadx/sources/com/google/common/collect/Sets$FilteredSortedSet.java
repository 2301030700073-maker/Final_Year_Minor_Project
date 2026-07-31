package com.google.common.collect;

import com.google.common.base.Predicate;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Sets$FilteredSortedSet extends Sets$FilteredSet implements SortedSet, j$.util.SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.unfiltered).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.unfiltered.iterator();
        it.getClass();
        Predicate predicate = this.predicate;
        predicate.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
        return null;
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new Sets$FilteredSortedSet(((SortedSet) this.unfiltered).headSet(obj), this.predicate);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSet = (SortedSet) this.unfiltered;
        while (true) {
            Object last = sortedSet.last();
            if (this.predicate.apply(last)) {
                return last;
            }
            sortedSet = sortedSet.headSet(last);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new Sets$FilteredSortedSet(((SortedSet) this.unfiltered).subSet(obj, obj2), this.predicate);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new Sets$FilteredSortedSet(((SortedSet) this.unfiltered).tailSet(obj), this.predicate);
    }
}
