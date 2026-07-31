package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.Month;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class q extends a implements Serializable {
    public static final q c = new q();
    private static final long serialVersionUID = -1440403870442975015L;

    private q() {
    }

    public static boolean U(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.j
    public final k A(int i) {
        if (i == 0) {
            return r.BCE;
        }
        if (i == 1) {
            return r.CE;
        }
        j$.nio.file.j.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.j
    public final int C(k kVar, int i) {
        if (kVar instanceof r) {
            return kVar == r.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // j$.time.chrono.a
    public final void F(Map map, j$.time.format.v vVar) {
        ChronoField chronoField = ChronoField.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(chronoField);
        if (l != null) {
            if (vVar != j$.time.format.v.LENIENT) {
                chronoField.L(l.longValue());
            }
            a.k(map, ChronoField.MONTH_OF_YEAR, ((int) j$.com.android.tools.r8.a.P(l.longValue(), 12L)) + 1);
            a.k(map, ChronoField.YEAR, j$.com.android.tools.r8.a.C(l.longValue(), 12L));
        }
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate H(TemporalAccessor temporalAccessor) {
        return LocalDate.W(temporalAccessor);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate J(Map map, j$.time.format.v vVar) {
        ChronoField chronoField = ChronoField.YEAR;
        int a = chronoField.b.a(((Long) map.remove(chronoField)).longValue(), chronoField);
        boolean z = true;
        if (vVar == j$.time.format.v.LENIENT) {
            return LocalDate.of(a, 1, 1).h0(j$.com.android.tools.r8.a.S(((Long) map.remove(ChronoField.MONTH_OF_YEAR)).longValue(), 1L)).g0(j$.com.android.tools.r8.a.S(((Long) map.remove(ChronoField.DAY_OF_MONTH)).longValue(), 1L));
        }
        ChronoField chronoField2 = ChronoField.MONTH_OF_YEAR;
        int a2 = chronoField2.b.a(((Long) map.remove(chronoField2)).longValue(), chronoField2);
        ChronoField chronoField3 = ChronoField.DAY_OF_MONTH;
        int a3 = chronoField3.b.a(((Long) map.remove(chronoField3)).longValue(), chronoField3);
        if (vVar == j$.time.format.v.SMART) {
            if (a2 == 4 || a2 == 6 || a2 == 9 || a2 == 11) {
                a3 = Math.min(a3, 30);
            } else if (a2 == 2) {
                Month month = Month.FEBRUARY;
                long j = a;
                int i = j$.time.r.b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                a3 = Math.min(a3, month.V(z));
            }
        }
        return LocalDate.of(a, a2, a3);
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate L(Map map, j$.time.format.v vVar) {
        ChronoField chronoField = ChronoField.YEAR_OF_ERA;
        Long l = (Long) map.remove(chronoField);
        if (l != null) {
            if (vVar != j$.time.format.v.LENIENT) {
                chronoField.L(l.longValue());
            }
            Long l2 = (Long) map.remove(ChronoField.ERA);
            if (l2 == null) {
                ChronoField chronoField2 = ChronoField.YEAR;
                Long l3 = (Long) map.get(chronoField2);
                if (vVar != j$.time.format.v.STRICT) {
                    a.k(map, chronoField2, (l3 == null || l3.longValue() > 0) ? l.longValue() : j$.com.android.tools.r8.a.S(1L, l.longValue()));
                } else if (l3 != null) {
                    long longValue = l3.longValue();
                    long longValue2 = l.longValue();
                    if (longValue <= 0) {
                        longValue2 = j$.com.android.tools.r8.a.S(1L, longValue2);
                    }
                    a.k(map, chronoField2, longValue2);
                } else {
                    map.put(chronoField, l);
                }
            } else if (l2.longValue() == 1) {
                a.k(map, ChronoField.YEAR, l.longValue());
            } else {
                if (l2.longValue() != 0) {
                    j$.nio.file.j.j(l2, "Invalid value for era: ");
                    return null;
                }
                a.k(map, ChronoField.YEAR, j$.com.android.tools.r8.a.S(1L, l.longValue()));
            }
        } else {
            ChronoField chronoField3 = ChronoField.ERA;
            if (map.containsKey(chronoField3)) {
                chronoField3.L(((Long) map.get(chronoField3)).longValue());
            }
        }
        return null;
    }

    @Override // j$.time.chrono.a, j$.time.chrono.j
    public final ChronoLocalDateTime M(TemporalAccessor temporalAccessor) {
        return LocalDateTime.V(temporalAccessor);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate P(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3);
    }

    @Override // j$.time.chrono.a, j$.time.chrono.j
    public final ChronoLocalDate R(Map map, j$.time.format.v vVar) {
        return (LocalDate) super.R(map, vVar);
    }

    @Override // j$.time.chrono.j
    public final ChronoZonedDateTime S(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return ZonedDateTime.u(instant.getEpochSecond(), instant.getNano(), zoneId);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate h(long j) {
        return LocalDate.ofEpochDay(j);
    }

    @Override // j$.time.chrono.j
    public final String i() {
        return "ISO";
    }

    @Override // j$.time.chrono.a
    public final ChronoLocalDate m() {
        j$.time.a aVar = new j$.time.a(ZoneId.systemDefault());
        Objects.requireNonNull(aVar, "clock");
        return LocalDate.W(LocalDate.d0(aVar));
    }

    @Override // j$.time.chrono.j
    public final String p() {
        return "iso8601";
    }

    @Override // j$.time.chrono.a, j$.time.chrono.j
    public final ChronoZonedDateTime r(TemporalAccessor temporalAccessor) {
        return ZonedDateTime.U(temporalAccessor);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate s(int i, int i2) {
        return LocalDate.e0(i, i2);
    }

    public Object writeReplace() {
        return new c0((byte) 1, this);
    }

    @Override // j$.time.chrono.j
    public final j$.time.temporal.p x(ChronoField chronoField) {
        return chronoField.b;
    }

    @Override // j$.time.chrono.j
    public final List z() {
        return j$.com.android.tools.r8.a.E(r.values());
    }
}
