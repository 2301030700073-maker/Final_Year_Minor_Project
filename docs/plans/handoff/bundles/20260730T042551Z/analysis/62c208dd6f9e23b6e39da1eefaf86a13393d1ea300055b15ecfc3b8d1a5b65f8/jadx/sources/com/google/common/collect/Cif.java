package com.google.common.collect;

import com.google.common.collect.Cdo;
import defpackage.AbstractC3324mJ;
import defpackage.C0315Kc;
import defpackage.C3185jz;
import defpackage.C3645ro;
import defpackage.Cconst;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* renamed from: com.google.common.collect.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif<E> extends com.google.common.collect.Cdo<E> implements List<E>, RandomAccess {

    /* renamed from: do, reason: not valid java name */
    public static final C0075if f11833do = new C0075if(C3185jz.f13859do, 0);

    /* renamed from: com.google.common.collect.if$do, reason: invalid class name */
    public static final class Cdo<E> extends Cdo.AbstractC0073do<E> {
    }

    /* renamed from: com.google.common.collect.if$for, reason: invalid class name */
    public static class Cfor<E> extends Cif<E> {

        /* renamed from: do, reason: not valid java name */
        public final transient Cif<E> f11834do;

        public Cfor(Cif<E> cif) {
            this.f11834do = cif;
        }

        @Override // com.google.common.collect.Cif, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f11834do.contains(obj);
        }

        @Override // com.google.common.collect.Cif
        /* renamed from: final */
        public final Cif<E> mo6065final() {
            return this.f11834do;
        }

        @Override // java.util.List
        public final E get(int i) {
            C0315Kc.m1181this(i, size());
            return this.f11834do.get((size() - 1) - i);
        }

        @Override // com.google.common.collect.Cif, java.util.List
        public final int indexOf(Object obj) {
            int lastIndexOf = this.f11834do.lastIndexOf(obj);
            if (lastIndexOf >= 0) {
                return (size() - 1) - lastIndexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.Cif, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.Cif, java.util.List
        public final int lastIndexOf(Object obj) {
            int indexOf = this.f11834do.indexOf(obj);
            if (indexOf >= 0) {
                return (size() - 1) - indexOf;
            }
            return -1;
        }

        @Override // com.google.common.collect.Cif, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f11834do.size();
        }

        @Override // com.google.common.collect.Cif, java.util.List
        /* renamed from: super, reason: merged with bridge method [inline-methods] */
        public final Cif<E> subList(int i, int i2) {
            C0315Kc.m1158const(i, i2, size());
            return this.f11834do.subList(size() - i2, size() - i).mo6065final();
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: this */
        public final boolean mo6038this() {
            return this.f11834do.mo6038this();
        }

        @Override // com.google.common.collect.Cif, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    /* renamed from: com.google.common.collect.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0075if<E> extends Cconst<E> {

        /* renamed from: do, reason: not valid java name */
        public final Cif<E> f11835do;

        public C0075if(Cif<E> cif, int i) {
            super(cif.size(), i);
            this.f11835do = cif;
        }
    }

    /* renamed from: com.google.common.collect.if$new, reason: invalid class name */
    public static class Cnew implements Serializable {

        /* renamed from: do, reason: not valid java name */
        public final Object[] f11836do;

        public Cnew(Object[] objArr) {
            this.f11836do = objArr;
        }

        public Object readResolve() {
            C0075if c0075if = Cif.f11833do;
            Object[] objArr = this.f11836do;
            if (objArr.length == 0) {
                return C3185jz.f13859do;
            }
            Object[] objArr2 = (Object[]) objArr.clone();
            C0315Kc.m1154break(objArr2.length, objArr2);
            return Cif.m6063catch(objArr2.length, objArr2);
        }
    }

    /* renamed from: com.google.common.collect.if$try, reason: invalid class name */
    public class Ctry extends Cif<E> {

        /* renamed from: for, reason: not valid java name */
        public final transient int f11838for;

        /* renamed from: new, reason: not valid java name */
        public final transient int f11839new;

        public Ctry(int i, int i2) {
            this.f11838for = i;
            this.f11839new = i2;
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: case */
        public final Object[] mo6034case() {
            return Cif.this.mo6034case();
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: else */
        public final int mo6035else() {
            return Cif.this.mo6036goto() + this.f11838for + this.f11839new;
        }

        @Override // java.util.List
        public final E get(int i) {
            C0315Kc.m1181this(i, this.f11839new);
            return Cif.this.get(i + this.f11838for);
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: goto */
        public final int mo6036goto() {
            return Cif.this.mo6036goto() + this.f11838for;
        }

        @Override // com.google.common.collect.Cif, com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.Cif, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f11839new;
        }

        @Override // com.google.common.collect.Cif, java.util.List
        /* renamed from: super */
        public final Cif<E> subList(int i, int i2) {
            C0315Kc.m1158const(i, i2, this.f11839new);
            int i3 = this.f11838for;
            return Cif.this.subList(i + i3, i2 + i3);
        }

        @Override // com.google.common.collect.Cdo
        /* renamed from: this */
        public final boolean mo6038this() {
            return true;
        }

        @Override // com.google.common.collect.Cif, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static C3185jz m6063catch(int i, Object[] objArr) {
        return i == 0 ? C3185jz.f13859do : new C3185jz(objArr, i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: break */
    public final AbstractC3324mJ<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public final C0075if listIterator(int i) {
        C0315Kc.m1157class(i, size());
        return isEmpty() ? f11833do : new C0075if(this, i);
    }

    @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (C3645ro.m8013static(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && C3645ro.m8013static(it.next(), it2.next())) {
                    }
                }
                return !it2.hasNext();
            }
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    public Cif<E> mo6065final() {
        return size() <= 1 ? this : new Cfor(this);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: super, reason: not valid java name */
    public Cif<E> subList(int i, int i2) {
        C0315Kc.m1158const(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? C3185jz.f13859do : new Ctry(i, i3);
    }

    @Override // com.google.common.collect.Cdo
    /* renamed from: try */
    public int mo6039try(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[0 + i] = get(i);
        }
        return 0 + size;
    }

    @Override // com.google.common.collect.Cdo
    public Object writeReplace() {
        return new Cnew(toArray());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }
}
