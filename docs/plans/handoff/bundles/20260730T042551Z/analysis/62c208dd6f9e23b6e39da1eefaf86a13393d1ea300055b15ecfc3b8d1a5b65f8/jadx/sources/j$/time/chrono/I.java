package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class I extends AbstractC2961a implements Serializable {
    public static final I d = new I();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        hashMap.put("en", new String[]{"BB", "BE"});
        hashMap.put("th", new String[]{"BB", "BE"});
        hashMap2.put("en", new String[]{"B.B.", "B.E."});
        hashMap2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        hashMap3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        hashMap3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private I() {
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
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.n
    public final String m() {
        return "buddhist";
    }

    public final j$.time.temporal.w n(j$.time.temporal.a aVar) {
        j$.time.temporal.w k;
        long e;
        long j;
        int i = H.a[aVar.ordinal()];
        if (i != 1) {
            j = 543;
            if (i == 2) {
                j$.time.temporal.w k2 = j$.time.temporal.a.YEAR.k();
                return j$.time.temporal.w.k((-(k2.e() + 543)) + 1, k2.d() + 543);
            }
            if (i != 3) {
                return aVar.k();
            }
            k = j$.time.temporal.a.YEAR.k();
            e = k.e();
        } else {
            k = j$.time.temporal.a.PROLEPTIC_MONTH.k();
            e = k.e();
            j = 6516;
        }
        return j$.time.temporal.w.j(e + j, k.d() + j);
    }

    @Override // j$.time.chrono.n
    public final o p(int i) {
        if (i == 0) {
            return L.BEFORE_BE;
        }
        if (i == 1) {
            return L.BE;
        }
        throw new j$.time.d("Invalid era: " + i);
    }

    @Override // j$.time.chrono.n
    public final InterfaceC2963c s(j$.time.temporal.n nVar) {
        return nVar instanceof K ? (K) nVar : new K(j$.time.i.F(nVar));
    }

    @Override // j$.time.chrono.AbstractC2961a, j$.time.chrono.n
    public final InterfaceC2966f t(LocalDateTime localDateTime) {
        return super.t(localDateTime);
    }

    Object writeReplace() {
        return new G((byte) 1, this);
    }
}
