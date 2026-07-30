package j$.time.zone;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.u;
import j$.time.l;
import j$.time.n;
import j$.time.temporal.o;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;
    private final n a;
    private final byte b;
    private final j$.time.f c;
    private final l d;
    private final boolean e;
    private final d f;
    private final ZoneOffset g;
    private final ZoneOffset h;
    private final ZoneOffset i;

    e(n nVar, int i, j$.time.f fVar, l lVar, boolean z, d dVar, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.a = nVar;
        this.b = (byte) i;
        this.c = fVar;
        this.d = lVar;
        this.e = z;
        this.f = dVar;
        this.g = zoneOffset;
        this.h = zoneOffset2;
        this.i = zoneOffset3;
    }

    static e b(DataInput dataInput) {
        int readInt = dataInput.readInt();
        n G = n.G(readInt >>> 28);
        int i = ((264241152 & readInt) >>> 22) - 32;
        int i2 = (3670016 & readInt) >>> 19;
        j$.time.f D = i2 == 0 ? null : j$.time.f.D(i2);
        int i3 = (507904 & readInt) >>> 14;
        d dVar = d.values()[(readInt & 12288) >>> 12];
        int i4 = (readInt & 4080) >>> 4;
        int i5 = (readInt & 12) >>> 2;
        int i6 = readInt & 3;
        l M = i3 == 31 ? l.M(dataInput.readInt()) : l.K(i3 % 24);
        ZoneOffset M2 = ZoneOffset.M(i4 == 255 ? dataInput.readInt() : (i4 - 128) * 900);
        ZoneOffset M3 = i5 == 3 ? ZoneOffset.M(dataInput.readInt()) : ZoneOffset.M((i5 * 1800) + M2.J());
        ZoneOffset M4 = i6 == 3 ? ZoneOffset.M(dataInput.readInt()) : ZoneOffset.M((i6 * 1800) + M2.J());
        boolean z = i3 == 24;
        Objects.requireNonNull(G, "month");
        Objects.requireNonNull(M, "time");
        Objects.requireNonNull(dVar, "timeDefnition");
        Objects.requireNonNull(M2, "standardOffset");
        Objects.requireNonNull(M3, "offsetBefore");
        Objects.requireNonNull(M4, "offsetAfter");
        if (i < -28 || i > 31 || i == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !M.equals(l.g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (M.I() == 0) {
            return new e(G, i, D, M, z, dVar, M2, M3, M4);
        }
        throw new IllegalArgumentException("Time's nano-of-second must be zero");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    public final b a(int i) {
        j$.time.i P;
        o oVar;
        int J;
        ZoneOffset zoneOffset;
        j$.time.f fVar = this.c;
        n nVar = this.a;
        final int i2 = 1;
        byte b = this.b;
        if (b < 0) {
            u.d.getClass();
            P = j$.time.i.P(i, nVar, nVar.E(u.n(i)) + 1 + b);
            if (fVar != null) {
                final int value = fVar.getValue();
                oVar = new o() { // from class: j$.time.temporal.p
                    @Override // j$.time.temporal.o
                    public final m n(m mVar) {
                        int i3 = i2;
                        int i4 = value;
                        switch (i3) {
                            case 0:
                                int i5 = mVar.i(a.DAY_OF_WEEK);
                                if (i5 == i4) {
                                    return mVar;
                                }
                                return mVar.d(i5 - i4 >= 0 ? 7 - r0 : -r0, b.DAYS);
                            default:
                                int i6 = mVar.i(a.DAY_OF_WEEK);
                                if (i6 == i4) {
                                    return mVar;
                                }
                                return mVar.r(i4 - i6 >= 0 ? 7 - r1 : -r1, b.DAYS);
                        }
                    }
                };
                P = P.j(oVar);
            }
        } else {
            P = j$.time.i.P(i, nVar, b);
            if (fVar != null) {
                final int value2 = fVar.getValue();
                final int i3 = 0;
                oVar = new o() { // from class: j$.time.temporal.p
                    @Override // j$.time.temporal.o
                    public final m n(m mVar) {
                        int i32 = i3;
                        int i4 = value2;
                        switch (i32) {
                            case 0:
                                int i5 = mVar.i(a.DAY_OF_WEEK);
                                if (i5 == i4) {
                                    return mVar;
                                }
                                return mVar.d(i5 - i4 >= 0 ? 7 - r0 : -r0, b.DAYS);
                            default:
                                int i6 = mVar.i(a.DAY_OF_WEEK);
                                if (i6 == i4) {
                                    return mVar;
                                }
                                return mVar.r(i4 - i6 >= 0 ? 7 - r1 : -r1, b.DAYS);
                        }
                    }
                };
                P = P.j(oVar);
            }
        }
        if (this.e) {
            P = P.S(1L);
        }
        LocalDateTime L = LocalDateTime.L(P, this.d);
        d dVar = this.f;
        dVar.getClass();
        int i4 = c.a[dVar.ordinal()];
        ZoneOffset zoneOffset2 = this.h;
        if (i4 != 1) {
            if (i4 == 2) {
                J = zoneOffset2.J();
                zoneOffset = this.g;
            }
            return new b(L, zoneOffset2, this.i);
        }
        J = zoneOffset2.J();
        zoneOffset = ZoneOffset.UTC;
        L = L.O(J - zoneOffset.J());
        return new b(L, zoneOffset2, this.i);
    }

    final void c(DataOutput dataOutput) {
        l lVar = this.d;
        boolean z = this.e;
        int U = z ? 86400 : lVar.U();
        int J = this.g.J();
        ZoneOffset zoneOffset = this.h;
        int J2 = zoneOffset.J() - J;
        ZoneOffset zoneOffset2 = this.i;
        int J3 = zoneOffset2.J() - J;
        int H = U % 3600 == 0 ? z ? 24 : lVar.H() : 31;
        int i = J % 900 == 0 ? (J / 900) + 128 : 255;
        int i2 = (J2 == 0 || J2 == 1800 || J2 == 3600) ? J2 / 1800 : 3;
        int i3 = (J3 == 0 || J3 == 1800 || J3 == 3600) ? J3 / 1800 : 3;
        j$.time.f fVar = this.c;
        dataOutput.writeInt((this.a.getValue() << 28) + ((this.b + 32) << 22) + ((fVar == null ? 0 : fVar.getValue()) << 19) + (H << 14) + (this.f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (H == 31) {
            dataOutput.writeInt(U);
        }
        if (i == 255) {
            dataOutput.writeInt(J);
        }
        if (i2 == 3) {
            dataOutput.writeInt(zoneOffset.J());
        }
        if (i3 == 3) {
            dataOutput.writeInt(zoneOffset2.J());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.a == eVar.a && this.b == eVar.b && this.c == eVar.c && this.f == eVar.f && this.d.equals(eVar.d) && this.e == eVar.e && this.g.equals(eVar.g) && this.h.equals(eVar.h) && this.i.equals(eVar.i);
    }

    public final int hashCode() {
        int U = ((this.d.U() + (this.e ? 1 : 0)) << 15) + (this.a.ordinal() << 11) + ((this.b + 32) << 5);
        j$.time.f fVar = this.c;
        return ((this.g.hashCode() ^ (this.f.ordinal() + (U + ((fVar == null ? 7 : fVar.ordinal()) << 2)))) ^ this.h.hashCode()) ^ this.i.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        ZoneOffset zoneOffset = this.h;
        ZoneOffset zoneOffset2 = this.i;
        sb.append(zoneOffset.I(zoneOffset2) > 0 ? "Gap " : "Overlap ");
        sb.append(zoneOffset);
        sb.append(" to ");
        sb.append(zoneOffset2);
        sb.append(", ");
        byte b = this.b;
        n nVar = this.a;
        j$.time.f fVar = this.c;
        if (fVar == null) {
            sb.append(nVar.name());
            sb.append(' ');
            sb.append((int) b);
        } else if (b == -1) {
            sb.append(fVar.name());
            sb.append(" on or before last day of ");
            sb.append(nVar.name());
        } else if (b < 0) {
            sb.append(fVar.name());
            sb.append(" on or before last day minus ");
            sb.append((-b) - 1);
            sb.append(" of ");
            sb.append(nVar.name());
        } else {
            sb.append(fVar.name());
            sb.append(" on or after ");
            sb.append(nVar.name());
            sb.append(' ');
            sb.append((int) b);
        }
        sb.append(" at ");
        sb.append(this.e ? "24:00" : this.d.toString());
        sb.append(" ");
        sb.append(this.f);
        sb.append(", standard offset ");
        sb.append(this.g);
        sb.append(']');
        return sb.toString();
    }
}
