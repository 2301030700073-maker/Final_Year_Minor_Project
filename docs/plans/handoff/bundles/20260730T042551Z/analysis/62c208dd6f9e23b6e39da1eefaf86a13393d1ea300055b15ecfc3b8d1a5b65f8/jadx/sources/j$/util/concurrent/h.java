package j$.util.concurrent;

import j$.util.Iterator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class h extends AbstractC2976a implements Iterator, Enumeration, j$.util.Iterator {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(l[] lVarArr, int i, int i2, ConcurrentHashMap concurrentHashMap, int i3) {
        super(lVarArr, i, i2, concurrentHashMap);
        this.k = i3;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        switch (this.k) {
            case 0:
                Iterator.CC.$default$forEachRemaining(this, consumer);
                break;
            default:
                Iterator.CC.$default$forEachRemaining(this, consumer);
                break;
        }
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final Object next() {
        switch (this.k) {
            case 0:
                l lVar = this.b;
                if (lVar == null) {
                    throw new NoSuchElementException();
                }
                this.j = lVar;
                a();
                return lVar.b;
            default:
                l lVar2 = this.b;
                if (lVar2 == null) {
                    throw new NoSuchElementException();
                }
                Object obj = lVar2.c;
                this.j = lVar2;
                a();
                return obj;
        }
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        switch (this.k) {
        }
        return next();
    }
}
