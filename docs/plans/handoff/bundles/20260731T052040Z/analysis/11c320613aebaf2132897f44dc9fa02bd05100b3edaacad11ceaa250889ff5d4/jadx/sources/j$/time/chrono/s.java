package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class s extends a implements Serializable {
    public static final s c = new s();
    private static final long serialVersionUID = -1440403870442975015L;

    private s() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.l
    public final List A() {
        return j$.com.android.tools.r8.a.G(t.values());
    }

    @Override // j$.time.chrono.l
    public final m B(int i) {
        if (i == 0) {
            return t.BCE;
        }
        if (i == 1) {
            return t.CE;
        }
        j$.nio.file.m.d("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.l
    public final int D(m mVar, int i) {
        if (mVar instanceof t) {
            return mVar == t.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // j$.time.chrono.a
    public final void F(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.M(l.longValue());
            }
            a.k(map, j$.time.temporal.a.MONTH_OF_YEAR, ((int) j$.com.android.tools.r8.a.R(l.longValue(), 12L)) + 1);
            a.k(map, j$.time.temporal.a.YEAR, j$.com.android.tools.r8.a.E(l.longValue(), 12L));
        }
    }

    @Override // j$.time.chrono.a
    public final b H(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a = aVar.b.a(((Long) map.remove(aVar)).longValue(), aVar);
        boolean z = true;
        if (e0Var == j$.time.format.e0.LENIENT) {
            return LocalDate.of(a, 1, 1).n0(j$.com.android.tools.r8.a.U(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L)).m0(j$.com.android.tools.r8.a.U(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L));
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a2 = aVar2.b.a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a3 = aVar3.b.a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e0Var == j$.time.format.e0.SMART) {
            if (a2 == 4 || a2 == 6 || a2 == 9 || a2 == 11) {
                a3 = Math.min(a3, 30);
            } else if (a2 == 2) {
                j$.time.k kVar = j$.time.k.FEBRUARY;
                long j = a;
                int i = j$.time.s.b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                a3 = Math.min(a3, kVar.a0(z));
            }
        }
        return LocalDate.of(a, a2, a3);
    }

    @Override // j$.time.chrono.l
    public final b J(TemporalAccessor temporalAccessor) {
        return LocalDate.b0(temporalAccessor);
    }

    @Override // j$.time.chrono.a, j$.time.chrono.l
    public final e K(LocalDateTime localDateTime) {
        return LocalDateTime.a0(localDateTime);
    }

    @Override // j$.time.chrono.a
    public final b M(Map map, j$.time.format.e0 e0Var) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e0Var != j$.time.format.e0.LENIENT) {
                aVar.M(l.longValue());
            }
            Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
            if (l2 == null) {
                j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
                Long l3 = (Long) map.get(aVar2);
                if (e0Var != j$.time.format.e0.STRICT) {
                    a.k(map, aVar2, (l3 == null || l3.longValue() > 0) ? l.longValue() : j$.com.android.tools.r8.a.U(1L, l.longValue()));
                } else if (l3 != null) {
                    long longValue = l3.longValue();
                    long longValue2 = l.longValue();
                    if (longValue <= 0) {
                        longValue2 = j$.com.android.tools.r8.a.U(1L, longValue2);
                    }
                    a.k(map, aVar2, longValue2);
                } else {
                    map.put(aVar, l);
                }
            } else if (l2.longValue() == 1) {
                a.k(map, j$.time.temporal.a.YEAR, l.longValue());
            } else {
                if (l2.longValue() != 0) {
                    j$.nio.file.m.j(l2, "Invalid value for era: ");
                    return null;
                }
                a.k(map, j$.time.temporal.a.YEAR, j$.com.android.tools.r8.a.U(1L, l.longValue()));
            }
        } else {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.ERA;
            if (map.containsKey(aVar3)) {
                aVar3.M(((Long) map.get(aVar3)).longValue());
            }
        }
        return null;
    }

    @Override // j$.time.chrono.l
    public final b S(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3);
    }

    @Override // j$.time.chrono.a, j$.time.chrono.l
    public final b U(Map map, j$.time.format.e0 e0Var) {
        return (LocalDate) super.U(map, e0Var);
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime V(Instant instant, ZoneId zoneId) {
        return ZonedDateTime.Z(instant, zoneId);
    }

    @Override // j$.time.chrono.l
    public final boolean Y(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    @Override // j$.time.chrono.l
    public final b h(long j) {
        return LocalDate.j0(j);
    }

    @Override // j$.time.chrono.l
    public final String i() {
        return "ISO";
    }

    @Override // j$.time.chrono.a
    public final b n() {
        j$.time.a X = j$.com.android.tools.r8.a.X();
        Objects.requireNonNull(X, "clock");
        return LocalDate.b0(LocalDate.i0(X));
    }

    @Override // j$.time.chrono.l
    public final String q() {
        return "iso8601";
    }

    @Override // j$.time.chrono.l
    public final b s(int i, int i2) {
        return LocalDate.k0(i, i2);
    }

    public Object writeReplace() {
        return new e0((byte) 1, this);
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.s y(j$.time.temporal.a aVar) {
        return aVar.b;
    }
}
