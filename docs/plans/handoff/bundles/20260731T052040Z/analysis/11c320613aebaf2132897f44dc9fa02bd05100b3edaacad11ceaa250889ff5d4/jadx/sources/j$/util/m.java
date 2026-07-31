package j$.util;

import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class m implements Iterator, y {
    public final /* synthetic */ int a = 0;
    public final Iterator b;

    public m(n nVar) {
        this.b = nVar.a.iterator();
    }

    @Override // java.util.Iterator, j$.util.y
    public final void forEachRemaining(Consumer consumer) {
        switch (this.a) {
            case 0:
                Iterator$EL.forEachRemaining(this.b, consumer);
                break;
            default:
                Iterator$EL.forEachRemaining(this.b, new j$.nio.file.t(consumer, 2));
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
                return new q((Map.Entry) this.b.next());
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

    public m(s sVar) {
        this.b = sVar.a.iterator();
    }
}
