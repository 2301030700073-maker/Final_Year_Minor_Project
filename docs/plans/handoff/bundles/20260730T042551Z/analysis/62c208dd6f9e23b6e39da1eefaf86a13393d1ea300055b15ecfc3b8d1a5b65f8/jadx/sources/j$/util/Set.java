package j$.util;

/* loaded from: classes2.dex */
public interface Set<E> extends Collection<E> {
    @Override // j$.util.Collection, java.util.Collection
    boolean add(E e);

    @Override // j$.util.Collection, java.util.Collection
    boolean addAll(java.util.Collection<? extends E> collection);

    @Override // j$.util.Collection, java.util.Collection
    void clear();

    @Override // j$.util.Collection, java.util.Collection, java.util.List, j$.util.List
    boolean contains(Object obj);

    boolean containsAll(java.util.Collection<?> collection);

    @Override // j$.util.Collection, java.util.List, j$.util.List
    boolean equals(Object obj);

    @Override // j$.util.Collection, java.util.List, j$.util.List
    int hashCode();

    @Override // j$.util.Collection
    boolean isEmpty();

    @Override // j$.util.Collection, java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List
    java.util.Iterator<E> iterator();

    @Override // j$.util.Collection, java.util.Collection
    boolean remove(Object obj);

    @Override // j$.util.Collection, java.util.Collection
    boolean removeAll(java.util.Collection<?> collection);

    @Override // j$.util.Collection, java.util.Collection
    boolean retainAll(java.util.Collection<?> collection);

    @Override // j$.util.Collection, java.util.Collection, java.util.List, j$.util.List
    int size();

    @Override // j$.util.Collection, java.lang.Iterable
    Spliterator<E> spliterator();

    @Override // j$.util.Collection, java.util.Collection
    Object[] toArray();

    @Override // j$.util.Collection, java.util.Collection
    <T> T[] toArray(T[] tArr);
}
