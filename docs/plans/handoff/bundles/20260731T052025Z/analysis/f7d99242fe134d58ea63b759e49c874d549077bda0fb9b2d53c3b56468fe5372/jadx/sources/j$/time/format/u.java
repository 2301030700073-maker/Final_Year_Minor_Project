package j$.time.format;

import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalQuery;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class u implements TemporalAccessor {
    public ZoneId b;
    public j$.time.chrono.j c;
    public boolean d;
    public v e;
    public ChronoLocalDate f;
    public LocalTime g;
    public final Map a = new HashMap();
    public j$.time.o h = j$.time.o.d;

    @Override // j$.time.temporal.TemporalAccessor
    public final long J(TemporalField temporalField) {
        Objects.requireNonNull(temporalField, "field");
        Long l = (Long) ((HashMap) this.a).get(temporalField);
        if (l != null) {
            return l.longValue();
        }
        ChronoLocalDate chronoLocalDate = this.f;
        if (chronoLocalDate != null && chronoLocalDate.d(temporalField)) {
            return this.f.J(temporalField);
        }
        LocalTime localTime = this.g;
        if (localTime != null && localTime.d(temporalField)) {
            return this.g.J(temporalField);
        }
        if (temporalField instanceof ChronoField) {
            throw new j$.time.temporal.o(j$.time.b.a("Unsupported field: ", temporalField));
        }
        return temporalField.F(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object L(TemporalQuery temporalQuery) {
        if (temporalQuery == j$.time.temporal.n.a) {
            return this.b;
        }
        if (temporalQuery == j$.time.temporal.n.b) {
            return this.c;
        }
        if (temporalQuery == j$.time.temporal.n.f) {
            ChronoLocalDate chronoLocalDate = this.f;
            if (chronoLocalDate != null) {
                return LocalDate.W(chronoLocalDate);
            }
            return null;
        }
        if (temporalQuery == j$.time.temporal.n.g) {
            return this.g;
        }
        if (temporalQuery == j$.time.temporal.n.d) {
            Long l = (Long) ((HashMap) this.a).get(ChronoField.OFFSET_SECONDS);
            if (l != null) {
                return ZoneOffset.ofTotalSeconds(l.intValue());
            }
            ZoneId zoneId = this.b;
            return zoneId instanceof ZoneOffset ? zoneId : temporalQuery.queryFrom(this);
        }
        if (temporalQuery == j$.time.temporal.n.e) {
            return temporalQuery.queryFrom(this);
        }
        if (temporalQuery == j$.time.temporal.n.c) {
            return null;
        }
        return temporalQuery.queryFrom(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean d(TemporalField temporalField) {
        if (((HashMap) this.a).containsKey(temporalField)) {
            return true;
        }
        ChronoLocalDate chronoLocalDate = this.f;
        if (chronoLocalDate != null && chronoLocalDate.d(temporalField)) {
            return true;
        }
        LocalTime localTime = this.g;
        if (localTime == null || !localTime.d(temporalField)) {
            return (temporalField == null || (temporalField instanceof ChronoField) || !temporalField.k(this)) ? false : true;
        }
        return true;
    }

    public final void h(TemporalAccessor temporalAccessor) {
        Iterator it = ((HashMap) this.a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            TemporalField temporalField = (TemporalField) entry.getKey();
            if (temporalAccessor.d(temporalField)) {
                try {
                    long J = temporalAccessor.J(temporalField);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (J != longValue) {
                        throw new DateTimeException("Conflict found: Field " + temporalField + " " + J + " differs from " + temporalField + " " + longValue + " derived from " + temporalAccessor);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    public final void i() {
        if (((HashMap) this.a).containsKey(ChronoField.INSTANT_SECONDS)) {
            ZoneId zoneId = this.b;
            if (zoneId != null) {
                j(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.a).get(ChronoField.OFFSET_SECONDS);
            if (l != null) {
                j(ZoneOffset.ofTotalSeconds(l.intValue()));
            }
        }
    }

    public final void j(ZoneId zoneId) {
        Map map = this.a;
        ChronoField chronoField = ChronoField.INSTANT_SECONDS;
        q(this.c.S(Instant.U(((Long) ((HashMap) map).remove(chronoField)).longValue(), 0), zoneId).e());
        r(chronoField, ChronoField.SECOND_OF_DAY, Long.valueOf(r5.toLocalTime().f0()));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(TemporalField temporalField) {
        return j$.time.temporal.n.a(this, temporalField);
    }

    public final void l(long j, long j2, long j3, long j4) {
        if (this.e == v.LENIENT) {
            long Q = j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.R(j, 3600000000000L), j$.com.android.tools.r8.a.R(j2, 60000000000L)), j$.com.android.tools.r8.a.R(j3, 1000000000L)), j4);
            p(LocalTime.X(j$.com.android.tools.r8.a.P(Q, 86400000000000L)), j$.time.o.a(0, 0, (int) j$.com.android.tools.r8.a.C(Q, 86400000000000L)));
            return;
        }
        ChronoField chronoField = ChronoField.MINUTE_OF_HOUR;
        int a = chronoField.b.a(j2, chronoField);
        ChronoField chronoField2 = ChronoField.NANO_OF_SECOND;
        int a2 = chronoField2.b.a(j4, chronoField2);
        if (this.e == v.SMART && j == 24 && a == 0 && j3 == 0 && a2 == 0) {
            p(LocalTime.e, j$.time.o.a(0, 0, 1));
            return;
        }
        ChronoField chronoField3 = ChronoField.HOUR_OF_DAY;
        int a3 = chronoField3.b.a(j, chronoField3);
        ChronoField chronoField4 = ChronoField.SECOND_OF_MINUTE;
        p(LocalTime.of(a3, a, chronoField4.b.a(j3, chronoField4), a2), j$.time.o.d);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ j$.time.temporal.p n(TemporalField temporalField) {
        return j$.time.temporal.n.d(this, temporalField);
    }

    public final void o() {
        Map map = this.a;
        ChronoField chronoField = ChronoField.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(chronoField)) {
            long longValue = ((Long) ((HashMap) this.a).remove(chronoField)).longValue();
            v vVar = this.e;
            if (vVar == v.STRICT || (vVar == v.SMART && longValue != 0)) {
                chronoField.L(longValue);
            }
            ChronoField chronoField2 = ChronoField.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            r(chronoField, chronoField2, Long.valueOf(longValue));
        }
        Map map2 = this.a;
        ChronoField chronoField3 = ChronoField.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(chronoField3)) {
            long longValue2 = ((Long) ((HashMap) this.a).remove(chronoField3)).longValue();
            v vVar2 = this.e;
            if (vVar2 == v.STRICT || (vVar2 == v.SMART && longValue2 != 0)) {
                chronoField3.L(longValue2);
            }
            r(chronoField3, ChronoField.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.a;
        ChronoField chronoField4 = ChronoField.AMPM_OF_DAY;
        if (((HashMap) map3).containsKey(chronoField4)) {
            Map map4 = this.a;
            ChronoField chronoField5 = ChronoField.HOUR_OF_AMPM;
            if (((HashMap) map4).containsKey(chronoField5)) {
                long longValue3 = ((Long) ((HashMap) this.a).remove(chronoField4)).longValue();
                long longValue4 = ((Long) ((HashMap) this.a).remove(chronoField5)).longValue();
                if (this.e == v.LENIENT) {
                    r(chronoField4, ChronoField.HOUR_OF_DAY, Long.valueOf(j$.com.android.tools.r8.a.Q(j$.com.android.tools.r8.a.R(longValue3, 12L), longValue4)));
                } else {
                    chronoField4.L(longValue3);
                    chronoField5.L(longValue3);
                    r(chronoField4, ChronoField.HOUR_OF_DAY, Long.valueOf((longValue3 * 12) + longValue4));
                }
            }
        }
        Map map5 = this.a;
        ChronoField chronoField6 = ChronoField.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(chronoField6)) {
            long longValue5 = ((Long) ((HashMap) this.a).remove(chronoField6)).longValue();
            if (this.e != v.LENIENT) {
                chronoField6.L(longValue5);
            }
            r(chronoField6, ChronoField.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            r(chronoField6, ChronoField.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            r(chronoField6, ChronoField.SECOND_OF_MINUTE, Long.valueOf((longValue5 / 1000000000) % 60));
            r(chronoField6, ChronoField.NANO_OF_SECOND, Long.valueOf(longValue5 % 1000000000));
        }
        Map map6 = this.a;
        ChronoField chronoField7 = ChronoField.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(chronoField7)) {
            long longValue6 = ((Long) ((HashMap) this.a).remove(chronoField7)).longValue();
            if (this.e != v.LENIENT) {
                chronoField7.L(longValue6);
            }
            r(chronoField7, ChronoField.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            r(chronoField7, ChronoField.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.a;
        ChronoField chronoField8 = ChronoField.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(chronoField8)) {
            long longValue7 = ((Long) ((HashMap) this.a).remove(chronoField8)).longValue();
            if (this.e != v.LENIENT) {
                chronoField8.L(longValue7);
            }
            r(chronoField8, ChronoField.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            r(chronoField8, ChronoField.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.a;
        ChronoField chronoField9 = ChronoField.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(chronoField9)) {
            long longValue8 = ((Long) ((HashMap) this.a).remove(chronoField9)).longValue();
            if (this.e != v.LENIENT) {
                chronoField9.L(longValue8);
            }
            r(chronoField9, ChronoField.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            r(chronoField9, ChronoField.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            r(chronoField9, ChronoField.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.a;
        ChronoField chronoField10 = ChronoField.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(chronoField10)) {
            long longValue9 = ((Long) ((HashMap) this.a).remove(chronoField10)).longValue();
            if (this.e != v.LENIENT) {
                chronoField10.L(longValue9);
            }
            r(chronoField10, ChronoField.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            r(chronoField10, ChronoField.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.a;
        ChronoField chronoField11 = ChronoField.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(chronoField11)) {
            long longValue10 = ((Long) ((HashMap) this.a).get(chronoField11)).longValue();
            v vVar3 = this.e;
            v vVar4 = v.LENIENT;
            if (vVar3 != vVar4) {
                chronoField11.L(longValue10);
            }
            Map map11 = this.a;
            ChronoField chronoField12 = ChronoField.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(chronoField12)) {
                long longValue11 = ((Long) ((HashMap) this.a).remove(chronoField12)).longValue();
                if (this.e != vVar4) {
                    chronoField12.L(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                r(chronoField12, chronoField11, Long.valueOf(longValue10));
            }
            Map map12 = this.a;
            ChronoField chronoField13 = ChronoField.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(chronoField13)) {
                long longValue12 = ((Long) ((HashMap) this.a).remove(chronoField13)).longValue();
                if (this.e != vVar4) {
                    chronoField13.L(longValue12);
                }
                r(chronoField13, chronoField11, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.a;
        ChronoField chronoField14 = ChronoField.HOUR_OF_DAY;
        if (((HashMap) map13).containsKey(chronoField14)) {
            Map map14 = this.a;
            ChronoField chronoField15 = ChronoField.MINUTE_OF_HOUR;
            if (((HashMap) map14).containsKey(chronoField15)) {
                Map map15 = this.a;
                ChronoField chronoField16 = ChronoField.SECOND_OF_MINUTE;
                if (((HashMap) map15).containsKey(chronoField16) && ((HashMap) this.a).containsKey(chronoField11)) {
                    l(((Long) ((HashMap) this.a).remove(chronoField14)).longValue(), ((Long) ((HashMap) this.a).remove(chronoField15)).longValue(), ((Long) ((HashMap) this.a).remove(chronoField16)).longValue(), ((Long) ((HashMap) this.a).remove(chronoField11)).longValue());
                }
            }
        }
    }

    public final void p(LocalTime localTime, j$.time.o oVar) {
        LocalTime localTime2 = this.g;
        if (localTime2 == null) {
            this.g = localTime;
            this.h = oVar;
            return;
        }
        if (!localTime2.equals(localTime)) {
            j$.nio.file.j.g("Conflict found: Fields resolved to different times: ", this.g, " ", localTime);
            return;
        }
        j$.time.o oVar2 = this.h;
        oVar2.getClass();
        j$.time.o oVar3 = j$.time.o.d;
        if (oVar2 == oVar3 || oVar == oVar3 || this.h.equals(oVar)) {
            this.h = oVar;
        } else {
            j$.nio.file.j.g("Conflict found: Fields resolved to different excess periods: ", this.h, " ", oVar);
        }
    }

    public final void q(ChronoLocalDate chronoLocalDate) {
        ChronoLocalDate chronoLocalDate2 = this.f;
        if (chronoLocalDate2 != null) {
            if (chronoLocalDate == null || chronoLocalDate2.equals(chronoLocalDate)) {
                return;
            }
            j$.nio.file.j.g("Conflict found: Fields resolved to two different dates: ", this.f, " ", chronoLocalDate);
            return;
        }
        if (chronoLocalDate != null) {
            if (this.c.equals(chronoLocalDate.a())) {
                this.f = chronoLocalDate;
                return;
            }
            throw new DateTimeException("ChronoLocalDate must use the effective parsed chronology: " + this.c);
        }
    }

    public final void r(TemporalField temporalField, ChronoField chronoField, Long l) {
        Long l2 = (Long) ((HashMap) this.a).put(chronoField, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new DateTimeException("Conflict found: " + chronoField + " " + l2 + " differs from " + chronoField + " " + l + " while resolving  " + temporalField);
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
}
