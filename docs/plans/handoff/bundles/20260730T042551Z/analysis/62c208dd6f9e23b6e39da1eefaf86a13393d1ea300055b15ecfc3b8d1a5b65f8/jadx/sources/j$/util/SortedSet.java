package j$.util;

import java.util.Comparator;

/* loaded from: classes2.dex */
public interface SortedSet<E> extends Set<E> {
    Comparator<? super E> comparator();

    E first();

    java.util.SortedSet<E> headSet(E e);

    E last();

    @Override // j$.util.Set, j$.util.Collection, java.lang.Iterable
    Spliterator<E> spliterator();

    java.util.SortedSet<E> subSet(E e, E e2);

    java.util.SortedSet<E> tailSet(E e);
}
