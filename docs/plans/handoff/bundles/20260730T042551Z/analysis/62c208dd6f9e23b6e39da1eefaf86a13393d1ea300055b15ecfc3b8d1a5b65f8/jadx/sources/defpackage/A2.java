package defpackage;

import com.google.android.gms.common.api.Api;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class A2<E> extends Cimport<E> {

    /* renamed from: if, reason: not valid java name */
    public static final Object[] f17if = new Object[0];

    /* renamed from: do, reason: not valid java name */
    public Object[] f18do = f17if;

    /* renamed from: for, reason: not valid java name */
    public int f19for;

    /* renamed from: new, reason: not valid java name */
    public int f20new;

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2 = this.f20new;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(Cif.m6918new("index: ", i, ", size: ", i2));
        }
        if (i == i2) {
            addLast(e);
            return;
        }
        if (i == 0) {
            m25case(i2 + 1);
            int i3 = this.f19for;
            if (i3 == 0) {
                Object[] objArr = this.f18do;
                C0173Do.m401try(objArr, "<this>");
                i3 = objArr.length;
            }
            int i4 = i3 - 1;
            this.f19for = i4;
            this.f18do[i4] = e;
            this.f20new++;
            return;
        }
        m25case(i2 + 1);
        int m27goto = m27goto(this.f19for + i);
        int i5 = this.f20new;
        if (i < ((i5 + 1) >> 1)) {
            if (m27goto == 0) {
                Object[] objArr2 = this.f18do;
                C0173Do.m401try(objArr2, "<this>");
                m27goto = objArr2.length;
            }
            int i6 = m27goto - 1;
            int i7 = this.f19for;
            if (i7 == 0) {
                Object[] objArr3 = this.f18do;
                C0173Do.m401try(objArr3, "<this>");
                i7 = objArr3.length;
            }
            int i8 = i7 - 1;
            int i9 = this.f19for;
            if (i6 >= i9) {
                Object[] objArr4 = this.f18do;
                objArr4[i8] = objArr4[i9];
                J2.f(objArr4, i9, objArr4, i9 + 1, i6 + 1);
            } else {
                Object[] objArr5 = this.f18do;
                J2.f(objArr5, i9 - 1, objArr5, i9, objArr5.length);
                Object[] objArr6 = this.f18do;
                objArr6[objArr6.length - 1] = objArr6[0];
                J2.f(objArr6, 0, objArr6, 1, i6 + 1);
            }
            this.f18do[i6] = e;
            this.f19for = i8;
        } else {
            int m27goto2 = m27goto(this.f19for + i5);
            if (m27goto < m27goto2) {
                Object[] objArr7 = this.f18do;
                J2.f(objArr7, m27goto + 1, objArr7, m27goto, m27goto2);
            } else {
                Object[] objArr8 = this.f18do;
                J2.f(objArr8, 1, objArr8, 0, m27goto2);
                Object[] objArr9 = this.f18do;
                objArr9[0] = objArr9[objArr9.length - 1];
                J2.f(objArr9, m27goto + 1, objArr9, m27goto, objArr9.length - 1);
            }
            this.f18do[m27goto] = e;
        }
        this.f20new++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends E> collection) {
        C0173Do.m401try(collection, "elements");
        int i2 = this.f20new;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(Cif.m6918new("index: ", i, ", size: ", i2));
        }
        if (collection.isEmpty()) {
            return false;
        }
        int i3 = this.f20new;
        if (i == i3) {
            return addAll(collection);
        }
        m25case(collection.size() + i3);
        int m27goto = m27goto(this.f19for + this.f20new);
        int m27goto2 = m27goto(this.f19for + i);
        int size = collection.size();
        if (i < ((this.f20new + 1) >> 1)) {
            int i4 = this.f19for;
            int i5 = i4 - size;
            if (m27goto2 < i4) {
                Object[] objArr = this.f18do;
                J2.f(objArr, i5, objArr, i4, objArr.length);
                if (size >= m27goto2) {
                    Object[] objArr2 = this.f18do;
                    J2.f(objArr2, objArr2.length - size, objArr2, 0, m27goto2);
                } else {
                    Object[] objArr3 = this.f18do;
                    J2.f(objArr3, objArr3.length - size, objArr3, 0, size);
                    Object[] objArr4 = this.f18do;
                    J2.f(objArr4, 0, objArr4, size, m27goto2);
                }
            } else if (i5 >= 0) {
                Object[] objArr5 = this.f18do;
                J2.f(objArr5, i5, objArr5, i4, m27goto2);
            } else {
                Object[] objArr6 = this.f18do;
                i5 += objArr6.length;
                int i6 = m27goto2 - i4;
                int length = objArr6.length - i5;
                if (length >= i6) {
                    J2.f(objArr6, i5, objArr6, i4, m27goto2);
                } else {
                    J2.f(objArr6, i5, objArr6, i4, i4 + length);
                    Object[] objArr7 = this.f18do;
                    J2.f(objArr7, 0, objArr7, this.f19for + length, m27goto2);
                }
            }
            this.f19for = i5;
            int i7 = m27goto2 - size;
            if (i7 < 0) {
                i7 += this.f18do.length;
            }
            m28try(i7, collection);
        } else {
            int i8 = m27goto2 + size;
            if (m27goto2 < m27goto) {
                int i9 = size + m27goto;
                Object[] objArr8 = this.f18do;
                if (i9 <= objArr8.length) {
                    J2.f(objArr8, i8, objArr8, m27goto2, m27goto);
                } else if (i8 >= objArr8.length) {
                    J2.f(objArr8, i8 - objArr8.length, objArr8, m27goto2, m27goto);
                } else {
                    int length2 = m27goto - (i9 - objArr8.length);
                    J2.f(objArr8, 0, objArr8, length2, m27goto);
                    Object[] objArr9 = this.f18do;
                    J2.f(objArr9, i8, objArr9, m27goto2, length2);
                }
            } else {
                Object[] objArr10 = this.f18do;
                J2.f(objArr10, size, objArr10, 0, m27goto);
                Object[] objArr11 = this.f18do;
                if (i8 >= objArr11.length) {
                    J2.f(objArr11, i8 - objArr11.length, objArr11, m27goto2, objArr11.length);
                } else {
                    J2.f(objArr11, 0, objArr11, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f18do;
                    J2.f(objArr12, i8, objArr12, m27goto2, objArr12.length - size);
                }
            }
            m28try(m27goto2, collection);
        }
        return true;
    }

    public final void addLast(E e) {
        m25case(this.f20new + 1);
        this.f18do[m27goto(this.f19for + this.f20new)] = e;
        this.f20new++;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m25case(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f18do;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == f17if) {
            if (i < 10) {
                i = 10;
            }
            this.f18do = new Object[i];
            return;
        }
        int length = objArr.length;
        int i2 = length + (length >> 1);
        if (i2 - i < 0) {
            i2 = i;
        }
        if (i2 - 2147483639 > 0) {
            i2 = i > 2147483639 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : 2147483639;
        }
        Object[] objArr2 = new Object[i2];
        J2.f(objArr, 0, objArr2, this.f19for, objArr.length);
        Object[] objArr3 = this.f18do;
        int length2 = objArr3.length;
        int i3 = this.f19for;
        J2.f(objArr3, length2 - i3, objArr2, 0, i3);
        this.f19for = 0;
        this.f18do = objArr2;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int m27goto = m27goto(this.f19for + this.f20new);
        int i = this.f19for;
        if (i < m27goto) {
            Object[] objArr = this.f18do;
            C0173Do.m401try(objArr, "<this>");
            Arrays.fill(objArr, i, m27goto, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f18do;
            Arrays.fill(objArr2, this.f19for, objArr2.length, (Object) null);
            Object[] objArr3 = this.f18do;
            C0173Do.m401try(objArr3, "<this>");
            Arrays.fill(objArr3, 0, m27goto, (Object) null);
        }
        this.f19for = 0;
        this.f20new = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m26else(int i) {
        C0173Do.m401try(this.f18do, "<this>");
        if (i == r0.length - 1) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        int i2 = this.f20new;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(Cif.m6918new("index: ", i, ", size: ", i2));
        }
        return (E) this.f18do[m27goto(this.f19for + i)];
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m27goto(int i) {
        Object[] objArr = this.f18do;
        return i >= objArr.length ? i - objArr.length : i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int m27goto = m27goto(this.f19for + this.f20new);
        int i2 = this.f19for;
        if (i2 < m27goto) {
            while (i2 < m27goto) {
                if (C0173Do.m394do(obj, this.f18do[i2])) {
                    i = this.f19for;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (i2 < m27goto) {
            return -1;
        }
        int length = this.f18do.length;
        while (true) {
            if (i2 >= length) {
                for (int i3 = 0; i3 < m27goto; i3++) {
                    if (C0173Do.m394do(obj, this.f18do[i3])) {
                        i2 = i3 + this.f18do.length;
                        i = this.f19for;
                    }
                }
                return -1;
            }
            if (C0173Do.m394do(obj, this.f18do[i2])) {
                i = this.f19for;
                break;
            }
            i2++;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f20new == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int m27goto = m27goto(this.f19for + this.f20new);
        int i2 = this.f19for;
        if (i2 < m27goto) {
            length = m27goto - 1;
            if (i2 <= length) {
                while (!C0173Do.m394do(obj, this.f18do[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.f19for;
                return length - i;
            }
            return -1;
        }
        if (i2 > m27goto) {
            int i3 = m27goto - 1;
            while (true) {
                if (-1 >= i3) {
                    Object[] objArr = this.f18do;
                    C0173Do.m401try(objArr, "<this>");
                    length = objArr.length - 1;
                    int i4 = this.f19for;
                    if (i4 <= length) {
                        while (!C0173Do.m394do(obj, this.f18do[length])) {
                            if (length != i4) {
                                length--;
                            }
                        }
                        i = this.f19for;
                    }
                } else {
                    if (C0173Do.m394do(obj, this.f18do[i3])) {
                        length = i3 + this.f18do.length;
                        i = this.f19for;
                        break;
                    }
                    i3--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<? extends Object> collection) {
        int m27goto;
        C0173Do.m401try(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty()) {
            if (!(this.f18do.length == 0)) {
                int m27goto2 = m27goto(this.f19for + this.f20new);
                int i = this.f19for;
                if (i < m27goto2) {
                    m27goto = i;
                    while (i < m27goto2) {
                        Object obj = this.f18do[i];
                        if (!collection.contains(obj)) {
                            this.f18do[m27goto] = obj;
                            m27goto++;
                        } else {
                            z = true;
                        }
                        i++;
                    }
                    Object[] objArr = this.f18do;
                    C0173Do.m401try(objArr, "<this>");
                    Arrays.fill(objArr, m27goto, m27goto2, (Object) null);
                } else {
                    int length = this.f18do.length;
                    int i2 = i;
                    boolean z2 = false;
                    while (i < length) {
                        Object[] objArr2 = this.f18do;
                        Object obj2 = objArr2[i];
                        objArr2[i] = null;
                        if (!collection.contains(obj2)) {
                            this.f18do[i2] = obj2;
                            i2++;
                        } else {
                            z2 = true;
                        }
                        i++;
                    }
                    m27goto = m27goto(i2);
                    for (int i3 = 0; i3 < m27goto2; i3++) {
                        Object[] objArr3 = this.f18do;
                        Object obj3 = objArr3[i3];
                        objArr3[i3] = null;
                        if (!collection.contains(obj3)) {
                            this.f18do[m27goto] = obj3;
                            m27goto = m26else(m27goto);
                        } else {
                            z2 = true;
                        }
                    }
                    z = z2;
                }
                if (z) {
                    int i4 = m27goto - this.f19for;
                    if (i4 < 0) {
                        i4 += this.f18do.length;
                    }
                    this.f20new = i4;
                }
            }
        }
        return z;
    }

    public final E removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        Object[] objArr = this.f18do;
        int i = this.f19for;
        E e = (E) objArr[i];
        objArr[i] = null;
        this.f19for = m26else(i);
        this.f20new--;
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<? extends Object> collection) {
        int m27goto;
        C0173Do.m401try(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty()) {
            if (!(this.f18do.length == 0)) {
                int m27goto2 = m27goto(this.f19for + this.f20new);
                int i = this.f19for;
                if (i < m27goto2) {
                    m27goto = i;
                    while (i < m27goto2) {
                        Object obj = this.f18do[i];
                        if (collection.contains(obj)) {
                            this.f18do[m27goto] = obj;
                            m27goto++;
                        } else {
                            z = true;
                        }
                        i++;
                    }
                    Object[] objArr = this.f18do;
                    C0173Do.m401try(objArr, "<this>");
                    Arrays.fill(objArr, m27goto, m27goto2, (Object) null);
                } else {
                    int length = this.f18do.length;
                    int i2 = i;
                    boolean z2 = false;
                    while (i < length) {
                        Object[] objArr2 = this.f18do;
                        Object obj2 = objArr2[i];
                        objArr2[i] = null;
                        if (collection.contains(obj2)) {
                            this.f18do[i2] = obj2;
                            i2++;
                        } else {
                            z2 = true;
                        }
                        i++;
                    }
                    m27goto = m27goto(i2);
                    for (int i3 = 0; i3 < m27goto2; i3++) {
                        Object[] objArr3 = this.f18do;
                        Object obj3 = objArr3[i3];
                        objArr3[i3] = null;
                        if (collection.contains(obj3)) {
                            this.f18do[m27goto] = obj3;
                            m27goto = m26else(m27goto);
                        } else {
                            z2 = true;
                        }
                    }
                    z = z2;
                }
                if (z) {
                    int i4 = m27goto - this.f19for;
                    if (i4 < 0) {
                        i4 += this.f18do.length;
                    }
                    this.f20new = i4;
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        int i2 = this.f20new;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(Cif.m6918new("index: ", i, ", size: ", i2));
        }
        int m27goto = m27goto(this.f19for + i);
        Object[] objArr = this.f18do;
        E e2 = (E) objArr[m27goto];
        objArr[m27goto] = e;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[this.f20new]);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m28try(int i, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f18do.length;
        while (i < length && it.hasNext()) {
            this.f18do[i] = it.next();
            i++;
        }
        int i2 = this.f19for;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f18do[i3] = it.next();
        }
        this.f20new = collection.size() + this.f20new;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        C0173Do.m401try(tArr, "array");
        int length = tArr.length;
        int i = this.f20new;
        if (length < i) {
            Object newInstance = Array.newInstance(tArr.getClass().getComponentType(), i);
            C0173Do.m396for(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            tArr = (T[]) ((Object[]) newInstance);
        }
        int m27goto = m27goto(this.f19for + this.f20new);
        int i2 = this.f19for;
        if (i2 < m27goto) {
            J2.f(this.f18do, 0, tArr, i2, m27goto);
        } else if (!isEmpty()) {
            Object[] objArr = this.f18do;
            J2.f(objArr, 0, tArr, this.f19for, objArr.length);
            Object[] objArr2 = this.f18do;
            J2.f(objArr2, objArr2.length - this.f19for, tArr, 0, m27goto);
        }
        int length2 = tArr.length;
        int i3 = this.f20new;
        if (length2 > i3) {
            tArr[i3] = null;
        }
        return tArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        addLast(e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends E> collection) {
        C0173Do.m401try(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        m25case(collection.size() + this.f20new);
        m28try(m27goto(this.f19for + this.f20new), collection);
        return true;
    }
}
