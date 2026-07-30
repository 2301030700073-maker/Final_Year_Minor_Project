package j$.util.concurrent;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class d extends AbstractC2976a implements Iterator, j$.util.Iterator {
    d(l[] lVarArr, int i, int i2, ConcurrentHashMap concurrentHashMap) {
        super(lVarArr, i, i2, concurrentHashMap);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        l lVar = this.b;
        if (lVar == null) {
            throw new NoSuchElementException();
        }
        Object obj = lVar.b;
        Object obj2 = lVar.c;
        this.j = lVar;
        a();
        return new k(obj, obj2, this.i);
    }
}
