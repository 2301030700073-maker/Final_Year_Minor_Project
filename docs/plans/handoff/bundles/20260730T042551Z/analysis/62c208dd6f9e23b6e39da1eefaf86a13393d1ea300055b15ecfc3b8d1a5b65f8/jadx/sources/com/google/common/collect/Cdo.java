package com.google.common.collect;

import com.google.android.gms.common.api.Api;
import com.google.common.collect.Cif;
import defpackage.AbstractC3324mJ;
import defpackage.C0315Kc;
import defpackage.C3850vF;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;

/* renamed from: com.google.common.collect.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    public static final Object[] f11813do = new Object[0];

    /* renamed from: com.google.common.collect.do$do, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0073do<E> extends Cif<E> {

        /* renamed from: do, reason: not valid java name */
        public int f11814do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11815do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object[] f11816do;

        public AbstractC0073do() {
            C3850vF.m8465try(4, "initialCapacity");
            this.f11816do = new Object[4];
            this.f11814do = 0;
        }

        /* renamed from: for, reason: not valid java name */
        public final void m6049for(int i) {
            Object[] objArr = this.f11816do;
            if (objArr.length < i) {
                this.f11816do = Arrays.copyOf(objArr, Cif.m6051do(objArr.length, i));
                this.f11815do = false;
            } else if (this.f11815do) {
                this.f11816do = (Object[]) objArr.clone();
                this.f11815do = false;
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m6050if(Object... objArr) {
            int length = objArr.length;
            C0315Kc.m1154break(length, objArr);
            m6049for(this.f11814do + length);
            System.arraycopy(objArr, 0, this.f11816do, this.f11814do, length);
            this.f11814do += length;
        }
    }

    /* renamed from: com.google.common.collect.do$if, reason: invalid class name */
    public static abstract class Cif<E> {
        /* renamed from: do, reason: not valid java name */
        public static int m6051do(int i, int i2) {
            if (i2 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int i3 = i + (i >> 1) + 1;
            if (i3 < i2) {
                i3 = Integer.highestOneBit(i2 - 1) << 1;
            }
            return i3 < 0 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i3;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: break, reason: merged with bridge method [inline-methods] */
    public abstract AbstractC3324mJ<E> iterator();

    /* renamed from: case */
    public Object[] mo6034case() {
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    /* renamed from: else */
    public int mo6035else() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: goto */
    public int mo6036goto() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: this */
    public abstract boolean mo6038this();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f11813do);
    }

    /* renamed from: try */
    public int mo6039try(Object[] objArr) {
        AbstractC3324mJ<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    Object writeReplace() {
        return new Cif.Cnew(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        int size = size();
        if (tArr.length < size) {
            Object[] mo6034case = mo6034case();
            if (mo6034case != null) {
                return (T[]) Arrays.copyOfRange(mo6034case, mo6036goto(), mo6035else(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        mo6039try(tArr);
        return tArr;
    }
}
