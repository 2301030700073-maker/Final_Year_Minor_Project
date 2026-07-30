package j$.time;

import j$.time.chrono.AbstractC2961a;
import j$.time.chrono.AbstractC2962b;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class x implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = 4183400860270640070L;
    private final int a;
    private final int b;

    static {
        j$.time.format.p pVar = new j$.time.format.p();
        pVar.j(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.w.EXCEEDS_PAD);
        pVar.e('-');
        pVar.l(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        pVar.v();
    }

    private x(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    static x G(DataInput dataInput) {
        int readInt = dataInput.readInt();
        byte readByte = dataInput.readByte();
        j$.time.temporal.a.YEAR.y(readInt);
        j$.time.temporal.a.MONTH_OF_YEAR.y(readByte);
        return new x(readInt, readByte);
    }

    private x H(int i, int i2) {
        return (this.a == i && this.b == i2) ? this : new x(i, i2);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 12, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final x d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (x) uVar.i(this, j);
        }
        switch (w.b[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return E(j);
            case 2:
                return F(j);
            case 3:
                return F(AbstractC2959a.i(j, 10));
            case 4:
                return F(AbstractC2959a.i(j, 100));
            case 5:
                return F(AbstractC2959a.i(j, 1000));
            case 6:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(AbstractC2959a.d(v(aVar), j), aVar);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    public final x E(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        long j3 = 12;
        return H(j$.time.temporal.a.YEAR.v(AbstractC2959a.h(j2, j3)), ((int) AbstractC2959a.g(j2, j3)) + 1);
    }

    public final x F(long j) {
        return j == 0 ? this : H(j$.time.temporal.a.YEAR.v(this.a + j), this.b);
    }

    @Override // j$.time.temporal.m
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public final x c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (x) rVar.r(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.y(j);
        int i = w.a[aVar.ordinal()];
        int i2 = this.a;
        if (i == 1) {
            int i3 = (int) j;
            j$.time.temporal.a.MONTH_OF_YEAR.y(i3);
            return H(i2, i3);
        }
        int i4 = this.b;
        if (i == 2) {
            return E(j - (((i2 * 12) + i4) - 1));
        }
        if (i == 3) {
            if (i2 < 1) {
                j = 1 - j;
            }
            int i5 = (int) j;
            j$.time.temporal.a.YEAR.y(i5);
            return H(i5, i4);
        }
        if (i == 4) {
            int i6 = (int) j;
            j$.time.temporal.a.YEAR.y(i6);
            return H(i6, i4);
        }
        if (i != 5) {
            throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
        if (v(j$.time.temporal.a.ERA) == j) {
            return this;
        }
        int i7 = 1 - i2;
        j$.time.temporal.a.YEAR.y(i7);
        return H(i7, i4);
    }

    final void J(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
        dataOutput.writeByte(this.b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        x xVar = (x) obj;
        int i = this.a - xVar.a;
        return i == 0 ? this.b - xVar.b : i;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.YEAR || rVar == j$.time.temporal.a.MONTH_OF_YEAR || rVar == j$.time.temporal.a.PROLEPTIC_MONTH || rVar == j$.time.temporal.a.YEAR_OF_ERA || rVar == j$.time.temporal.a.ERA : rVar != null && rVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.a == xVar.a && this.b == xVar.b;
    }

    public final int hashCode() {
        return (this.b << 27) ^ this.a;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return k(rVar).a(v(rVar), rVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(i iVar) {
        return (x) AbstractC2962b.a(iVar, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.w.j(1L, this.a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        if (!((AbstractC2961a) AbstractC2962b.r(mVar)).equals(j$.time.chrono.u.d)) {
            throw new d("Adjustment only supported on ISO date-time");
        }
        return mVar.c(((this.a * 12) + this.b) - 1, j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        int i;
        int i2 = this.a;
        int abs = Math.abs(i2);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(i2);
        }
        int i3 = this.b;
        sb.append(i3 < 10 ? "-0" : "-");
        sb.append(i3);
        return sb.toString();
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = w.a[((j$.time.temporal.a) rVar).ordinal()];
        int i2 = this.b;
        if (i == 1) {
            return i2;
        }
        int i3 = this.a;
        if (i == 2) {
            return ((i3 * 12) + i2) - 1;
        }
        if (i == 3) {
            if (i3 < 1) {
                i3 = 1 - i3;
            }
            return i3;
        }
        if (i == 4) {
            return i3;
        }
        if (i == 5) {
            return i3 < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.e() ? j$.time.chrono.u.d : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.MONTHS : j$.time.temporal.q.c(this, tVar);
    }
}
