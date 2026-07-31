package j$.time.format;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class d0 implements TemporalAccessor {
    public ZoneId b;
    public j$.time.chrono.a c;
    public boolean d;
    public e0 e;
    public ChronoLocalDate f;
    public LocalTime g;
    public final Map a = new HashMap();
    public j$.time.q h = j$.time.q.d;

    public final void A(j$.time.temporal.n nVar, j$.time.temporal.a aVar, Long l) {
        Long l2 = (Long) ((HashMap) this.a).put(aVar, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new j$.time.c("Conflict found: " + aVar + " " + l2 + " differs from " + aVar + " " + l + " while resolving  " + nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean c(j$.time.temporal.n nVar) {
        if (((HashMap) this.a).containsKey(nVar)) {
            return true;
        }
        ChronoLocalDate chronoLocalDate = this.f;
        if (chronoLocalDate != null && chronoLocalDate.c(nVar)) {
            return true;
        }
        LocalTime localTime = this.g;
        if (localTime == null || !localTime.c(nVar)) {
            return (nVar == null || (nVar instanceof j$.time.temporal.a) || !nVar.f(this)) ? false : true;
        }
        return true;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int f(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.a(this, nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ j$.time.temporal.q h(j$.time.temporal.n nVar) {
        return j$.time.temporal.o.d(this, nVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object i(j$.time.f fVar) {
        if (fVar == j$.time.temporal.o.a) {
            return this.b;
        }
        if (fVar == j$.time.temporal.o.b) {
            return this.c;
        }
        if (fVar == j$.time.temporal.o.f) {
            ChronoLocalDate chronoLocalDate = this.f;
            if (chronoLocalDate != null) {
                return LocalDate.w(chronoLocalDate);
            }
            return null;
        }
        if (fVar == j$.time.temporal.o.g) {
            return this.g;
        }
        if (fVar == j$.time.temporal.o.d) {
            Long l = (Long) ((HashMap) this.a).get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.D(l.intValue());
            }
            ZoneId zoneId = this.b;
            return zoneId instanceof ZoneOffset ? zoneId : fVar.e(this);
        }
        if (fVar == j$.time.temporal.o.e) {
            return fVar.e(this);
        }
        if (fVar == j$.time.temporal.o.c) {
            return null;
        }
        return fVar.e(this);
    }

    public final void k(TemporalAccessor temporalAccessor) {
        Iterator it = ((HashMap) this.a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            j$.time.temporal.n nVar = (j$.time.temporal.n) entry.getKey();
            if (temporalAccessor.c(nVar)) {
                try {
                    long q = temporalAccessor.q(nVar);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (q != longValue) {
                        throw new j$.time.c("Conflict found: Field " + nVar + " " + q + " differs from " + nVar + " " + longValue + " derived from " + temporalAccessor);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long q(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "field");
        Long l = (Long) ((HashMap) this.a).get(nVar);
        if (l != null) {
            return l.longValue();
        }
        ChronoLocalDate chronoLocalDate = this.f;
        if (chronoLocalDate != null && chronoLocalDate.c(nVar)) {
            return this.f.q(nVar);
        }
        LocalTime localTime = this.g;
        if (localTime != null && localTime.c(nVar)) {
            return this.g.q(nVar);
        }
        if (nVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.p(j$.time.d.a("Unsupported field: ", nVar));
        }
        return nVar.i(this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.a);
        sb.append(',');
        sb.append(this.c);
        if (this.b != null) {
            sb.append(',');
            sb.append(this.b);
        }
        if (this.f != null || this.g != null) {
            sb.append(" resolved to ");
            ChronoLocalDate chronoLocalDate = this.f;
            if (chronoLocalDate != null) {
                sb.append(chronoLocalDate);
                if (this.g != null) {
                    sb.append('T');
                    sb.append(this.g);
                }
            } else {
                sb.append(this.g);
            }
        }
        return sb.toString();
    }

    public final void u() {
        if (((HashMap) this.a).containsKey(j$.time.temporal.a.INSTANT_SECONDS)) {
            ZoneId zoneId = this.b;
            if (zoneId != null) {
                v(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.a).get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                v(ZoneOffset.D(l.intValue()));
            }
        }
    }

    public final void v(ZoneId zoneId) {
        Map map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
        z(this.c.E(Instant.ofEpochSecond(((Long) ((HashMap) map).remove(aVar)).longValue()), zoneId).toLocalDate());
        A(aVar, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(r5.toLocalTime().toSecondOfDay()));
    }

    public final void w(long j, long j2, long j3, long j4) {
        if (this.e == e0.LENIENT) {
            long P = j$.time.a.P(j$.time.a.P(j$.time.a.P(j$.time.a.U(j, 3600000000000L), j$.time.a.U(j2, 60000000000L)), j$.time.a.U(j3, 1000000000L)), j4);
            y(LocalTime.z(j$.time.a.S(P, 86400000000000L)), j$.time.q.a(0, 0, (int) j$.time.a.T(P, 86400000000000L)));
            return;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.MINUTE_OF_HOUR;
        int a = aVar.b.a(j2, aVar);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.NANO_OF_SECOND;
        int a2 = aVar2.b.a(j4, aVar2);
        if (this.e == e0.SMART && j == 24 && a == 0 && j3 == 0 && a2 == 0) {
            y(LocalTime.MIDNIGHT, j$.time.q.a(0, 0, 1));
            return;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.HOUR_OF_DAY;
        int a3 = aVar3.b.a(j, aVar3);
        j$.time.temporal.a aVar4 = j$.time.temporal.a.SECOND_OF_MINUTE;
        y(LocalTime.y(a3, a, aVar4.b.a(j3, aVar4), a2), j$.time.q.d);
    }

    public final void x() {
        Map map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(aVar)) {
            long longValue = ((Long) ((HashMap) this.a).remove(aVar)).longValue();
            e0 e0Var = this.e;
            if (e0Var == e0.STRICT || (e0Var == e0.SMART && longValue != 0)) {
                aVar.o(longValue);
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            A(aVar, aVar2, Long.valueOf(longValue));
        }
        Map map2 = this.a;
        j$.time.temporal.a aVar3 = j$.time.temporal.a.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(aVar3)) {
            long longValue2 = ((Long) ((HashMap) this.a).remove(aVar3)).longValue();
            e0 e0Var2 = this.e;
            if (e0Var2 == e0.STRICT || (e0Var2 == e0.SMART && longValue2 != 0)) {
                aVar3.o(longValue2);
            }
            A(aVar3, j$.time.temporal.a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.a;
        j$.time.temporal.a aVar4 = j$.time.temporal.a.AMPM_OF_DAY;
        if (((HashMap) map3).containsKey(aVar4)) {
            Map map4 = this.a;
            j$.time.temporal.a aVar5 = j$.time.temporal.a.HOUR_OF_AMPM;
            if (((HashMap) map4).containsKey(aVar5)) {
                long longValue3 = ((Long) ((HashMap) this.a).remove(aVar4)).longValue();
                long longValue4 = ((Long) ((HashMap) this.a).remove(aVar5)).longValue();
                if (this.e == e0.LENIENT) {
                    A(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(j$.time.a.P(j$.time.a.U(longValue3, 12L), longValue4)));
                } else {
                    aVar4.o(longValue3);
                    aVar5.o(longValue3);
                    A(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf((longValue3 * 12) + longValue4));
                }
            }
        }
        Map map5 = this.a;
        j$.time.temporal.a aVar6 = j$.time.temporal.a.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(aVar6)) {
            long longValue5 = ((Long) ((HashMap) this.a).remove(aVar6)).longValue();
            if (this.e != e0.LENIENT) {
                aVar6.o(longValue5);
            }
            A(aVar6, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            A(aVar6, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            A(aVar6, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / 1000000000) % 60));
            A(aVar6, j$.time.temporal.a.NANO_OF_SECOND, Long.valueOf(longValue5 % 1000000000));
        }
        Map map6 = this.a;
        j$.time.temporal.a aVar7 = j$.time.temporal.a.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(aVar7)) {
            long longValue6 = ((Long) ((HashMap) this.a).remove(aVar7)).longValue();
            if (this.e != e0.LENIENT) {
                aVar7.o(longValue6);
            }
            A(aVar7, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            A(aVar7, j$.time.temporal.a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.a;
        j$.time.temporal.a aVar8 = j$.time.temporal.a.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(aVar8)) {
            long longValue7 = ((Long) ((HashMap) this.a).remove(aVar8)).longValue();
            if (this.e != e0.LENIENT) {
                aVar8.o(longValue7);
            }
            A(aVar8, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            A(aVar8, j$.time.temporal.a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.a;
        j$.time.temporal.a aVar9 = j$.time.temporal.a.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(aVar9)) {
            long longValue8 = ((Long) ((HashMap) this.a).remove(aVar9)).longValue();
            if (this.e != e0.LENIENT) {
                aVar9.o(longValue8);
            }
            A(aVar9, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            A(aVar9, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            A(aVar9, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.a;
        j$.time.temporal.a aVar10 = j$.time.temporal.a.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(aVar10)) {
            long longValue9 = ((Long) ((HashMap) this.a).remove(aVar10)).longValue();
            if (this.e != e0.LENIENT) {
                aVar10.o(longValue9);
            }
            A(aVar10, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            A(aVar10, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.a;
        j$.time.temporal.a aVar11 = j$.time.temporal.a.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(aVar11)) {
            long longValue10 = ((Long) ((HashMap) this.a).get(aVar11)).longValue();
            e0 e0Var3 = this.e;
            e0 e0Var4 = e0.LENIENT;
            if (e0Var3 != e0Var4) {
                aVar11.o(longValue10);
            }
            Map map11 = this.a;
            j$.time.temporal.a aVar12 = j$.time.temporal.a.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(aVar12)) {
                long longValue11 = ((Long) ((HashMap) this.a).remove(aVar12)).longValue();
                if (this.e != e0Var4) {
                    aVar12.o(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                A(aVar12, aVar11, Long.valueOf(longValue10));
            }
            Map map12 = this.a;
            j$.time.temporal.a aVar13 = j$.time.temporal.a.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(aVar13)) {
                long longValue12 = ((Long) ((HashMap) this.a).remove(aVar13)).longValue();
                if (this.e != e0Var4) {
                    aVar13.o(longValue12);
                }
                A(aVar13, aVar11, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.a;
        j$.time.temporal.a aVar14 = j$.time.temporal.a.HOUR_OF_DAY;
        if (((HashMap) map13).containsKey(aVar14)) {
            Map map14 = this.a;
            j$.time.temporal.a aVar15 = j$.time.temporal.a.MINUTE_OF_HOUR;
            if (((HashMap) map14).containsKey(aVar15)) {
                Map map15 = this.a;
                j$.time.temporal.a aVar16 = j$.time.temporal.a.SECOND_OF_MINUTE;
                if (((HashMap) map15).containsKey(aVar16) && ((HashMap) this.a).containsKey(aVar11)) {
                    w(((Long) ((HashMap) this.a).remove(aVar14)).longValue(), ((Long) ((HashMap) this.a).remove(aVar15)).longValue(), ((Long) ((HashMap) this.a).remove(aVar16)).longValue(), ((Long) ((HashMap) this.a).remove(aVar11)).longValue());
                }
            }
        }
    }

    public final void y(LocalTime localTime, j$.time.q qVar) {
        LocalTime localTime2 = this.g;
        if (localTime2 == null) {
            this.g = localTime;
            this.h = qVar;
            return;
        }
        if (!localTime2.equals(localTime)) {
            j$.time.h.g("Conflict found: Fields resolved to different times: ", this.g, " ", localTime);
            return;
        }
        j$.time.q qVar2 = this.h;
        j$.time.q qVar3 = j$.time.q.d;
        if (qVar2 == qVar3 || qVar == qVar3 || qVar2.equals(qVar)) {
            this.h = qVar;
        } else {
            j$.time.h.g("Conflict found: Fields resolved to different excess periods: ", this.h, " ", qVar);
        }
    }

    public final void z(ChronoLocalDate chronoLocalDate) {
        ChronoLocalDate chronoLocalDate2 = this.f;
        if (chronoLocalDate2 != null) {
            if (chronoLocalDate == null || chronoLocalDate2.equals(chronoLocalDate)) {
                return;
            }
            j$.time.h.g("Conflict found: Fields resolved to two different dates: ", this.f, " ", chronoLocalDate);
            return;
        }
        if (chronoLocalDate != null) {
            if (this.c.equals(chronoLocalDate.getChronology())) {
                this.f = chronoLocalDate;
                return;
            }
            throw new j$.time.c("ChronoLocalDate must use the effective parsed chronology: " + this.c);
        }
    }
}
