package defpackage;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.function.Consumer;

/* renamed from: kI, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3205kI<T, R> implements InterfaceC3140jC<R> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2650dk<T, R> f13961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3140jC<T> f13962do;

    /* renamed from: kI$do, reason: invalid class name */
    public static final class Cdo implements Iterator<R>, InterfaceC3941wp, j$.util.Iterator {

        /* renamed from: do, reason: not valid java name */
        public final Iterator<T> f13963do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ C3205kI<T, R> f13964do;

        public Cdo(C3205kI<T, R> c3205kI) {
            this.f13964do = c3205kI;
            this.f13963do = c3205kI.f13962do.iterator();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            return this.f13963do.hasNext();
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final R next() {
            return (R) this.f13964do.f13961do.mo364this(this.f13963do.next());
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public C3205kI(C0469Rd c0469Rd, DF df) {
        this.f13962do = c0469Rd;
        this.f13961do = df;
    }

    @Override // defpackage.InterfaceC3140jC
    public final java.util.Iterator<R> iterator() {
        return new Cdo(this);
    }
}
