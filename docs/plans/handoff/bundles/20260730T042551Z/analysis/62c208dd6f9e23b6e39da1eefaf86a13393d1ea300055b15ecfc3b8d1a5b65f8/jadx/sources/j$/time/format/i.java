package j$.time.format;

import j$.time.AbstractC2959a;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;

/* loaded from: classes2.dex */
final class i implements g {
    i() {
    }

    @Override // j$.time.format.g
    public final boolean i(r rVar, StringBuilder sb) {
        Long e = rVar.e(j$.time.temporal.a.INSTANT_SECONDS);
        j$.time.temporal.n d = rVar.d();
        j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
        Long valueOf = d.e(aVar) ? Long.valueOf(rVar.d().v(aVar)) : null;
        int i = 0;
        if (e == null) {
            return false;
        }
        long longValue = e.longValue();
        int v = aVar.v(valueOf != null ? valueOf.longValue() : 0L);
        if (longValue >= -62167219200L) {
            long j = (longValue - 315569520000L) + 62167219200L;
            long h = AbstractC2959a.h(j, 315569520000L) + 1;
            LocalDateTime M = LocalDateTime.M(AbstractC2959a.g(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
            if (h > 0) {
                sb.append('+');
                sb.append(h);
            }
            sb.append(M);
            if (M.G() == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = longValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            LocalDateTime M2 = LocalDateTime.M(j4 - 62167219200L, 0, ZoneOffset.UTC);
            int length = sb.length();
            sb.append(M2);
            if (M2.G() == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (M2.H() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (v > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (v <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = v / i2;
                sb.append((char) (i3 + 48));
                v -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    public final String toString() {
        return "Instant()";
    }
}
