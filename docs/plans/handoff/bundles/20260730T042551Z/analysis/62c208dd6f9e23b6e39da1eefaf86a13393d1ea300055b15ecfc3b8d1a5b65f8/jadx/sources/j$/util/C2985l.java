package j$.util;

import java.util.Map;
import java.util.function.Consumer;

/* renamed from: j$.util.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2985l implements java.util.Iterator, Iterator {
    public final /* synthetic */ int a = 0;
    private final java.util.Iterator b;

    public C2985l(C2986m c2986m) {
        this.b = c2986m.a.iterator();
    }

    public C2985l(C2991s c2991s) {
        this.b = c2991s.a.iterator();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void forEachRemaining(Consumer consumer) {
        int i = this.a;
        java.util.Iterator it = this.b;
        switch (i) {
            case 0:
                E.i(it, consumer);
                break;
            default:
                E.i(it, new C2989p(consumer));
                break;
        }
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        int i = this.a;
        java.util.Iterator it = this.b;
        switch (i) {
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        int i = this.a;
        java.util.Iterator it = this.b;
        switch (i) {
            case 0:
                return it.next();
            default:
                return new C2990q((Map.Entry) it.next());
        }
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }
}
