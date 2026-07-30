package j$.time;

import j$.time.chrono.AbstractC2961a;
import j$.time.chrono.AbstractC2962b;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class v implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;
    private final int a;

    static {
        j$.time.format.p pVar = new j$.time.format.p();
        pVar.j(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.w.EXCEEDS_PAD);
        pVar.v();
    }

    private v(int i) {
        this.a = i;
    }

    public static v D(int i) {
        j$.time.temporal.a.YEAR.y(i);
        return new v(i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 11, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public final v d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (v) uVar.i(this, j);
        }
        int i = u.b[((j$.time.temporal.b) uVar).ordinal()];
        if (i == 1) {
            return F(j);
        }
        if (i == 2) {
            return F(AbstractC2959a.i(j, 10));
        }
        if (i == 3) {
            return F(AbstractC2959a.i(j, 100));
        }
        if (i == 4) {
            return F(AbstractC2959a.i(j, 1000));
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return c(AbstractC2959a.d(v(aVar), j), aVar);
        }
        throw new j$.time.temporal.v("Unsupported unit: " + uVar);
    }

    public final v F(long j) {
        return j == 0 ? this : D(j$.time.temporal.a.YEAR.v(this.a + j));
    }

    @Override // j$.time.temporal.m
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public final v c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (v) rVar.r(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.y(j);
        int i = u.a[aVar.ordinal()];
        int i2 = this.a;
        if (i == 1) {
            if (i2 < 1) {
                j = 1 - j;
            }
            return D((int) j);
        }
        if (i == 2) {
            return D((int) j);
        }
        if (i == 3) {
            return v(j$.time.temporal.a.ERA) == j ? this : D(1 - i2);
        }
        throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
    }

    final void H(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a - ((v) obj).a;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.YEAR || rVar == j$.time.temporal.a.YEAR_OF_ERA || rVar == j$.time.temporal.a.ERA : rVar != null && rVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v) {
            return this.a == ((v) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return k(rVar).a(v(rVar), rVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(i iVar) {
        return (v) AbstractC2962b.a(iVar, this);
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
        return mVar.c(this.a, j$.time.temporal.a.YEAR);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        return Integer.toString(this.a);
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = u.a[((j$.time.temporal.a) rVar).ordinal()];
        int i2 = this.a;
        if (i == 1) {
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return i2;
        }
        if (i == 3) {
            return i2 < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.e() ? j$.time.chrono.u.d : tVar == j$.time.temporal.q.i() ? j$.time.temporal.b.YEARS : j$.time.temporal.q.c(this, tVar);
    }
}
