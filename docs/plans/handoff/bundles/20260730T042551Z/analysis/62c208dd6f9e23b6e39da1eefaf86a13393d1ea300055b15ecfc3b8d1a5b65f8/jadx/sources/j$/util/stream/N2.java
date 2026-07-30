package j$.util.stream;

import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes2.dex */
final class N2 extends F2 {
    private ArrayList d;

    N2(InterfaceC3079r2 interfaceC3079r2, Comparator comparator) {
        super(interfaceC3079r2, comparator);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.d.add(obj);
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final void end() {
        j$.util.E.j(this.d, this.b);
        long size = this.d.size();
        InterfaceC3079r2 interfaceC3079r2 = this.a;
        interfaceC3079r2.c(size);
        if (this.c) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (interfaceC3079r2.e()) {
                    break;
                } else {
                    interfaceC3079r2.accept((InterfaceC3079r2) next);
                }
            }
        } else {
            ArrayList arrayList = this.d;
            Objects.requireNonNull(interfaceC3079r2);
            Collection.EL.a(arrayList, new C2992a(2, interfaceC3079r2));
        }
        interfaceC3079r2.end();
        this.d = null;
    }
}
