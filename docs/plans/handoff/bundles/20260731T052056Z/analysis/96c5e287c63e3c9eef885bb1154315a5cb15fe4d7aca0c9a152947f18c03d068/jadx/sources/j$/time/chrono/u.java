package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class u extends c {
    public static final LocalDate d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    public final transient LocalDate a;
    public final transient v b;
    public final transient int c;

    public u(LocalDate localDate) {
        if (localDate.isBefore(d)) {
            j$.time.h.k("JapaneseDate before Meiji 6 is not supported");
            throw null;
        }
        v u = v.u(localDate);
        this.b = u;
        this.c = (localDate.getYear() - u.b.getYear()) + 1;
        this.a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new b0((byte) 4, this);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final u a(long j, j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return (u) super.a(j, nVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        if (q(aVar) == j) {
            return this;
        }
        int[] iArr = t.a;
        int i = iArr[aVar.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            s sVar = s.c;
            int a = sVar.x(aVar).a(j, aVar);
            int i2 = iArr[aVar.ordinal()];
            if (i2 == 3) {
                return C(this.a.K(sVar.w(this.b, a)));
            }
            if (i2 == 8) {
                return C(this.a.K(sVar.w(v.w(a), this.c)));
            }
            if (i2 == 9) {
                return C(this.a.K(a));
            }
        }
        return C(this.a.a(j, nVar));
    }

    public final u B(j$.time.f fVar) {
        return (u) super.n(fVar);
    }

    public final u C(LocalDate localDate) {
        return localDate.equals(this.a) ? this : new u(localDate);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate b(long j, TemporalUnit temporalUnit) {
        return (u) super.b(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        if (nVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || nVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || nVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || nVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return nVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) nVar).isDateBased() : nVar != null && nVar.f(this);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u) {
            return this.a.equals(((u) obj).a);
        }
        return false;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    /* renamed from: g */
    public final Temporal n(LocalDate localDate) {
        return (u) super.n(localDate);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final a getChronology() {
        return s.c;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final j getEra() {
        return this.b;
    }

    @Override // j$.time.chrono.c, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.q h(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.g(this);
        }
        if (!c(nVar)) {
            throw new j$.time.temporal.p(j$.time.d.a("Unsupported field: ", nVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) nVar;
        int i = t.a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.q.f(1L, this.a.lengthOfMonth());
        }
        if (i == 2) {
            return j$.time.temporal.q.f(1L, lengthOfYear());
        }
        if (i != 3) {
            return s.c.x(aVar);
        }
        int year = this.b.b.getYear();
        return this.b.v() != null ? j$.time.temporal.q.f(1L, (r5.b.getYear() - year) + 1) : j$.time.temporal.q.f(1L, 999999999 - year);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        s.c.getClass();
        return this.a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    /* renamed from: l */
    public final ChronoLocalDate o(long j, TemporalUnit temporalUnit) {
        return (u) super.o(j, temporalUnit);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final int lengthOfYear() {
        v v = this.b.v();
        int lengthOfYear = (v == null || v.b.getYear() != this.a.getYear()) ? this.a.lengthOfYear() : v.b.getDayOfYear() - 1;
        return this.c == 1 ? lengthOfYear - (this.b.b.getDayOfYear() - 1) : lengthOfYear;
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate n(TemporalAdjuster temporalAdjuster) {
        return (u) super.n(temporalAdjuster);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal o(long j, ChronoUnit chronoUnit) {
        return (u) super.o(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        if (!(nVar instanceof j$.time.temporal.a)) {
            return nVar.i(this);
        }
        switch (t.a[((j$.time.temporal.a) nVar).ordinal()]) {
            case 2:
                int i = this.c;
                LocalDate localDate = this.a;
                return i == 1 ? (localDate.getDayOfYear() - this.b.b.getDayOfYear()) + 1 : localDate.getDayOfYear();
            case 3:
                return this.c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new j$.time.temporal.p(j$.time.d.a("Unsupported field: ", nVar));
            case 8:
                return this.b.a;
            default:
                return this.a.q(nVar);
        }
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime r(LocalTime localTime) {
        return new e(this, localTime);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate t(j$.time.temporal.m mVar) {
        return (u) super.t(mVar);
    }

    @Override // j$.time.chrono.c, j$.time.chrono.ChronoLocalDate
    public final long toEpochDay() {
        return this.a.toEpochDay();
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate w(long j) {
        return C(this.a.plusDays(j));
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate x(long j) {
        return C(this.a.E(j));
    }

    @Override // j$.time.chrono.c
    public final ChronoLocalDate y(long j) {
        return C(this.a.G(j));
    }

    public final u z(long j, ChronoUnit chronoUnit) {
        return (u) super.b(j, (TemporalUnit) chronoUnit);
    }

    @Override // j$.time.chrono.c, j$.time.temporal.Temporal
    public final Temporal b(long j, TemporalUnit temporalUnit) {
        return (u) super.b(j, temporalUnit);
    }

    public u(v vVar, int i, LocalDate localDate) {
        if (!localDate.isBefore(d)) {
            this.b = vVar;
            this.c = i;
            this.a = localDate;
            return;
        }
        j$.time.h.k("JapaneseDate before Meiji 6 is not supported");
        throw null;
    }
}
