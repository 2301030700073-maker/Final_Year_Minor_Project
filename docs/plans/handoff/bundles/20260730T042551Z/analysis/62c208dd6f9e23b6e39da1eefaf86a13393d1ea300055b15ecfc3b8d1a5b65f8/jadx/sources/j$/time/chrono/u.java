package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class u extends AbstractC2961a implements Serializable {
    public static final u d = new u();
    private static final long serialVersionUID = -1440403870442975015L;

    private u() {
    }

    public static boolean n(long j) {
        return (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.n
    public final InterfaceC2971k A(Instant instant, j$.time.y yVar) {
        return j$.time.B.E(instant, yVar);
    }

    @Override // j$.time.chrono.n
    public final String h() {
        return "ISO";
    }

    @Override // j$.time.chrono.n
    public final String m() {
        return "iso8601";
    }

    @Override // j$.time.chrono.n
    public final o p(int i) {
        if (i == 0) {
            return v.BCE;
        }
        if (i == 1) {
            return v.CE;
        }
        throw new j$.time.d("Invalid era: " + i);
    }

    @Override // j$.time.chrono.n
    public final InterfaceC2963c s(j$.time.temporal.n nVar) {
        return j$.time.i.F(nVar);
    }

    @Override // j$.time.chrono.AbstractC2961a, j$.time.chrono.n
    public final InterfaceC2966f t(LocalDateTime localDateTime) {
        return LocalDateTime.E(localDateTime);
    }

    Object writeReplace() {
        return new G((byte) 1, this);
    }
}
