package j$.time;

import j$.time.chrono.AbstractC2962b;
import j$.time.format.DateTimeFormatter;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class Instant implements j$.time.temporal.m, j$.time.temporal.o, Comparable<Instant>, Serializable {
    public static final Instant c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;
    private final long a;
    private final int b;

    static {
        I(-31557014167219200L, 0L);
        I(31556889864403199L, 999999999L);
    }

    private Instant(long j, int i) {
        this.a = j;
        this.b = i;
    }

    private static Instant D(long j, int i) {
        if ((i | j) == 0) {
            return c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new d("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    public static Instant G() {
        C2960b.b.getClass();
        return H(System.currentTimeMillis());
    }

    public static Instant H(long j) {
        long j2 = 1000;
        return D(AbstractC2959a.h(j, j2), ((int) AbstractC2959a.g(j, j2)) * 1000000);
    }

    public static Instant I(long j, long j2) {
        return D(AbstractC2959a.d(j, AbstractC2959a.h(j2, 1000000000L)), (int) AbstractC2959a.g(j2, 1000000000L));
    }

    private Instant J(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return I(AbstractC2959a.d(AbstractC2959a.d(this.a, j), j2 / 1000000000), this.b + (j2 % 1000000000));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 2, this);
    }

    public final long E() {
        return this.a;
    }

    public final int F() {
        return this.b;
    }

    @Override // j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final Instant d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (Instant) uVar.i(this, j);
        }
        switch (g.b[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return J(0L, j);
            case 2:
                return J(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return J(j / 1000, (j % 1000) * 1000000);
            case 4:
                return J(j, 0L);
            case 5:
                return J(AbstractC2959a.i(j, 60), 0L);
            case 6:
                return J(AbstractC2959a.i(j, 3600), 0L);
            case 7:
                return J(AbstractC2959a.i(j, 43200), 0L);
            case 8:
                return J(AbstractC2959a.i(j, 86400), 0L);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    public final long L() {
        long i;
        int i2;
        int i3 = this.b;
        long j = this.a;
        if (j >= 0 || i3 <= 0) {
            i = AbstractC2959a.i(j, 1000);
            i2 = i3 / 1000000;
        } else {
            i = AbstractC2959a.i(j + 1, 1000);
            i2 = (i3 / 1000000) - 1000;
        }
        return AbstractC2959a.d(i, i2);
    }

    final void M(DataOutput dataOutput) {
        dataOutput.writeLong(this.a);
        dataOutput.writeInt(this.b);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.E(this, zoneOffset);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        if (r7 != r4) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0043, code lost:
    
        if (r7 != r4) goto L26;
     */
    @Override // j$.time.temporal.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.temporal.m c(long r6, j$.time.temporal.r r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof j$.time.temporal.a
            if (r0 == 0) goto L53
            r0 = r8
            j$.time.temporal.a r0 = (j$.time.temporal.a) r0
            r0.y(r6)
            int[] r1 = j$.time.g.a
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            long r2 = r5.a
            int r4 = r5.b
            if (r0 == r1) goto L46
            r1 = 2
            if (r0 == r1) goto L40
            r1 = 3
            if (r0 == r1) goto L37
            r1 = 4
            if (r0 != r1) goto L2b
            int r8 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r8 == 0) goto L51
            j$.time.Instant r6 = D(r6, r4)
            goto L59
        L2b:
            j$.time.temporal.v r6 = new j$.time.temporal.v
            java.lang.String r7 = "Unsupported field: "
            java.lang.String r7 = j$.time.e.a(r7, r8)
            r6.<init>(r7)
            throw r6
        L37:
            int r7 = (int) r6
            r6 = 1000000(0xf4240, float:1.401298E-39)
            int r7 = r7 * r6
            if (r7 == r4) goto L51
            goto L4c
        L40:
            int r7 = (int) r6
            int r7 = r7 * 1000
            if (r7 == r4) goto L51
            goto L4c
        L46:
            long r0 = (long) r4
            int r8 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r8 == 0) goto L51
            int r7 = (int) r6
        L4c:
            j$.time.Instant r6 = D(r2, r7)
            goto L59
        L51:
            r6 = r5
            goto L59
        L53:
            j$.time.temporal.m r6 = r8.r(r5, r6)
            j$.time.Instant r6 = (j$.time.Instant) r6
        L59:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.Instant.c(long, j$.time.temporal.r):j$.time.temporal.m");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int compare = Long.compare(this.a, instant2.a);
        return compare != 0 ? compare : this.b - instant2.b;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.NANO_OF_SECOND || rVar == j$.time.temporal.a.MICRO_OF_SECOND || rVar == j$.time.temporal.a.MILLI_OF_SECOND : rVar != null && rVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Instant)) {
            return false;
        }
        Instant instant = (Instant) obj;
        return this.a == instant.a && this.b == instant.b;
    }

    public final int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.q.d(this, rVar).a(rVar.n(this), rVar);
        }
        int i = g.a[((j$.time.temporal.a) rVar).ordinal()];
        int i2 = this.b;
        if (i == 1) {
            return i2;
        }
        if (i == 2) {
            return i2 / 1000;
        }
        if (i == 3) {
            return i2 / 1000000;
        }
        if (i == 4) {
            j$.time.temporal.a.INSTANT_SECONDS.v(this.a);
        }
        throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(i iVar) {
        return (Instant) AbstractC2962b.a(iVar, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        return j$.time.temporal.q.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return mVar.c(this.a, j$.time.temporal.a.INSTANT_SECONDS).c(this.b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        return DateTimeFormatter.f.a(this);
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        int i;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i2 = g.a[((j$.time.temporal.a) rVar).ordinal()];
        int i3 = this.b;
        if (i2 == 1) {
            return i3;
        }
        if (i2 == 2) {
            i = i3 / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.a;
                }
                throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
            }
            i = i3 / 1000000;
        }
        return i;
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.q.i()) {
            return j$.time.temporal.b.NANOS;
        }
        if (tVar == j$.time.temporal.q.e() || tVar == j$.time.temporal.q.k() || tVar == j$.time.temporal.q.j() || tVar == j$.time.temporal.q.h() || tVar == j$.time.temporal.q.f() || tVar == j$.time.temporal.q.g()) {
            return null;
        }
        return tVar.a(this);
    }
}
