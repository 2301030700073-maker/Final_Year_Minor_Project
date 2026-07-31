package j$.util;

import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class j implements Iterator, w {
    public final /* synthetic */ int a = 0;
    public final Iterator b;

    public j(k kVar) {
        this.b = kVar.a.iterator();
    }

    @Override // java.util.Iterator, j$.util.w
    public final void forEachRemaining(Consumer consumer) {
        switch (this.a) {
            case 0:
                j$.time.a.M(this.b, consumer);
                break;
            default:
                j$.time.a.M(this.b, new n(0, consumer));
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

    public j(q qVar) {
        this.b = qVar.a.iterator();
    }
}
