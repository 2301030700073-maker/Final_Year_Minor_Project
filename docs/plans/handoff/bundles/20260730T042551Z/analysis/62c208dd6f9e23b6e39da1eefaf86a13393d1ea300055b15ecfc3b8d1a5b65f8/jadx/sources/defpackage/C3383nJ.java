package defpackage;

import j$.util.Iterator;
import java.util.AbstractList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.Consumer;

@Deprecated
/* renamed from: nJ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3383nJ extends AbstractList<String> implements InterfaceC0547Up, RandomAccess {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0547Up f14491do;

    /* renamed from: nJ$do, reason: invalid class name */
    public class Cdo implements ListIterator<String>, Iterator {

        /* renamed from: do, reason: not valid java name */
        public final ListIterator<String> f14492do;

        public Cdo(C3383nJ c3383nJ, int i) {
            this.f14492do = c3383nJ.f14491do.listIterator(i);
        }

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f14492do.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f14492do.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
        public final Object next() {
            return this.f14492do.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f14492do.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return this.f14492do.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f14492do.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: nJ$if, reason: invalid class name */
    public class Cif implements java.util.Iterator<String>, Iterator {

        /* renamed from: do, reason: not valid java name */
        public final java.util.Iterator<String> f14493do;

        public Cif(C3383nJ c3383nJ) {
            this.f14493do = c3383nJ.f14491do.iterator();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f14493do.hasNext();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            return this.f14493do.next();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C3383nJ(InterfaceC0547Up interfaceC0547Up) {
        this.f14491do = interfaceC0547Up;
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: for */
    public final List<?> mo2471for() {
        return this.f14491do.mo2471for();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return (String) this.f14491do.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final java.util.Iterator<String> iterator() {
        return new Cif(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new Cdo(this, i);
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: new */
    public final Object mo2472new(int i) {
        return this.f14491do.mo2472new(i);
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: public */
    public final InterfaceC0547Up mo2473public() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14491do.size();
    }

    @Override // defpackage.InterfaceC0547Up
    /* renamed from: throws */
    public final void mo2474throws(AbstractC3429o6 abstractC3429o6) {
        throw new UnsupportedOperationException();
    }
}
