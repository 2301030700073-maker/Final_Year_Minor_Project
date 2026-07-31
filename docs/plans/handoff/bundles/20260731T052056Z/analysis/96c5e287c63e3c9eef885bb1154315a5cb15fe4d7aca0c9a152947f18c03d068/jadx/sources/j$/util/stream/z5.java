package j$.util.stream;

import java.util.Comparator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class z5 extends h5 {
    public final Comparator b;
    public boolean c;

    public z5(l5 l5Var, Comparator comparator) {
        super(l5Var);
        this.b = comparator;
    }

    @Override // j$.util.stream.h5, j$.util.stream.l5
    public final boolean e() {
        this.c = true;
        return false;
    }
}
