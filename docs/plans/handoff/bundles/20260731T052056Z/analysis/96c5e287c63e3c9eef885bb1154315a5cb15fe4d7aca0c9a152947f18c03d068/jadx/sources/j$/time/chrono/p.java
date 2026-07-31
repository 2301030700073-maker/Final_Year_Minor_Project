package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.Month;
import j$.time.Year;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class p extends a implements Serializable {
    public static final p c = new p();
    private static final long serialVersionUID = -1440403870442975015L;

    private p() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate A(Map map, j$.time.format.e0 e0Var) {
        return (LocalDate) super.A(map, e0Var);
    }

    @Override // j$.time.chrono.a
    public final void B(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.o(l.longValue());
            }
            a.f(map, j$.time.temporal.a.MONTH_OF_YEAR, ((int) j$.time.a.S(l.longValue(), 12L)) + 1);
            a.f(map, j$.time.temporal.a.YEAR, j$.time.a.T(l.longValue(), 12L));
        }
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate C(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a = aVar.b.a(((Long) map.remove(aVar)).longValue(), aVar);
        boolean z = true;
        if (e0Var == j$.time.format.e0.LENIENT) {
            return LocalDate.of(a, 1, 1).E(j$.time.a.V(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L)).plusDays(j$.time.a.V(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L));
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a2 = aVar2.b.a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a3 = aVar3.b.a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e0Var == j$.time.format.e0.SMART) {
            if (a2 == 4 || a2 == 6 || a2 == 9 || a2 == 11) {
                a3 = Math.min(a3, 30);
            } else if (a2 == 2) {
                Month month = Month.FEBRUARY;
                long j = a;
                int i = Year.b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                a3 = Math.min(a3, month.v(z));
            }
        }
        return LocalDate.of(a, a2, a3);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate D(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.o(l.longValue());
            }
            Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
            if (l2 == null) {
                j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
                Long l3 = (Long) map.get(aVar2);
                if (e0Var != j$.time.format.e0.STRICT) {
                    a.f(map, aVar2, (l3 == null || l3.longValue() > 0) ? l.longValue() : j$.time.a.V(1L, l.longValue()));
                } else if (l3 != null) {
                    long longValue = l3.longValue();
                    long longValue2 = l.longValue();
                    if (longValue <= 0) {
                        longValue2 = j$.time.a.V(1L, longValue2);
                    }
                    a.f(map, aVar2, longValue2);
                } else {
                    map.put(aVar, l);
                }
            } else if (l2.longValue() == 1) {
                a.f(map, j$.time.temporal.a.YEAR, l.longValue());
            } else {
                if (l2.longValue() != 0) {
                    j$.time.h.j(l2, "Invalid value for era: ");
                    return null;
                }
                a.f(map, j$.time.temporal.a.YEAR, j$.time.a.V(1L, l.longValue()));
            }
        } else {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.ERA;
            if (map.containsKey(aVar3)) {
                aVar3.o(((Long) map.get(aVar3)).longValue());
            }
        }
        return null;
    }

    @Override // j$.time.chrono.a
    public final ChronoZonedDateTime E(Instant instant, ZoneId zoneId) {
        return ZonedDateTime.v(instant, zoneId);
    }

    @Override // j$.time.chrono.a
    public final ChronoZonedDateTime F(TemporalAccessor temporalAccessor) {
        return ZonedDateTime.u(temporalAccessor);
    }

    @Override // j$.time.chrono.a
    public final List eras() {
        return j$.time.a.Q(q.values());
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate g(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3);
    }

    @Override // j$.time.chrono.a
    public final String getCalendarType() {
        return "iso8601";
    }

    @Override // j$.time.chrono.a
    public final String getId() {
        return "ISO";
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate h(TemporalAccessor temporalAccessor) {
        return LocalDate.w(temporalAccessor);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate i(long j) {
        return LocalDate.ofEpochDay(j);
    }

    @Override // j$.time.chrono.a
    public final boolean isLeapYear(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate k() {
        j$.time.b X = j$.time.a.X();
        Objects.requireNonNull(X, "clock");
        return LocalDate.w(LocalDate.B(X));
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate o(int i, int i2) {
        return LocalDate.C(i, i2);
    }

    @Override // j$.time.chrono.a
    public final j q(int i) {
        if (i == 0) {
            return q.BCE;
        }
        if (i == 1) {
            return q.CE;
        }
        j$.time.h.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDateTime u(TemporalAccessor temporalAccessor) {
        return LocalDateTime.v(temporalAccessor);
    }

    @Override // j$.time.chrono.a
    public final int w(j jVar, int i) {
        if (jVar instanceof q) {
            return jVar == q.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    public Object writeReplace() {
        return new b0((byte) 1, this);
    }

    @Override // j$.time.chrono.a
    public final j$.time.temporal.q x(j$.time.temporal.a aVar) {
        return aVar.b;
    }
}
