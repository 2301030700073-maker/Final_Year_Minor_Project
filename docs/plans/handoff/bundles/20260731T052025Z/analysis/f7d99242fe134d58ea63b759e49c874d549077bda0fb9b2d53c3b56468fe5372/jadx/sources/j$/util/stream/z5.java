package j$.util.stream;

import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
