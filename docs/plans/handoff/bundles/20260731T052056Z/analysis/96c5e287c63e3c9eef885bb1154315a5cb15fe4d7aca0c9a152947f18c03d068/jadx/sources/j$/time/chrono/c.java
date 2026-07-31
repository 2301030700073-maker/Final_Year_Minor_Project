package j$.time.chrono;

import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class c implements ChronoLocalDate, Temporal, TemporalAdjuster, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    public static ChronoLocalDate u(a aVar, Temporal temporal) {
        ChronoLocalDate chronoLocalDate = (ChronoLocalDate) temporal;
        if (aVar.equals(chronoLocalDate.getChronology())) {
            return chronoLocalDate;
        }
        j$.time.h.f("Chronology mismatch, expected: ", aVar.getId(), chronoLocalDate.getChronology().getId());
        return null;
    }

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate a(long j, j$.time.temporal.n nVar) {
        if (nVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.p(j$.time.d.a("Unsupported field: ", nVar));
        }
        return u(getChronology(), nVar.k(this, j));
    }

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate b(long j, TemporalUnit temporalUnit) {
        boolean z = temporalUnit instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return u(getChronology(), temporalUnit.f(this, j));
            }
            j$.time.h.b(temporalUnit, "Unsupported unit: ");
            return null;
        }
        switch (b.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return w(j);
            case 2:
                return w(j$.time.a.U(j, 7L));
            case 3:
                return x(j);
            case 4:
                return y(j);
            case 5:
                return y(j$.time.a.U(j, 10L));
            case 6:
                return y(j$.time.a.U(j, 100L));
            case 7:
                return y(j$.time.a.U(j, 1000L));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return a(j$.time.a.P(q(aVar), j), (j$.time.temporal.n) aVar);
            default:
                j$.time.h.b(temporalUnit, "Unsupported unit: ");
                return null;
        }
    }

    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.TemporalAccessor
    public /* synthetic */ boolean c(j$.time.temporal.n nVar) {
        return j$.time.a.q(this, nVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final long d(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDate h = getChronology().h(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, h);
        }
        switch (b.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return h.toEpochDay() - toEpochDay();
            case 2:
                return (h.toEpochDay() - toEpochDay()) / 7;
            case 3:
                return v(h);
            case 4:
                return v(h) / 12;
            case 5:
                return v(h) / 120;
            case 6:
                return v(h) / 1200;
            case 7:
                return v(h) / 12000;
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return h.q(aVar) - q(aVar);
            default:
                j$.time.h.b(temporalUnit, "Unsupported unit: ");
                return 0L;
        }
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDate) && j$.time.a.e(this, (ChronoLocalDate) obj) == 0;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int f(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.a(this, nVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public j getEra() {
        return getChronology().q(j$.time.temporal.o.a(this, j$.time.temporal.a.ERA));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public /* synthetic */ j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.d(this, nVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public int hashCode() {
        long epochDay = toEpochDay();
        return getChronology().hashCode() ^ ((int) (epochDay ^ (epochDay >>> 32)));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object i(j$.time.f fVar) {
        return j$.time.a.s(this, fVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public boolean isLeapYear() {
        return getChronology().isLeapYear(q(j$.time.temporal.a.YEAR));
    }

    @Override // j$.time.temporal.TemporalAdjuster
    public final /* synthetic */ Temporal k(Temporal temporal) {
        return j$.time.a.a(this, temporal);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: l */
    public ChronoLocalDate o(long j, TemporalUnit temporalUnit) {
        return u(getChronology(), j$.time.temporal.o.b(this, j, temporalUnit));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public int lengthOfYear() {
        return isLeapYear() ? 366 : 365;
    }

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate n(TemporalAdjuster temporalAdjuster) {
        return u(getChronology(), temporalAdjuster.k(this));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public ChronoLocalDateTime r(LocalTime localTime) {
        return new e(this, localTime);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public ChronoLocalDate t(j$.time.temporal.m mVar) {
        return u(getChronology(), mVar.f(this));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public long toEpochDay() {
        return q(j$.time.temporal.a.EPOCH_DAY);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final String toString() {
        long q = q(j$.time.temporal.a.YEAR_OF_ERA);
        long q2 = q(j$.time.temporal.a.MONTH_OF_YEAR);
        long q3 = q(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(getChronology().toString());
        sb.append(" ");
        sb.append(getEra());
        sb.append(" ");
        sb.append(q);
        sb.append(q2 < 10 ? "-0" : "-");
        sb.append(q2);
        sb.append(q3 < 10 ? "-0" : "-");
        sb.append(q3);
        return sb.toString();
    }

    public final long v(ChronoLocalDate chronoLocalDate) {
        if (getChronology().x(j$.time.temporal.a.MONTH_OF_YEAR).d != 12) {
            throw new IllegalStateException("ChronoLocalDateImpl only supports Chronologies with 12 months per year");
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        long q = q(aVar) * 32;
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_MONTH;
        return (((chronoLocalDate.q(aVar) * 32) + chronoLocalDate.f(aVar2)) - (q + j$.time.temporal.o.a(this, aVar2))) / 32;
    }

    public abstract ChronoLocalDate w(long j);

    public abstract ChronoLocalDate x(long j);

    public abstract ChronoLocalDate y(long j);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoLocalDate chronoLocalDate) {
        return j$.time.a.e(this, chronoLocalDate);
    }
}
