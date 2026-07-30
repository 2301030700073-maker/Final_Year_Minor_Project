package j$.time.chrono;

import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class A implements o, Serializable {
    public static final A d;
    private static final A[] e;
    private static final long serialVersionUID = 1466499369062886794L;
    private final transient int a;
    private final transient j$.time.i b;
    private final transient String c;

    static {
        A a = new A(-1, j$.time.i.O(1868, 1, 1), "Meiji");
        d = a;
        e = new A[]{a, new A(0, j$.time.i.O(1912, 7, 30), "Taisho"), new A(1, j$.time.i.O(1926, 12, 25), "Showa"), new A(2, j$.time.i.O(1989, 1, 8), "Heisei"), new A(3, j$.time.i.O(2019, 5, 1), "Reiwa")};
    }

    private A(int i, j$.time.i iVar, String str) {
        this.a = i;
        this.b = iVar;
        this.c = str;
    }

    static long A() {
        long f = j$.time.temporal.a.DAY_OF_YEAR.k().f();
        for (A a : e) {
            f = Math.min(f, ((a.b.M() ? 366 : 365) - a.b.I()) + 1);
            if (a.s() != null) {
                f = Math.min(f, a.s().b.I() - 1);
            }
        }
        return f;
    }

    static long D() {
        int K = (999999999 - m().b.K()) + 1;
        A[] aArr = e;
        int K2 = aArr[0].b.K();
        for (int i = 1; i < aArr.length; i++) {
            A a = aArr[i];
            K = Math.min(K, (a.b.K() - K2) + 1);
            K2 = a.b.K();
        }
        return K;
    }

    static A h(j$.time.i iVar) {
        A a;
        if (iVar.L(z.d)) {
            throw new j$.time.d("JapaneseDate before Meiji 6 are not supported");
        }
        A[] aArr = e;
        int length = aArr.length;
        do {
            length--;
            if (length < 0) {
                return null;
            }
            a = aArr[length];
        } while (iVar.compareTo(a.b) < 0);
        return a;
    }

    static A m() {
        return e[r0.length - 1];
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static A t(int i) {
        int i2 = (i + 2) - 1;
        if (i2 >= 0) {
            A[] aArr = e;
            if (i2 < aArr.length) {
                return aArr[i2];
            }
        }
        throw new j$.time.d("Invalid era: " + i);
    }

    private Object writeReplace() {
        return new G((byte) 5, this);
    }

    final void E(DataOutput dataOutput) {
        dataOutput.writeByte(this.a);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ boolean e(j$.time.temporal.r rVar) {
        return AbstractC2962b.k(this, rVar);
    }

    @Override // j$.time.chrono.o
    public final int getValue() {
        return this.a;
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.r rVar) {
        return AbstractC2962b.h(this, (j$.time.temporal.a) rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        return rVar == aVar ? x.d.n(aVar) : j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return AbstractC2962b.c(this, mVar);
    }

    final j$.time.i p() {
        return this.b;
    }

    final A s() {
        if (this == m()) {
            return null;
        }
        return t(this.a + 1);
    }

    public final String toString() {
        return this.c;
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ long v(j$.time.temporal.r rVar) {
        return AbstractC2962b.i(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object y(j$.time.temporal.t tVar) {
        return AbstractC2962b.o(this, tVar);
    }
}
