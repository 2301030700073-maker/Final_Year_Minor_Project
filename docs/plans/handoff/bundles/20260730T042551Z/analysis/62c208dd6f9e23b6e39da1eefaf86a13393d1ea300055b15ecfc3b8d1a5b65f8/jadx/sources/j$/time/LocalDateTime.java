package j$.time;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.chrono.AbstractC2962b;
import j$.time.chrono.InterfaceC2963c;
import j$.time.chrono.InterfaceC2966f;
import j$.time.chrono.InterfaceC2971k;
import j$.time.format.DateTimeFormatter;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class LocalDateTime implements j$.time.temporal.m, j$.time.temporal.o, InterfaceC2966f, Serializable {
    public static final LocalDateTime c = L(i.d, l.e);
    public static final LocalDateTime d = L(i.e, l.f);
    private static final long serialVersionUID = 6207766400415563566L;
    private final i a;
    private final l b;

    private LocalDateTime(i iVar, l lVar) {
        this.a = iVar;
        this.b = lVar;
    }

    private int D(LocalDateTime localDateTime) {
        int D = this.a.D(localDateTime.a);
        return D == 0 ? this.b.compareTo(localDateTime.b) : D;
    }

    public static LocalDateTime E(j$.time.temporal.n nVar) {
        if (nVar instanceof LocalDateTime) {
            return (LocalDateTime) nVar;
        }
        if (nVar instanceof B) {
            return ((B) nVar).J();
        }
        if (nVar instanceof OffsetDateTime) {
            return ((OffsetDateTime) nVar).toLocalDateTime();
        }
        try {
            return new LocalDateTime(i.F(nVar), l.F(nVar));
        } catch (d e) {
            throw new d("Unable to obtain LocalDateTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName(), e);
        }
    }

    public static LocalDateTime K(int i) {
        return new LocalDateTime(i.O(i, 12, 31), l.K(0));
    }

    public static LocalDateTime L(i iVar, l lVar) {
        Objects.requireNonNull(iVar, "date");
        Objects.requireNonNull(lVar, "time");
        return new LocalDateTime(iVar, lVar);
    }

    public static LocalDateTime M(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.y(j2);
        return new LocalDateTime(i.Q(AbstractC2959a.h(j + zoneOffset.J(), 86400)), l.L((((int) AbstractC2959a.g(r5, r7)) * 1000000000) + j2));
    }

    private LocalDateTime P(i iVar, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        l lVar = this.b;
        if (j5 == 0) {
            return T(iVar, lVar);
        }
        long j6 = j / 24;
        long j7 = j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long j8 = 1;
        long j9 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long T = lVar.T();
        long j10 = (j9 * j8) + T;
        long h = AbstractC2959a.h(j10, 86400000000000L) + (j7 * j8);
        long g = AbstractC2959a.g(j10, 86400000000000L);
        if (g != T) {
            lVar = l.L(g);
        }
        return T(iVar.S(h), lVar);
    }

    private LocalDateTime T(i iVar, l lVar) {
        return (this.a == iVar && this.b == lVar) ? this : new LocalDateTime(iVar, lVar);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 5, this);
    }

    public final int F() {
        return this.b.I();
    }

    public final int G() {
        return this.b.J();
    }

    public final int H() {
        return this.a.K();
    }

    public final boolean I(LocalDateTime localDateTime) {
        if (localDateTime instanceof LocalDateTime) {
            return D(localDateTime) > 0;
        }
        long w = this.a.w();
        long w2 = localDateTime.a.w();
        if (w <= w2) {
            return w == w2 && this.b.T() > localDateTime.b.T();
        }
        return true;
    }

    public final boolean J(LocalDateTime localDateTime) {
        if (localDateTime instanceof LocalDateTime) {
            return D(localDateTime) < 0;
        }
        long w = this.a.w();
        long w2 = localDateTime.a.w();
        if (w >= w2) {
            return w == w2 && this.b.T() < localDateTime.b.T();
        }
        return true;
    }

    @Override // j$.time.temporal.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (LocalDateTime) uVar.i(this, j);
        }
        int i = j.a[((j$.time.temporal.b) uVar).ordinal()];
        l lVar = this.b;
        i iVar = this.a;
        switch (i) {
            case 1:
                return P(this.a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime T = T(iVar.S(j / 86400000000L), lVar);
                return T.P(T.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime T2 = T(iVar.S(j / 86400000), lVar);
                return T2.P(T2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return O(j);
            case 5:
                return P(this.a, 0L, j, 0L, 0L);
            case 6:
                return P(this.a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime T3 = T(iVar.S(j / 256), lVar);
                return T3.P(T3.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return T(iVar.d(j, uVar), lVar);
        }
    }

    public final LocalDateTime O(long j) {
        return P(this.a, 0L, 0L, j, 0L);
    }

    public final i Q() {
        return this.a;
    }

    @Override // j$.time.temporal.m
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (LocalDateTime) rVar.r(this, j);
        }
        boolean isTimeBased = ((j$.time.temporal.a) rVar).isTimeBased();
        l lVar = this.b;
        i iVar = this.a;
        return isTimeBased ? T(iVar, lVar.c(j, rVar)) : T(iVar.c(j, rVar), lVar);
    }

    @Override // j$.time.temporal.m
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime j(i iVar) {
        return T(iVar, this.b);
    }

    final void U(DataOutput dataOutput) {
        this.a.a0(dataOutput);
        this.b.X(dataOutput);
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final j$.time.chrono.n a() {
        return ((i) f()).a();
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final l b() {
        return this.b;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar != null && rVar.i(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        return aVar.isDateBased() || aVar.isTimeBased();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalDateTime)) {
            return false;
        }
        LocalDateTime localDateTime = (LocalDateTime) obj;
        return this.a.equals(localDateTime.a) && this.b.equals(localDateTime.b);
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final InterfaceC2963c f() {
        return this.a;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.a(this);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) rVar).isTimeBased() ? this.b.i(rVar) : this.a.i(rVar) : j$.time.temporal.q.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.j(this);
        }
        if (!((j$.time.temporal.a) rVar).isTimeBased()) {
            return this.a.k(rVar);
        }
        l lVar = this.b;
        lVar.getClass();
        return j$.time.temporal.q.d(lVar, rVar);
    }

    @Override // j$.time.chrono.InterfaceC2966f
    public final InterfaceC2971k l(ZoneOffset zoneOffset) {
        return B.F(this, zoneOffset, null);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return AbstractC2962b.b(this, mVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        return this.a.toString() + RequestConfiguration.MAX_AD_CONTENT_RATING_T + this.b.toString();
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) rVar).isTimeBased() ? this.b.v(rVar) : this.a.v(rVar) : rVar.n(this);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.f() ? this.a : AbstractC2962b.m(this, tVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC2966f interfaceC2966f) {
        return interfaceC2966f instanceof LocalDateTime ? D((LocalDateTime) interfaceC2966f) : AbstractC2962b.e(this, interfaceC2966f);
    }
}
