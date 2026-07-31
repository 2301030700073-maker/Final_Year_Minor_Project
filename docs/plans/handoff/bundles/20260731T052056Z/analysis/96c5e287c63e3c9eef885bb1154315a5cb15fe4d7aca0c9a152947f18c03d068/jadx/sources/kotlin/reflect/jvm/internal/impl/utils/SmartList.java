package kotlin.reflect.jvm.internal.impl.utils;

import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SmartList extends AbstractList implements RandomAccess, List {
    public Object myElem;
    public int mySize;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EmptyIterator implements Iterator {
        public static final EmptyIterator INSTANCE = new EmptyIterator();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new IllegalStateException();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SingletonIterator implements Iterator {
        public final int myInitialModCount;
        public boolean myVisited;

        public SingletonIterator() {
            this.myInitialModCount = ((AbstractList) SmartList.this).modCount;
        }

        public final void checkCoModification() {
            SmartList smartList = SmartList.this;
            int i = ((AbstractList) smartList).modCount;
            int i2 = this.myInitialModCount;
            if (i == i2) {
                return;
            }
            throw new ConcurrentModificationException("ModCount: " + ((AbstractList) smartList).modCount + "; expected: " + i2);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.myVisited;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.myVisited) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            this.myVisited = true;
            checkCoModification();
            return SmartList.this.myElem;
        }

        @Override // java.util.Iterator
        public final void remove() {
            checkCoModification();
            SmartList.this.clear();
        }
    }

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
                break;
            case 4:
                objArr[0] = "a";
                break;
            default:
                objArr[0] = "elements";
                break;
        }
        if (i == 2 || i == 3) {
            objArr[1] = "iterator";
        } else if (i == 5 || i == 6 || i == 7) {
            objArr[1] = "toArray";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
        }
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                break;
            case 4:
                objArr[2] = "toArray";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 5 && i != 6 && i != 7) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        if (i < 0 || i > (i2 = this.mySize)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(this.mySize, Animation.CC.m20m(i, "Index: ", ", Size: "));
            return;
        }
        if (i2 == 0) {
            this.myElem = obj;
        } else if (i2 == 1 && i == 0) {
            this.myElem = new Object[]{obj, this.myElem};
        } else {
            Object[] objArr = new Object[i2 + 1];
            Object obj2 = this.myElem;
            if (i2 == 1) {
                objArr[0] = obj2;
            } else {
                Object[] objArr2 = (Object[]) obj2;
                System.arraycopy(objArr2, 0, objArr, 0, i);
                System.arraycopy(objArr2, i, objArr, i + 1, this.mySize - i);
            }
            objArr[i] = obj;
            this.myElem = objArr;
        }
        this.mySize++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.myElem = null;
        this.mySize = 0;
        ((AbstractList) this).modCount++;
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ void forEach(Consumer consumer) {
        Iterable.CC.$default$forEach(this, consumer);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.mySize)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(this.mySize, Animation.CC.m20m(i, "Index: ", ", Size: "));
            return null;
        }
        Object obj = this.myElem;
        return i2 == 1 ? obj : ((Object[]) obj)[i];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        int i = this.mySize;
        if (i == 0) {
            return EmptyIterator.INSTANCE;
        }
        if (i == 1) {
            return new SingletonIterator();
        }
        Iterator it = super.iterator();
        if (it != null) {
            return it;
        }
        $$$reportNull$$$0(3);
        throw null;
    }

    @Override // java.util.Collection
    public /* synthetic */ Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.mySize)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(this.mySize, Animation.CC.m20m(i, "Index: ", ", Size: "));
            return null;
        }
        Object obj = this.myElem;
        if (i2 == 1) {
            this.myElem = null;
        } else {
            Object[] objArr = (Object[]) obj;
            Object obj2 = objArr[i];
            if (i2 == 2) {
                this.myElem = objArr[1 - i];
            } else {
                int i3 = (i2 - i) - 1;
                if (i3 > 0) {
                    System.arraycopy(objArr, i + 1, objArr, i, i3);
                }
                i2 = this.mySize;
                objArr[i2 - 1] = null;
            }
            obj = obj2;
        }
        this.mySize = i2 - 1;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ boolean removeIf(Predicate predicate) {
        return Collection.CC.$default$removeIf(this, predicate);
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int i2;
        if (i < 0 || i >= (i2 = this.mySize)) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m(this.mySize, Animation.CC.m20m(i, "Index: ", ", Size: "));
            return null;
        }
        Object obj2 = this.myElem;
        if (i2 == 1) {
            this.myElem = obj;
            return obj2;
        }
        Object[] objArr = (Object[]) obj2;
        Object obj3 = objArr[i];
        objArr[i] = obj;
        return obj3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.mySize;
    }

    @Override // java.util.List, j$.util.List
    public final void sort(Comparator comparator) {
        int i = this.mySize;
        if (i >= 2) {
            Arrays.sort((Object[]) this.myElem, 0, i, comparator);
        }
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection
    public /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        if (objArr == null) {
            $$$reportNull$$$0(4);
            throw null;
        }
        int length = objArr.length;
        int i = this.mySize;
        if (i == 1) {
            if (length == 0) {
                Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), 1);
                objArr2[0] = this.myElem;
                return objArr2;
            }
            objArr[0] = this.myElem;
        } else {
            if (length < i) {
                Object[] copyOf = Arrays.copyOf((Object[]) this.myElem, i, objArr.getClass());
                if (copyOf != null) {
                    return copyOf;
                }
                $$$reportNull$$$0(6);
                throw null;
            }
            if (i != 0) {
                System.arraycopy(this.myElem, 0, objArr, 0, i);
            }
        }
        int i2 = this.mySize;
        if (length > i2) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // java.util.Collection, j$.util.Collection
    public /* synthetic */ j$.util.stream.Stream parallelStream() {
        return Collection.CC.$default$parallelStream(this);
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ j$.util.Spliterator spliterator() {
        return List.CC.$default$spliterator(this);
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

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        int i = this.mySize;
        if (i == 0) {
            this.myElem = obj;
        } else {
            Object obj2 = this.myElem;
            if (i == 1) {
                this.myElem = new Object[]{obj2, obj};
            } else {
                Object[] objArr = (Object[]) obj2;
                int length = objArr.length;
                if (i >= length) {
                    int i2 = ((length * 3) / 2) + 1;
                    int i3 = i + 1;
                    if (i2 < i3) {
                        i2 = i3;
                    }
                    Object[] objArr2 = new Object[i2];
                    this.myElem = objArr2;
                    System.arraycopy(objArr, 0, objArr2, 0, length);
                    objArr = objArr2;
                }
                i = this.mySize;
                objArr[i] = obj;
            }
        }
        this.mySize = i + 1;
        ((AbstractList) this).modCount++;
        return true;
    }
}
