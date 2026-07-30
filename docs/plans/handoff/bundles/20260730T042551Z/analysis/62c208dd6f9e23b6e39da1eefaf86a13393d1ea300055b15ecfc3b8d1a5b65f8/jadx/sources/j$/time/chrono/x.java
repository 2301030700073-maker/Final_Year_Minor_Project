package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class x extends AbstractC2961a implements Serializable {
    public static final x d = new x();
    private static final long serialVersionUID = 459996390165777884L;

    private x() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.n
    public final InterfaceC2971k A(Instant instant, j$.time.y yVar) {
        return m.G(this, instant, yVar);
    }

    @Override // j$.time.chrono.n
    public final String h() {
        return "Japanese";
    }

    @Override // j$.time.chrono.n
    public final String m() {
        return "japanese";
    }

    public final j$.time.temporal.w n(j$.time.temporal.a aVar) {
        long K;
        long j;
        switch (w.a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new j$.time.temporal.v("Unsupported field: " + aVar);
            case 5:
                return j$.time.temporal.w.k(A.D(), 999999999 - A.m().p().K());
            case 6:
                return j$.time.temporal.w.k(A.A(), j$.time.temporal.a.DAY_OF_YEAR.k().d());
            case 7:
                K = z.d.K();
                j = 999999999;
                break;
            case 8:
                K = A.d.getValue();
                j = A.m().getValue();
                break;
            default:
                return aVar.k();
        }
        return j$.time.temporal.w.j(K, j);
    }

    @Override // j$.time.chrono.n
    public final o p(int i) {
        return A.t(i);
    }

    @Override // j$.time.chrono.n
    public final InterfaceC2963c s(j$.time.temporal.n nVar) {
        return nVar instanceof z ? (z) nVar : new z(j$.time.i.F(nVar));
    }

    @Override // j$.time.chrono.AbstractC2961a, j$.time.chrono.n
    public final InterfaceC2966f t(LocalDateTime localDateTime) {
        return super.t(localDateTime);
    }

    Object writeReplace() {
        return new G((byte) 1, this);
    }
}
