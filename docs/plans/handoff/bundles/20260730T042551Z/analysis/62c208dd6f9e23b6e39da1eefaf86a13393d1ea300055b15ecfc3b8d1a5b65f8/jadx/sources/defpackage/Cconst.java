package defpackage;

import com.google.common.collect.Cif;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* renamed from: const, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cconst<E> extends AbstractC3324mJ<Object> implements ListIterator<Object> {

    /* renamed from: for, reason: not valid java name */
    public final int f12379for;

    /* renamed from: new, reason: not valid java name */
    public int f12380new;

    public Cconst(int i, int i2) {
        C0315Kc.m1157class(i2, i);
        this.f12379for = i;
        this.f12380new = i2;
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(Object obj) {
        m6399do(obj);
        throw null;
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public final void m6399do(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f12380new < this.f12379for;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12380new > 0;
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public final void m6400if(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f12380new;
        this.f12380new = i + 1;
        return ((Cif.C0075if) this).f11835do.get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12380new;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f12380new - 1;
        this.f12380new = i;
        return ((Cif.C0075if) this).f11835do.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12380new - 1;
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(Object obj) {
        m6400if(obj);
        throw null;
    }
}
