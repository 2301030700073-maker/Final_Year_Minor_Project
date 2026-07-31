package j$.util.stream;

import java.util.Comparator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class d6 extends k5 {
    public final Comparator b;
    public boolean c;

    public d6(o5 o5Var, Comparator comparator) {
        super(o5Var);
        this.b = comparator;
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final boolean e() {
        this.c = true;
        return false;
    }
}
