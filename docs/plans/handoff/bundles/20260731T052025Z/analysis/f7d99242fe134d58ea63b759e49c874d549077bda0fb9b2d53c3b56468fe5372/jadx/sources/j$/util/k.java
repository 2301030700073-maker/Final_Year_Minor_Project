package j$.util;

import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class k implements Iterator, x {
    public final /* synthetic */ int a = 0;
    public final Iterator b;

    public k(l lVar) {
        this.b = lVar.a.iterator();
    }

    @Override // java.util.Iterator, j$.util.x
    public final void forEachRemaining(Consumer consumer) {
        switch (this.a) {
            case 0:
                c.u(this.b, consumer);
                break;
            default:
                c.u(this.b, new j$.nio.file.q(consumer, 2));
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.a) {
        }
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.a) {
            case 0:
                return this.b.next();
            default:
                return new o((Map.Entry) this.b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public k(q qVar) {
        this.b = qVar.a.iterator();
    }
}
