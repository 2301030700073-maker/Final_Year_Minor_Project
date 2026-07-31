package j$.time.zone;

import j$.nio.file.m;
import j$.time.ZoneOffset;
import j$.time.k;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;
    public final k a;
    public final byte b;
    public final j$.time.c c;
    public final j$.time.i d;
    public final boolean e;
    public final d f;
    public final ZoneOffset g;
    public final ZoneOffset h;
    public final ZoneOffset i;

    public e(k kVar, int i, j$.time.c cVar, j$.time.i iVar, boolean z, d dVar, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.a = kVar;
        this.b = (byte) i;
        this.c = cVar;
        this.d = iVar;
        this.e = z;
        this.f = dVar;
        this.g = zoneOffset;
        this.h = zoneOffset2;
        this.i = zoneOffset3;
    }

    public static e a(DataInput dataInput) {
        k kVar;
        e eVar;
        j$.time.i iVar;
        int readInt = dataInput.readInt();
        k c0 = k.c0(readInt >>> 28);
        int i = ((264241152 & readInt) >>> 22) - 32;
        int i2 = (3670016 & readInt) >>> 19;
        j$.time.c Z = i2 == 0 ? null : j$.time.c.Z(i2);
        int i3 = (507904 & readInt) >>> 14;
        d dVar = d.values()[(readInt & 12288) >>> 12];
        int i4 = (readInt & 4080) >>> 4;
        int i5 = (readInt & 12) >>> 2;
        int i6 = readInt & 3;
        if (i3 == 31) {
            long readInt2 = dataInput.readInt();
            j$.time.i iVar2 = j$.time.i.e;
            j$.time.temporal.a.SECOND_OF_DAY.M(readInt2);
            int i7 = (int) (readInt2 / 3600);
            kVar = c0;
            eVar = null;
            long j = readInt2 - (i7 * 3600);
            iVar = j$.time.i.a0(i7, (int) (j / 60), (int) (j - (r2 * 60)), 0);
        } else {
            kVar = c0;
            eVar = null;
            int i8 = i3 % 24;
            j$.time.i iVar3 = j$.time.i.e;
            j$.time.temporal.a.HOUR_OF_DAY.M(i8);
            iVar = j$.time.i.h[i8];
        }
        ZoneOffset i0 = i4 == 255 ? ZoneOffset.i0(dataInput.readInt()) : ZoneOffset.i0((i4 - 128) * 900);
        ZoneOffset i02 = i5 == 3 ? ZoneOffset.i0(dataInput.readInt()) : ZoneOffset.i0((i5 * 1800) + i0.b);
        ZoneOffset i03 = ZoneOffset.i0(i6 == 3 ? dataInput.readInt() : (i6 * 1800) + i0.b);
        boolean z = i3 == 24;
        k kVar2 = kVar;
        Objects.requireNonNull(kVar2, "month");
        Objects.requireNonNull(iVar, "time");
        Objects.requireNonNull(dVar, "timeDefnition");
        Objects.requireNonNull(i0, "standardOffset");
        Objects.requireNonNull(i02, "offsetBefore");
        Objects.requireNonNull(i03, "offsetAfter");
        if (i < -28 || i > 31 || i == 0) {
            m.c("Day of month indicator must be between -28 and 31 inclusive excluding zero");
            return eVar;
        }
        if (z && !iVar.equals(j$.time.i.g)) {
            m.c("Time must be midnight when end of day flag is true");
            return eVar;
        }
        if (iVar.d == 0) {
            return new e(kVar2, i, Z, iVar, z, dVar, i0, i02, i03);
        }
        m.c("Time's nano-of-second must be zero");
        return eVar;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    public final void b(DataOutput dataOutput) {
        int m0 = this.e ? 86400 : this.d.m0();
        int i = this.g.b;
        int i2 = this.h.b - i;
        int i3 = this.i.b - i;
        byte b = m0 % 3600 == 0 ? this.e ? (byte) 24 : this.d.a : (byte) 31;
        int i4 = i % 900 == 0 ? (i / 900) + 128 : 255;
        int i5 = (i2 == 0 || i2 == 1800 || i2 == 3600) ? i2 / 1800 : 3;
        int i6 = (i3 == 0 || i3 == 1800 || i3 == 3600) ? i3 / 1800 : 3;
        j$.time.c cVar = this.c;
        dataOutput.writeInt((this.a.getValue() << 28) + ((this.b + 32) << 22) + ((cVar == null ? 0 : cVar.getValue()) << 19) + (b << 14) + (this.f.ordinal() << 12) + (i4 << 4) + (i5 << 2) + i6);
        if (b == 31) {
            dataOutput.writeInt(m0);
        }
        if (i4 == 255) {
            dataOutput.writeInt(i);
        }
        if (i5 == 3) {
            dataOutput.writeInt(this.h.b);
        }
        if (i6 == 3) {
            dataOutput.writeInt(this.i.b);
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
        int m0 = ((this.d.m0() + (this.e ? 1 : 0)) << 15) + (this.a.ordinal() << 11) + ((this.b + 32) << 5);
        j$.time.c cVar = this.c;
        return this.i.b ^ ((this.g.b ^ (this.f.ordinal() + (m0 + ((cVar == null ? 7 : cVar.ordinal()) << 2)))) ^ this.h.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.i.b - this.h.b > 0 ? "Gap " : "Overlap ");
        sb.append(this.h);
        sb.append(" to ");
        sb.append(this.i);
        sb.append(", ");
        j$.time.c cVar = this.c;
        if (cVar != null) {
            byte b = this.b;
            if (b == -1) {
                sb.append(cVar.name());
                sb.append(" on or before last day of ");
                sb.append(this.a.name());
            } else if (b < 0) {
                sb.append(cVar.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.b) - 1);
                sb.append(" of ");
                sb.append(this.a.name());
            } else {
                sb.append(cVar.name());
                sb.append(" on or after ");
                sb.append(this.a.name());
                sb.append(' ');
                sb.append((int) this.b);
            }
        } else {
            sb.append(this.a.name());
            sb.append(' ');
            sb.append((int) this.b);
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
