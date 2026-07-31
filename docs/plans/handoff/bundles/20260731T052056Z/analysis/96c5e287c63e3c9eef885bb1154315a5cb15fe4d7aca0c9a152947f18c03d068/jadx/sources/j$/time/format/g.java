package j$.time.format;

import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneOffset;
import j$.time.temporal.TemporalAccessor;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class g implements e {
    @Override // j$.time.format.e
    public final boolean f(y yVar, StringBuilder sb) {
        Long a = yVar.a(j$.time.temporal.a.INSTANT_SECONDS);
        TemporalAccessor temporalAccessor = yVar.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        Long valueOf = temporalAccessor.c(aVar) ? Long.valueOf(temporalAccessor.q(aVar)) : null;
        int i = 0;
        if (a == null) {
            return false;
        }
        long longValue = a.longValue();
        int a2 = aVar.b.a(valueOf != null ? valueOf.longValue() : 0L, aVar);
        if (longValue >= -62167219200L) {
            long j = longValue - 253402300800L;
            long T = j$.time.a.T(j, 315569520000L) + 1;
            LocalDateTime w = LocalDateTime.w(j$.time.a.S(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (T > 0) {
                sb.append('+');
                sb.append(T);
            }
            sb.append(w);
            if (w.b.c == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = longValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime w2 = LocalDateTime.w(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(w2);
            if (w2.b.c == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (w2.getYear() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (a2 > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (a2 <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = a2 / i2;
                sb.append((char) (i3 + 48));
                a2 -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    @Override // j$.time.format.e
    public final int g(w wVar, CharSequence charSequence, int i) {
        v vVar = new v();
        vVar.a(DateTimeFormatter.ISO_LOCAL_DATE);
        vVar.d('T');
        j$.time.temporal.a aVar = j$.time.temporal.a.HOUR_OF_DAY;
        vVar.m(aVar, 2);
        vVar.d(':');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MINUTE_OF_HOUR;
        vVar.m(aVar2, 2);
        vVar.d(':');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.SECOND_OF_MINUTE;
        vVar.m(aVar3, 2);
        j$.time.temporal.a aVar4 = j$.time.temporal.a.NANO_OF_SECOND;
        int i2 = 1;
        vVar.b(aVar4, 0, 9, true);
        vVar.d('Z');
        d c = vVar.r(Locale.getDefault(), e0.SMART, null).c();
        w wVar2 = new w(wVar.a);
        wVar2.b = wVar.b;
        wVar2.c = wVar.c;
        int g = c.g(wVar2, charSequence, i);
        if (g < 0) {
            return g;
        }
        long longValue = wVar2.e(j$.time.temporal.a.YEAR).longValue();
        int intValue = wVar2.e(j$.time.temporal.a.MONTH_OF_YEAR).intValue();
        int intValue2 = wVar2.e(j$.time.temporal.a.DAY_OF_MONTH).intValue();
        int intValue3 = wVar2.e(aVar).intValue();
        int intValue4 = wVar2.e(aVar2).intValue();
        Long e = wVar2.e(aVar3);
        Long e2 = wVar2.e(aVar4);
        int intValue5 = e != null ? e.intValue() : 0;
        int intValue6 = e2 != null ? e2.intValue() : 0;
        if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
            intValue3 = 0;
        } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
            wVar.c().d = true;
            i2 = 0;
            intValue5 = 59;
        } else {
            i2 = 0;
        }
        int i3 = ((int) longValue) % 10000;
        try {
            LocalDateTime localDateTime = LocalDateTime.c;
            LocalDateTime plusDays = new LocalDateTime(LocalDate.of(i3, intValue, intValue2), LocalTime.y(intValue3, intValue4, intValue5, 0)).plusDays(i2);
            ZoneOffset zoneOffset = ZoneOffset.UTC;
            plusDays.getClass();
            return wVar.g(aVar4, intValue6, i, wVar.g(j$.time.temporal.a.INSTANT_SECONDS, j$.time.a.w(plusDays, zoneOffset) + j$.time.a.U(longValue / 10000, 315569520000L), i, g));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    public final String toString() {
        return "Instant()";
    }
}
