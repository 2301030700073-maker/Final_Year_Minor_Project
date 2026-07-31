package j$.time.format;

import com.google.android.exoplayer2.C;
import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class d0 implements TemporalAccessor {
    public ZoneId b;
    public j$.time.chrono.l c;
    public boolean d;
    public e0 e;
    public j$.time.chrono.b f;
    public j$.time.i g;
    public final Map a = new HashMap();
    public j$.time.p h = j$.time.p.d;

    @Override // j$.time.temporal.TemporalAccessor
    public final Object F(j$.desugar.sun.nio.fs.m mVar) {
        if (mVar == j$.time.temporal.q.a) {
            return this.b;
        }
        if (mVar == j$.time.temporal.q.b) {
            return this.c;
        }
        if (mVar == j$.time.temporal.q.f) {
            j$.time.chrono.b bVar = this.f;
            if (bVar != null) {
                return LocalDate.b0(bVar);
            }
            return null;
        }
        if (mVar == j$.time.temporal.q.g) {
            return this.g;
        }
        if (mVar == j$.time.temporal.q.d) {
            Long l = (Long) ((HashMap) this.a).get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.i0(l.intValue());
            }
            ZoneId zoneId = this.b;
            return zoneId instanceof ZoneOffset ? zoneId : mVar.g(this);
        }
        if (mVar == j$.time.temporal.q.e) {
            return mVar.g(this);
        }
        if (mVar == j$.time.temporal.q.c) {
            return null;
        }
        return mVar.g(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long M(j$.time.temporal.p pVar) {
        Objects.requireNonNull(pVar, "field");
        Long l = (Long) ((HashMap) this.a).get(pVar);
        if (l != null) {
            return l.longValue();
        }
        j$.time.chrono.b bVar = this.f;
        if (bVar != null && bVar.e(pVar)) {
            return this.f.M(pVar);
        }
        j$.time.i iVar = this.g;
        if (iVar != null && iVar.e(pVar)) {
            return this.g.M(pVar);
        }
        if (pVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.r(j$.time.b.a("Unsupported field: ", pVar));
        }
        return pVar.F(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.p pVar) {
        if (((HashMap) this.a).containsKey(pVar)) {
            return true;
        }
        j$.time.chrono.b bVar = this.f;
        if (bVar != null && bVar.e(pVar)) {
            return true;
        }
        j$.time.i iVar = this.g;
        if (iVar == null || !iVar.e(pVar)) {
            return (pVar == null || (pVar instanceof j$.time.temporal.a) || !pVar.k(this)) ? false : true;
        }
        return true;
    }

    public final void h(TemporalAccessor temporalAccessor) {
        Iterator it = ((HashMap) this.a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            j$.time.temporal.p pVar = (j$.time.temporal.p) entry.getKey();
            if (temporalAccessor.e(pVar)) {
                try {
                    long M = temporalAccessor.M(pVar);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (M != longValue) {
                        throw new DateTimeException("Conflict found: Field " + pVar + " " + M + " differs from " + pVar + " " + longValue + " derived from " + temporalAccessor);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    public final void i() {
        if (((HashMap) this.a).containsKey(j$.time.temporal.a.INSTANT_SECONDS)) {
            ZoneId zoneId = this.b;
            if (zoneId != null) {
                j(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.a).get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                j(ZoneOffset.i0(l.intValue()));
            }
        }
    }

    public final void j(ZoneId zoneId) {
        Map map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
        q(this.c.V(Instant.ofEpochSecond(((Long) ((HashMap) map).remove(aVar)).longValue()), zoneId).f());
        r(aVar, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(r5.b().m0()));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.a(this, pVar);
    }

    public final void l(long j, long j2, long j3, long j4) {
        if (this.e == e0.LENIENT) {
            long S = j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.T(j, 3600000000000L), j$.com.android.tools.r8.a.T(j2, 60000000000L)), j$.com.android.tools.r8.a.T(j3, C.NANOS_PER_SECOND)), j4);
            p(j$.time.i.e0(j$.com.android.tools.r8.a.R(S, 86400000000000L)), j$.time.p.a(0, 0, (int) j$.com.android.tools.r8.a.E(S, 86400000000000L)));
            return;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.MINUTE_OF_HOUR;
        int a = aVar.b.a(j2, aVar);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.NANO_OF_SECOND;
        int a2 = aVar2.b.a(j4, aVar2);
        if (this.e == e0.SMART && j == 24 && a == 0 && j3 == 0 && a2 == 0) {
            p(j$.time.i.g, j$.time.p.a(0, 0, 1));
            return;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.HOUR_OF_DAY;
        int a3 = aVar3.b.a(j, aVar3);
        j$.time.temporal.a aVar4 = j$.time.temporal.a.SECOND_OF_MINUTE;
        p(j$.time.i.d0(a3, a, aVar4.b.a(j3, aVar4), a2), j$.time.p.d);
    }

    public final void m() {
        Map map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(aVar)) {
            long longValue = ((Long) ((HashMap) this.a).remove(aVar)).longValue();
            e0 e0Var = this.e;
            if (e0Var == e0.STRICT || (e0Var == e0.SMART && longValue != 0)) {
                aVar.M(longValue);
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            r(aVar, aVar2, Long.valueOf(longValue));
        }
        Map map2 = this.a;
        j$.time.temporal.a aVar3 = j$.time.temporal.a.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(aVar3)) {
            long longValue2 = ((Long) ((HashMap) this.a).remove(aVar3)).longValue();
            e0 e0Var2 = this.e;
            if (e0Var2 == e0.STRICT || (e0Var2 == e0.SMART && longValue2 != 0)) {
                aVar3.M(longValue2);
            }
            r(aVar3, j$.time.temporal.a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
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
                    r(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(j$.com.android.tools.r8.a.S(j$.com.android.tools.r8.a.T(longValue3, 12L), longValue4)));
                } else {
                    aVar4.M(longValue3);
                    aVar5.M(longValue3);
                    r(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf((longValue3 * 12) + longValue4));
                }
            }
        }
        Map map5 = this.a;
        j$.time.temporal.a aVar6 = j$.time.temporal.a.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(aVar6)) {
            long longValue5 = ((Long) ((HashMap) this.a).remove(aVar6)).longValue();
            if (this.e != e0.LENIENT) {
                aVar6.M(longValue5);
            }
            r(aVar6, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            r(aVar6, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            r(aVar6, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / C.NANOS_PER_SECOND) % 60));
            r(aVar6, j$.time.temporal.a.NANO_OF_SECOND, Long.valueOf(longValue5 % C.NANOS_PER_SECOND));
        }
        Map map6 = this.a;
        j$.time.temporal.a aVar7 = j$.time.temporal.a.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(aVar7)) {
            long longValue6 = ((Long) ((HashMap) this.a).remove(aVar7)).longValue();
            if (this.e != e0.LENIENT) {
                aVar7.M(longValue6);
            }
            r(aVar7, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            r(aVar7, j$.time.temporal.a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.a;
        j$.time.temporal.a aVar8 = j$.time.temporal.a.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(aVar8)) {
            long longValue7 = ((Long) ((HashMap) this.a).remove(aVar8)).longValue();
            if (this.e != e0.LENIENT) {
                aVar8.M(longValue7);
            }
            r(aVar8, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            r(aVar8, j$.time.temporal.a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.a;
        j$.time.temporal.a aVar9 = j$.time.temporal.a.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(aVar9)) {
            long longValue8 = ((Long) ((HashMap) this.a).remove(aVar9)).longValue();
            if (this.e != e0.LENIENT) {
                aVar9.M(longValue8);
            }
            r(aVar9, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            r(aVar9, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            r(aVar9, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.a;
        j$.time.temporal.a aVar10 = j$.time.temporal.a.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(aVar10)) {
            long longValue9 = ((Long) ((HashMap) this.a).remove(aVar10)).longValue();
            if (this.e != e0.LENIENT) {
                aVar10.M(longValue9);
            }
            r(aVar10, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            r(aVar10, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.a;
        j$.time.temporal.a aVar11 = j$.time.temporal.a.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(aVar11)) {
            long longValue10 = ((Long) ((HashMap) this.a).get(aVar11)).longValue();
            e0 e0Var3 = this.e;
            e0 e0Var4 = e0.LENIENT;
            if (e0Var3 != e0Var4) {
                aVar11.M(longValue10);
            }
            Map map11 = this.a;
            j$.time.temporal.a aVar12 = j$.time.temporal.a.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(aVar12)) {
                long longValue11 = ((Long) ((HashMap) this.a).remove(aVar12)).longValue();
                if (this.e != e0Var4) {
                    aVar12.M(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                r(aVar12, aVar11, Long.valueOf(longValue10));
            }
            Map map12 = this.a;
            j$.time.temporal.a aVar13 = j$.time.temporal.a.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(aVar13)) {
                long longValue12 = ((Long) ((HashMap) this.a).remove(aVar13)).longValue();
                if (this.e != e0Var4) {
                    aVar13.M(longValue12);
                }
                r(aVar13, aVar11, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
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
                    l(((Long) ((HashMap) this.a).remove(aVar14)).longValue(), ((Long) ((HashMap) this.a).remove(aVar15)).longValue(), ((Long) ((HashMap) this.a).remove(aVar16)).longValue(), ((Long) ((HashMap) this.a).remove(aVar11)).longValue());
                }
            }
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ j$.time.temporal.s o(j$.time.temporal.p pVar) {
        return j$.time.temporal.q.d(this, pVar);
    }

    public final void p(j$.time.i iVar, j$.time.p pVar) {
        j$.time.i iVar2 = this.g;
        if (iVar2 == null) {
            this.g = iVar;
            this.h = pVar;
            return;
        }
        if (!iVar2.equals(iVar)) {
            j$.nio.file.m.g("Conflict found: Fields resolved to different times: ", this.g, " ", iVar);
            return;
        }
        j$.time.p pVar2 = this.h;
        pVar2.getClass();
        j$.time.p pVar3 = j$.time.p.d;
        if (pVar2 == pVar3 || pVar == pVar3 || this.h.equals(pVar)) {
            this.h = pVar;
        } else {
            j$.nio.file.m.g("Conflict found: Fields resolved to different excess periods: ", this.h, " ", pVar);
        }
    }

    public final void q(j$.time.chrono.b bVar) {
        j$.time.chrono.b bVar2 = this.f;
        if (bVar2 != null) {
            if (bVar == null || bVar2.equals(bVar)) {
                return;
            }
            j$.nio.file.m.g("Conflict found: Fields resolved to two different dates: ", this.f, " ", bVar);
            return;
        }
        if (bVar != null) {
            if (this.c.equals(bVar.a())) {
                this.f = bVar;
                return;
            }
            throw new DateTimeException("ChronoLocalDate must use the effective parsed chronology: " + this.c);
        }
    }

    public final void r(j$.time.temporal.p pVar, j$.time.temporal.a aVar, Long l) {
        Long l2 = (Long) ((HashMap) this.a).put(aVar, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new DateTimeException("Conflict found: " + aVar + " " + l2 + " differs from " + aVar + " " + l + " while resolving  " + pVar);
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
            j$.time.chrono.b bVar = this.f;
            if (bVar != null) {
                sb.append(bVar);
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
}
