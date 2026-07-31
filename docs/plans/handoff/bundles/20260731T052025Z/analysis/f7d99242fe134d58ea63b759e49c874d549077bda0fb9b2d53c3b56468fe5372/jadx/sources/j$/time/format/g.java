package j$.time.format;

import j$.time.DateTimeException;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalAccessor;
import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class g implements e {
    public static volatile Map.Entry b;
    public static volatile Map.Entry c;
    public final /* synthetic */ int a;

    public /* synthetic */ g(int i) {
        this.a = i;
    }

    public static int a(p pVar, CharSequence charSequence, int i, int i2, i iVar) {
        String upperCase = charSequence.subSequence(i, i2).toString().toUpperCase();
        if (i2 >= charSequence.length()) {
            pVar.e(ZoneId.of(upperCase));
            return i2;
        }
        if (charSequence.charAt(i2) == '0' || pVar.a(charSequence.charAt(i2), 'Z')) {
            pVar.e(ZoneId.of(upperCase));
            return i2;
        }
        p pVar2 = new p(pVar.a);
        pVar2.b = pVar.b;
        pVar2.c = pVar.c;
        int m = iVar.m(pVar2, charSequence, i2);
        try {
            if (m >= 0) {
                pVar.e(ZoneId.W(upperCase, ZoneOffset.ofTotalSeconds((int) pVar2.d(ChronoField.OFFSET_SECONDS).longValue())));
                return m;
            }
            if (iVar == i.e) {
                return ~i;
            }
            pVar.e(ZoneId.of(upperCase));
            return i2;
        } catch (DateTimeException unused) {
            return ~i;
        }
    }

    @Override // j$.time.format.e
    public final boolean k(r rVar, StringBuilder sb) {
        int i = 0;
        switch (this.a) {
            case 0:
                Long a = rVar.a(ChronoField.INSTANT_SECONDS);
                TemporalAccessor temporalAccessor = rVar.a;
                ChronoField chronoField = ChronoField.NANO_OF_SECOND;
                Long valueOf = temporalAccessor.d(chronoField) ? Long.valueOf(temporalAccessor.J(chronoField)) : null;
                if (a != null) {
                    long longValue = a.longValue();
                    int a2 = chronoField.b.a(valueOf != null ? valueOf.longValue() : 0L, chronoField);
                    if (longValue >= -62167219200L) {
                        long j = longValue - 253402300800L;
                        long C = j$.com.android.tools.r8.a.C(j, 315569520000L) + 1;
                        LocalDateTime X = LocalDateTime.X(j$.com.android.tools.r8.a.P(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
                        if (C > 0) {
                            sb.append('+');
                            sb.append(C);
                        }
                        sb.append(X);
                        if (X.b.getSecond() == 0) {
                            sb.append(":00");
                        }
                    } else {
                        long j2 = longValue + 62167219200L;
                        long j3 = j2 / 315569520000L;
                        long j4 = j2 % 315569520000L;
                        LocalDateTime X2 = LocalDateTime.X(j4 - 62167219200L, 0, ZoneOffset.UTC);
                        int length = sb.length();
                        sb.append(X2);
                        if (X2.b.getSecond() == 0) {
                            sb.append(":00");
                        }
                        if (j3 < 0) {
                            if (X2.getYear() == -10000) {
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
                            if (a2 > 0 || i % 3 != 0 || i < -2) {
                                int i3 = a2 / i2;
                                sb.append((char) (i3 + 48));
                                a2 -= i3 * i2;
                                i2 /= 10;
                                i++;
                            }
                        }
                    }
                    sb.append('Z');
                    break;
                } else {
                    break;
                }
                break;
            default:
                j$.desugar.sun.nio.fs.m mVar = DateTimeFormatterBuilder.f;
                TemporalAccessor temporalAccessor2 = rVar.a;
                Object L = temporalAccessor2.L(mVar);
                if (L != null || rVar.c != 0) {
                    ZoneId zoneId = (ZoneId) L;
                    if (zoneId != null) {
                        sb.append(zoneId.i());
                        break;
                    }
                } else {
                    j$.nio.file.j.n("Unable to extract ", mVar, " from temporal ", temporalAccessor2);
                }
                break;
        }
        return true;
    }

    @Override // j$.time.format.e
    public final int m(p pVar, CharSequence charSequence, int i) {
        int i2;
        int i3 = 1;
        switch (this.a) {
            case 0:
                DateTimeFormatterBuilder dateTimeFormatterBuilder = new DateTimeFormatterBuilder();
                dateTimeFormatterBuilder.a(DateTimeFormatter.g);
                DateTimeFormatterBuilder appendLiteral = dateTimeFormatterBuilder.appendLiteral('T');
                ChronoField chronoField = ChronoField.HOUR_OF_DAY;
                DateTimeFormatterBuilder appendLiteral2 = appendLiteral.appendValue(chronoField, 2).appendLiteral(':');
                ChronoField chronoField2 = ChronoField.MINUTE_OF_HOUR;
                DateTimeFormatterBuilder appendLiteral3 = appendLiteral2.appendValue(chronoField2, 2).appendLiteral(':');
                ChronoField chronoField3 = ChronoField.SECOND_OF_MINUTE;
                DateTimeFormatterBuilder appendValue = appendLiteral3.appendValue(chronoField3, 2);
                ChronoField chronoField4 = ChronoField.NANO_OF_SECOND;
                appendValue.getClass();
                appendValue.b(new f(chronoField4));
                d dVar = appendValue.appendLiteral('Z').toFormatter().a;
                if (dVar.b) {
                    dVar = new d(dVar.a, false);
                }
                p pVar2 = new p(pVar.a);
                pVar2.b = pVar.b;
                pVar2.c = pVar.c;
                int m = dVar.m(pVar2, charSequence, i);
                if (m < 0) {
                    return m;
                }
                long longValue = pVar2.d(ChronoField.YEAR).longValue();
                int intValue = pVar2.d(ChronoField.MONTH_OF_YEAR).intValue();
                int intValue2 = pVar2.d(ChronoField.DAY_OF_MONTH).intValue();
                int intValue3 = pVar2.d(chronoField).intValue();
                int intValue4 = pVar2.d(chronoField2).intValue();
                Long d = pVar2.d(chronoField3);
                Long d2 = pVar2.d(chronoField4);
                int intValue5 = d != null ? d.intValue() : 0;
                int intValue6 = d2 != null ? d2.intValue() : 0;
                if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
                    intValue3 = 0;
                } else {
                    if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
                        pVar.c().d = true;
                        intValue5 = 59;
                    }
                    i3 = 0;
                }
                int i4 = ((int) longValue) % 10000;
                try {
                    LocalDateTime localDateTime = LocalDateTime.MIN;
                    LocalDate of = LocalDate.of(i4, intValue, intValue2);
                    LocalTime of2 = LocalTime.of(intValue3, intValue4, intValue5, 0);
                    return pVar.f(chronoField4, intValue6, i, pVar.f(ChronoField.INSTANT_SECONDS, j$.com.android.tools.r8.a.n(new LocalDateTime(of, of2).c0(of.g0(i3), of2), ZoneOffset.UTC) + j$.com.android.tools.r8.a.R(longValue / 10000, 315569520000L), i, m));
                } catch (RuntimeException unused) {
                    return ~i;
                }
            default:
                int length = charSequence.length();
                if (i > length) {
                    throw new IndexOutOfBoundsException();
                }
                if (i != length) {
                    char charAt = charSequence.charAt(i);
                    if (charAt == '+' || charAt == '-') {
                        return a(pVar, charSequence, i, i, i.e);
                    }
                    int i5 = i + 2;
                    if (length >= i5) {
                        char charAt2 = charSequence.charAt(i + 1);
                        if (pVar.a(charAt, 'U') && pVar.a(charAt2, 'T')) {
                            int i6 = i + 3;
                            return (length < i6 || !pVar.a(charSequence.charAt(i5), 'C')) ? a(pVar, charSequence, i, i5, i.f) : a(pVar, charSequence, i, i6, i.f);
                        }
                        if (pVar.a(charAt, 'G') && length >= (i2 = i + 3) && pVar.a(charAt2, 'M') && pVar.a(charSequence.charAt(i5), 'T')) {
                            int i7 = i + 4;
                            if (length < i7 || !pVar.a(charSequence.charAt(i2), '0')) {
                                return a(pVar, charSequence, i, i2, i.f);
                            }
                            pVar.e(ZoneId.of("GMT0"));
                            return i7;
                        }
                    }
                    Set<String> set = j$.time.zone.h.d;
                    int size = set.size();
                    Map.Entry entry = pVar.b ? b : c;
                    if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                        synchronized (this) {
                            try {
                                entry = pVar.b ? b : c;
                                if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                                    Integer valueOf = Integer.valueOf(size);
                                    k kVar = pVar.b ? new k("", null, null) : new j("", null, null);
                                    for (String str : set) {
                                        kVar.a(str, str);
                                    }
                                    entry = new AbstractMap.SimpleImmutableEntry(valueOf, kVar);
                                    if (pVar.b) {
                                        b = entry;
                                    } else {
                                        c = entry;
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    k kVar2 = (k) entry.getValue();
                    ParsePosition parsePosition = new ParsePosition(i);
                    String c2 = kVar2.c(charSequence, parsePosition);
                    if (c2 != null) {
                        pVar.e(ZoneId.of(c2));
                        return parsePosition.getIndex();
                    }
                    if (pVar.a(charAt, 'Z')) {
                        pVar.e(ZoneOffset.UTC);
                        return i + 1;
                    }
                }
                return ~i;
        }
    }

    public final String toString() {
        switch (this.a) {
            case 0:
                return "Instant()";
            default:
                return "ZoneRegionId()";
        }
    }
}
