package j$.util.stream;

import java.util.Comparator;

/* loaded from: classes2.dex */
abstract class F2 extends AbstractC3060n2 {
    protected final Comparator b;
    protected boolean c;

    F2(InterfaceC3079r2 interfaceC3079r2, Comparator comparator) {
        super(interfaceC3079r2);
        this.b = comparator;
    }

    @Override // j$.util.stream.AbstractC3060n2, j$.util.stream.InterfaceC3079r2
    public final boolean e() {
        this.c = true;
        return false;
    }
}
