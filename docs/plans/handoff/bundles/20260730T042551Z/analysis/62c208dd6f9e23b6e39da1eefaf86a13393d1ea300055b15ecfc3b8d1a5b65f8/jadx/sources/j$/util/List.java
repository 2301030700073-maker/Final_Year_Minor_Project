package j$.util;

import java.util.Arrays;
import java.util.Comparator;
import java.util.ListIterator;
import java.util.function.UnaryOperator;

/* loaded from: classes2.dex */
public interface List<E> extends Collection<E> {

    /* renamed from: j$.util.List$-CC, reason: invalid class name */
    public final /* synthetic */ class CC<E> {
        /* JADX WARN: Multi-variable type inference failed */
        public static void $default$replaceAll(java.util.List list, UnaryOperator unaryOperator) {
            Objects.requireNonNull(unaryOperator);
            ListIterator listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                listIterator.set(unaryOperator.apply(listIterator.next()));
            }
        }

        public static void $default$sort(java.util.List list, Comparator comparator) {
            Object[] array = list.toArray();
            Arrays.sort(array, comparator);
            ListIterator<E> listIterator = list.listIterator();
            for (Object obj : array) {
                listIterator.next();
                listIterator.set(obj);
            }
        }
    }

    void add(int i, E e);

    @Override // j$.util.Collection, java.util.Collection
    boolean add(E e);

    boolean addAll(int i, java.util.Collection<? extends E> collection);

    @Override // j$.util.Collection, java.util.Collection
    boolean addAll(java.util.Collection<? extends E> collection);

    @Override // j$.util.Collection, java.util.Collection
    void clear();

    @Override // j$.util.Collection, java.util.List, j$.util.List
    boolean contains(Object obj);

    @Override // j$.util.Collection, java.util.Collection, java.util.Set, j$.util.Set
    boolean containsAll(java.util.Collection<?> collection);

    @Override // java.util.List, j$.util.List
    boolean equals(Object obj);

    E get(int i);

    @Override // java.util.List, j$.util.List
    int hashCode();

    int indexOf(Object obj);

    @Override // j$.util.Collection
    boolean isEmpty();

    @Override // java.lang.Iterable, j$.util.Collection, java.util.List, j$.util.List
    java.util.Iterator<E> iterator();

    int lastIndexOf(Object obj);

    ListIterator<E> listIterator();

    ListIterator<E> listIterator(int i);

    E remove(int i);

    @Override // j$.util.Collection, java.util.Collection
    boolean remove(Object obj);

    @Override // j$.util.Collection, java.util.Collection
    boolean removeAll(java.util.Collection<?> collection);

    void replaceAll(UnaryOperator<E> unaryOperator);

    @Override // j$.util.Collection, java.util.Collection
    boolean retainAll(java.util.Collection<?> collection);

    E set(int i, E e);

    @Override // j$.util.Collection, java.util.List, j$.util.List
    int size();

    void sort(Comparator<? super E> comparator);

    @Override // j$.util.Collection, java.lang.Iterable
    Spliterator<E> spliterator();

    java.util.List<E> subList(int i, int i2);

    @Override // j$.util.Collection, java.util.Collection
    Object[] toArray();

    @Override // j$.util.Collection, java.util.Collection
    <T> T[] toArray(T[] tArr);
}
