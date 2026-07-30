package com.google.common.collect;

import com.google.common.collect.Cdo;
import com.google.common.collect.Cif;
import com.google.common.collect.Ctry;
import defpackage.C0315Kc;
import defpackage.C2601cu;
import defpackage.C3185jz;
import defpackage.C3850vF;
import defpackage.JE;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* renamed from: com.google.common.collect.else, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Celse<E> extends Cgoto<E> implements NavigableSet<E>, JE<E> {

    /* renamed from: do, reason: not valid java name */
    public transient Celse<E> f11817do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final transient Comparator<? super E> f11818do;

    /* renamed from: com.google.common.collect.else$do, reason: invalid class name */
    public static final class Cdo<E> extends Ctry.Cdo<E> {

        /* renamed from: do, reason: not valid java name */
        public final Comparator<? super E> f11819do;

        public Cdo(Comparator<? super E> comparator) {
            this.f11819do = comparator;
        }

        @Override // com.google.common.collect.Ctry.Cdo
        /* renamed from: new, reason: not valid java name */
        public final void mo6054new(Object obj) {
            super.mo6054new(obj);
        }

        @Override // com.google.common.collect.Ctry.Cdo
        /* renamed from: try, reason: not valid java name */
        public final Ctry mo6055try() {
            Object[] objArr = ((Cdo.AbstractC0073do) this).f11816do;
            Ccatch m6053throw = Celse.m6053throw(((Cdo.AbstractC0073do) this).f11814do, this.f11819do, objArr);
            ((Cdo.AbstractC0073do) this).f11814do = m6053throw.size();
            ((Cdo.AbstractC0073do) this).f11815do = true;
            return m6053throw;
        }
    }

    /* renamed from: com.google.common.collect.else$if, reason: invalid class name */
    public static class Cif<E> implements Serializable {

        /* renamed from: do, reason: not valid java name */
        public final Comparator<? super E> f11820do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object[] f11821do;

        public Cif(Comparator<? super E> comparator, Object[] objArr) {
            this.f11820do = comparator;
            this.f11821do = objArr;
        }

        public Object readResolve() {
            C3850vF.m8465try(4, "initialCapacity");
            Object[] objArr = new Object[4];
            Comparator<? super E> comparator = this.f11820do;
            comparator.getClass();
            Object[] objArr2 = this.f11821do;
            int length = objArr2.length;
            C0315Kc.m1154break(length, objArr2);
            int i = length + 0;
            if (4 < i) {
                objArr = Arrays.copyOf(objArr, Cdo.Cif.m6051do(4, i));
            }
            System.arraycopy(objArr2, 0, objArr, 0, length);
            Ccatch m6053throw = Celse.m6053throw(i, comparator, objArr);
            m6053throw.size();
            return m6053throw;
        }
    }

    public Celse(Comparator<? super E> comparator) {
        this.f11818do = comparator;
    }

    /* renamed from: native, reason: not valid java name */
    public static <E> Ccatch<E> m6052native(Comparator<? super E> comparator) {
        return C2601cu.f12393do.equals(comparator) ? (Ccatch<E>) Ccatch.f11808do : new Ccatch<>(C3185jz.f13859do, comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    /* renamed from: throw, reason: not valid java name */
    public static Ccatch m6053throw(int i, Comparator comparator, Object... objArr) {
        if (i == 0) {
            return m6052native(comparator);
        }
        C0315Kc.m1154break(i, objArr);
        Arrays.sort(objArr, 0, i, comparator);
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (comparator.compare(obj, objArr[i2 - 1]) != 0) {
                objArr[i2] = obj;
                i2++;
            }
        }
        Arrays.fill(objArr, i2, i, (Object) null);
        if (i2 < objArr.length / 2) {
            objArr = Arrays.copyOf(objArr, i2);
        }
        return new Ccatch(com.google.common.collect.Cif.m6063catch(i2, objArr), comparator);
    }

    public E ceiling(E e) {
        e.getClass();
        Iterator<E> it = mo6046switch(e, true).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    @Override // java.util.SortedSet, defpackage.JE
    public final Comparator<? super E> comparator() {
        return this.f11818do;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        Celse<E> celse = this.f11817do;
        if (celse != null) {
            return celse;
        }
        Ccatch mo6047while = mo6047while();
        this.f11817do = mo6047while;
        ((Celse) mo6047while).f11817do = this;
        return mo6047while;
    }

    public E first() {
        return iterator().next();
    }

    public E floor(E e) {
        e.getClass();
        Cif.C0075if descendingIterator = mo6044return(e, true).descendingIterator();
        if (descendingIterator.hasNext()) {
            return descendingIterator.next();
        }
        return null;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        return mo6044return(obj, z);
    }

    public E higher(E e) {
        e.getClass();
        Iterator<E> it = mo6046switch(e, false).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    @Override // java.util.NavigableSet
    /* renamed from: import */
    public abstract Cif.C0075if descendingIterator();

    public E last() {
        return descendingIterator().next();
    }

    public E lower(E e) {
        e.getClass();
        Cif.C0075if descendingIterator = mo6044return(e, false).descendingIterator();
        if (descendingIterator.hasNext()) {
            return descendingIterator.next();
        }
        return null;
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: return */
    public abstract Ccatch mo6044return(Object obj, boolean z);

    /* renamed from: static */
    public abstract Ccatch mo6045static(Object obj, boolean z, Object obj2, boolean z2);

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.f11818do.compare(obj, obj2) <= 0) {
            return mo6045static(obj, z, obj2, z2);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: switch */
    public abstract Ccatch mo6046switch(Object obj, boolean z);

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return mo6046switch(obj, z);
    }

    /* renamed from: while */
    public abstract Ccatch mo6047while();

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cdo
    public Object writeReplace() {
        return new Cif(this.f11818do, toArray());
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        obj.getClass();
        return mo6044return(obj, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        obj.getClass();
        return mo6046switch(obj, true);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        if (this.f11818do.compare(obj, obj2) <= 0) {
            return mo6045static(obj, true, obj2, false);
        }
        throw new IllegalArgumentException();
    }
}
