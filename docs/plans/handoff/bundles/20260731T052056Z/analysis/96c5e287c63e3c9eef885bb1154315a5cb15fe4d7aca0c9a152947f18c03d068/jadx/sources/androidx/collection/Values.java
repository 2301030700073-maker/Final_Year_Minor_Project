package androidx.collection;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SubSequence$iterator$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Values implements Collection, KMappedMarker, j$.util.Collection {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object parent;

    public Values() {
        int i = OrderedScatterSetKt.$r8$clinit;
        this.parent = new MutableOrderedScatterSet(6);
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                return ((MutableOrderedScatterSet) this.parent).add(obj);
        }
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final void clear() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                ((MutableOrderedScatterSet) this.parent).clear();
                return;
        }
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.parent;
        switch (i) {
            case 0:
                return ((MutableScatterMap) obj2).containsValue(obj);
            default:
                return ((MutableOrderedScatterSet) obj2).contains(obj);
        }
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        int i = this.$r8$classId;
        Object obj = this.parent;
        switch (i) {
            case 0:
                collection.getClass();
                Collection collection2 = collection;
                if (!collection2.isEmpty()) {
                    Iterator it = collection2.iterator();
                    while (it.hasNext()) {
                        if (!((MutableScatterMap) obj).containsValue(it.next())) {
                            break;
                        }
                    }
                    break;
                }
                break;
            default:
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    if (!((MutableOrderedScatterSet) obj).contains(it2.next())) {
                        break;
                    }
                }
                break;
        }
        return false;
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ void forEach(Consumer consumer) {
        int i = this.$r8$classId;
        Iterable.CC.$default$forEach(this, consumer);
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        int i = this.$r8$classId;
        Object obj = this.parent;
        switch (i) {
            case 0:
                return ((MutableScatterMap) obj).isEmpty();
            default:
                return ((MutableOrderedScatterSet) obj)._size == 0;
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.$r8$classId) {
            case 0:
                return UnsignedKt.iterator(new Keys$iterator$1(2, this, null));
            default:
                return new SubSequence$iterator$1(new MutableOrderedSetWrapper((MutableOrderedScatterSet) this.parent));
        }
    }

    @Override // java.util.Collection
    public /* synthetic */ Stream parallelStream() {
        int i = this.$r8$classId;
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                return ((MutableOrderedScatterSet) this.parent).remove(obj);
        }
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                return ((MutableOrderedScatterSet) this.parent).remove(collection);
        }
    }

    @Override // java.util.Collection, j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                return ((MutableOrderedScatterSet) this.parent).retainAll(collection);
        }
    }

    @Override // java.util.Collection
    public final int size() {
        int i = this.$r8$classId;
        Object obj = this.parent;
        switch (i) {
            case 0:
                return ((MutableScatterMap) obj)._size;
            default:
                return ((MutableOrderedScatterSet) obj)._size;
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        int i = this.$r8$classId;
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream stream() {
        int i = this.$r8$classId;
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.$r8$classId) {
            case 0:
                objArr.getClass();
                break;
        }
        return Intrinsics.Kotlin.toArray(this, objArr);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream parallelStream() {
        int i = this.$r8$classId;
        return Collection.CC.$default$parallelStream(this);
    }

    @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ j$.util.Spliterator spliterator() {
        int i = this.$r8$classId;
        return Collection.CC.$default$spliterator(this);
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream stream() {
        int i = this.$r8$classId;
        return Collection.CC.$default$stream(this);
    }

    public Values(MutableScatterMap mutableScatterMap) {
        this.parent = mutableScatterMap;
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        Object[] array;
        int i = this.$r8$classId;
        array = toArray((Object[]) intFunction.apply(0));
        return array;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        switch (this.$r8$classId) {
        }
        return Intrinsics.Kotlin.toArray(this);
    }
}
