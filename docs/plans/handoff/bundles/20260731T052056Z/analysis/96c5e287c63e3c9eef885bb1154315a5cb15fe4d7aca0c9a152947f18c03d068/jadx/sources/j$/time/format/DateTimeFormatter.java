package j$.time.format;

import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_DATE_TIME;
    public static final DateTimeFormatter ISO_LOCAL_DATE;
    public static final DateTimeFormatter ISO_OFFSET_DATE;
    public static final DateTimeFormatter f;
    public static final DateTimeFormatter g;
    public final d a;
    public final Locale b;
    public final c0 c;
    public final e0 d;
    public final j$.time.chrono.a e;

    static {
        v vVar = new v();
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        f0 f0Var = f0.EXCEEDS_PAD;
        vVar.n(aVar, 4, 10, f0Var);
        vVar.d('-');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        vVar.m(aVar2, 2);
        vVar.d('-');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        vVar.m(aVar3, 2);
        e0 e0Var = e0.STRICT;
        j$.time.chrono.p pVar = j$.time.chrono.p.c;
        DateTimeFormatter q = vVar.q(e0Var, pVar);
        ISO_LOCAL_DATE = q;
        v vVar2 = new v();
        q qVar = q.INSENSITIVE;
        vVar2.c(qVar);
        vVar2.a(q);
        k kVar = k.e;
        vVar2.c(kVar);
        ISO_OFFSET_DATE = vVar2.q(e0Var, pVar);
        v vVar3 = new v();
        vVar3.c(qVar);
        vVar3.a(q);
        vVar3.p();
        vVar3.c(kVar);
        vVar3.q(e0Var, pVar);
        v vVar4 = new v();
        j$.time.temporal.a aVar4 = j$.time.temporal.a.HOUR_OF_DAY;
        vVar4.m(aVar4, 2);
        vVar4.d(':');
        j$.time.temporal.a aVar5 = j$.time.temporal.a.MINUTE_OF_HOUR;
        vVar4.m(aVar5, 2);
        vVar4.p();
        vVar4.d(':');
        j$.time.temporal.a aVar6 = j$.time.temporal.a.SECOND_OF_MINUTE;
        vVar4.m(aVar6, 2);
        vVar4.p();
        vVar4.b(j$.time.temporal.a.NANO_OF_SECOND, 0, 9, true);
        DateTimeFormatter q2 = vVar4.q(e0Var, null);
        v vVar5 = new v();
        vVar5.c(qVar);
        vVar5.a(q2);
        vVar5.c(kVar);
        vVar5.q(e0Var, null);
        v vVar6 = new v();
        vVar6.c(qVar);
        vVar6.a(q2);
        vVar6.p();
        vVar6.c(kVar);
        vVar6.q(e0Var, null);
        v vVar7 = new v();
        vVar7.c(qVar);
        vVar7.a(q);
        vVar7.d('T');
        vVar7.a(q2);
        DateTimeFormatter q3 = vVar7.q(e0Var, pVar);
        f = q3;
        v vVar8 = new v();
        vVar8.c(qVar);
        vVar8.a(q3);
        q qVar2 = q.LENIENT;
        vVar8.c(qVar2);
        vVar8.c(kVar);
        q qVar3 = q.STRICT;
        vVar8.c(qVar3);
        DateTimeFormatter q4 = vVar8.q(e0Var, pVar);
        v vVar9 = new v();
        vVar9.a(q4);
        vVar9.p();
        vVar9.d('[');
        q qVar4 = q.SENSITIVE;
        vVar9.c(qVar4);
        j$.time.f fVar = v.h;
        vVar9.c(new t(fVar, "ZoneRegionId()"));
        vVar9.d(']');
        vVar9.q(e0Var, pVar);
        v vVar10 = new v();
        vVar10.a(q3);
        vVar10.p();
        vVar10.c(kVar);
        vVar10.p();
        vVar10.d('[');
        vVar10.c(qVar4);
        vVar10.c(new t(fVar, "ZoneRegionId()"));
        vVar10.d(']');
        ISO_DATE_TIME = vVar10.q(e0Var, pVar);
        v vVar11 = new v();
        vVar11.c(qVar);
        vVar11.n(aVar, 4, 10, f0Var);
        vVar11.d('-');
        vVar11.m(j$.time.temporal.a.DAY_OF_YEAR, 3);
        vVar11.p();
        vVar11.c(kVar);
        vVar11.q(e0Var, pVar);
        v vVar12 = new v();
        vVar12.c(qVar);
        vVar12.n(j$.time.temporal.i.c, 4, 10, f0Var);
        vVar12.e("-W");
        vVar12.m(j$.time.temporal.i.b, 2);
        vVar12.d('-');
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_WEEK;
        vVar12.m(aVar7, 1);
        vVar12.p();
        vVar12.c(kVar);
        vVar12.q(e0Var, pVar);
        v vVar13 = new v();
        vVar13.c(qVar);
        vVar13.c(new g());
        g = vVar13.q(e0Var, null);
        v vVar14 = new v();
        vVar14.c(qVar);
        vVar14.m(aVar, 4);
        vVar14.m(aVar2, 2);
        vVar14.m(aVar3, 2);
        vVar14.p();
        vVar14.c(qVar2);
        vVar14.g("+HHMMss", "Z");
        vVar14.c(qVar3);
        vVar14.q(e0Var, pVar);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        v vVar15 = new v();
        vVar15.c(qVar);
        vVar15.c(qVar2);
        vVar15.p();
        vVar15.i(aVar7, hashMap);
        vVar15.e(", ");
        vVar15.o();
        vVar15.n(aVar3, 1, 2, f0.NOT_NEGATIVE);
        vVar15.d(' ');
        vVar15.i(aVar2, hashMap2);
        vVar15.d(' ');
        vVar15.m(aVar, 4);
        vVar15.d(' ');
        vVar15.m(aVar4, 2);
        vVar15.d(':');
        vVar15.m(aVar5, 2);
        vVar15.p();
        vVar15.d(':');
        vVar15.m(aVar6, 2);
        vVar15.o();
        vVar15.d(' ');
        vVar15.g("+HHMM", "GMT");
        vVar15.q(e0.SMART, pVar);
    }

    public DateTimeFormatter(d dVar, Locale locale, e0 e0Var, j$.time.chrono.a aVar) {
        c0 c0Var = c0.a;
        this.a = (d) Objects.requireNonNull(dVar, "printerParser");
        this.b = (Locale) Objects.requireNonNull(locale, "locale");
        this.c = (c0) Objects.requireNonNull(c0Var, "decimalStyle");
        this.d = (e0) Objects.requireNonNull(e0Var, "resolverStyle");
        this.e = aVar;
    }

    public static DateTimeFormatter ofLocalizedDate(FormatStyle formatStyle) {
        Objects.requireNonNull(formatStyle, "dateStyle");
        v vVar = new v();
        if (formatStyle != null) {
            vVar.c(new i(formatStyle));
            return vVar.q(e0.SMART, j$.time.chrono.p.c);
        }
        j$.time.h.c("Either the date or time style must be non-null");
        return null;
    }

    public static DateTimeFormatter ofPattern(String str) {
        v vVar = new v();
        vVar.h(str);
        return vVar.r(Locale.getDefault(), e0.SMART, null);
    }

    public final Object a(CharSequence charSequence, j$.time.f fVar) {
        String charSequence2;
        Objects.requireNonNull(charSequence, "text");
        Objects.requireNonNull(fVar, "query");
        try {
            return b(charSequence).i(fVar);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            if (charSequence.length() > 64) {
                charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
            } else {
                charSequence2 = charSequence.toString();
            }
            DateTimeParseException dateTimeParseException = new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed: " + e2.getMessage(), e2);
            charSequence.toString();
            throw dateTimeParseException;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x0308, code lost:
    
        if (((java.util.HashMap) r8.a).containsKey(j$.time.temporal.a.SECOND_OF_MINUTE) != false) goto L127;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.format.d0 b(java.lang.CharSequence r24) {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.b(java.lang.CharSequence):j$.time.format.d0");
    }

    public final d c() {
        d dVar = this.a;
        return !dVar.b ? dVar : new d(dVar.a, false);
    }

    public String format(TemporalAccessor temporalAccessor) {
        StringBuilder sb = new StringBuilder(32);
        d dVar = this.a;
        Objects.requireNonNull(temporalAccessor, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            dVar.f(new y(temporalAccessor, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new j$.time.c(e.getMessage(), e);
        }
    }

    public final String toString() {
        String dVar = this.a.toString();
        return dVar.startsWith("[") ? dVar : dVar.substring(1, dVar.length() - 1);
    }

    public static DateTimeFormatter ofPattern(String str, Locale locale) {
        v vVar = new v();
        vVar.h(str);
        return vVar.r(locale, e0.SMART, null);
    }
}
