package j$.time.format;

import j$.time.DateTimeException;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter ISO_DATE;
    public static final DateTimeFormatter ISO_OFFSET_DATE_TIME;
    public static final DateTimeFormatter RFC_1123_DATE_TIME;
    public static final DateTimeFormatter f;
    public static final DateTimeFormatter g;
    public final d a;
    public final Locale b;
    public final c0 c;
    public final e0 d;
    public final j$.time.chrono.l e;

    static {
        v vVar = new v();
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        f0 f0Var = f0.EXCEEDS_PAD;
        vVar.o(aVar, 4, 10, f0Var);
        vVar.d('-');
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        vVar.n(aVar2, 2);
        vVar.d('-');
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        vVar.n(aVar3, 2);
        e0 e0Var = e0.STRICT;
        j$.time.chrono.s sVar = j$.time.chrono.s.c;
        DateTimeFormatter r = vVar.r(e0Var, sVar);
        f = r;
        v vVar2 = new v();
        q qVar = q.INSENSITIVE;
        vVar2.c(qVar);
        vVar2.a(r);
        k kVar = k.e;
        vVar2.c(kVar);
        vVar2.r(e0Var, sVar);
        v vVar3 = new v();
        vVar3.c(qVar);
        vVar3.a(r);
        vVar3.q();
        vVar3.c(kVar);
        ISO_DATE = vVar3.r(e0Var, sVar);
        v vVar4 = new v();
        j$.time.temporal.a aVar4 = j$.time.temporal.a.HOUR_OF_DAY;
        vVar4.n(aVar4, 2);
        vVar4.d(':');
        j$.time.temporal.a aVar5 = j$.time.temporal.a.MINUTE_OF_HOUR;
        vVar4.n(aVar5, 2);
        vVar4.q();
        vVar4.d(':');
        j$.time.temporal.a aVar6 = j$.time.temporal.a.SECOND_OF_MINUTE;
        vVar4.n(aVar6, 2);
        vVar4.q();
        vVar4.b(j$.time.temporal.a.NANO_OF_SECOND, 0, 9, true);
        DateTimeFormatter r2 = vVar4.r(e0Var, null);
        v vVar5 = new v();
        vVar5.c(qVar);
        vVar5.a(r2);
        vVar5.c(kVar);
        vVar5.r(e0Var, null);
        v vVar6 = new v();
        vVar6.c(qVar);
        vVar6.a(r2);
        vVar6.q();
        vVar6.c(kVar);
        vVar6.r(e0Var, null);
        v vVar7 = new v();
        vVar7.c(qVar);
        vVar7.a(r);
        vVar7.d('T');
        vVar7.a(r2);
        DateTimeFormatter r3 = vVar7.r(e0Var, sVar);
        v vVar8 = new v();
        vVar8.c(qVar);
        vVar8.a(r3);
        q qVar2 = q.LENIENT;
        vVar8.c(qVar2);
        vVar8.c(kVar);
        q qVar3 = q.STRICT;
        vVar8.c(qVar3);
        DateTimeFormatter r4 = vVar8.r(e0Var, sVar);
        ISO_OFFSET_DATE_TIME = r4;
        v vVar9 = new v();
        vVar9.a(r4);
        vVar9.q();
        vVar9.d('[');
        q qVar4 = q.SENSITIVE;
        vVar9.c(qVar4);
        j$.desugar.sun.nio.fs.m mVar = v.h;
        vVar9.c(new t(mVar, "ZoneRegionId()"));
        vVar9.d(']');
        vVar9.r(e0Var, sVar);
        v vVar10 = new v();
        vVar10.a(r3);
        vVar10.q();
        vVar10.c(kVar);
        vVar10.q();
        vVar10.d('[');
        vVar10.c(qVar4);
        vVar10.c(new t(mVar, "ZoneRegionId()"));
        vVar10.d(']');
        vVar10.r(e0Var, sVar);
        v vVar11 = new v();
        vVar11.c(qVar);
        vVar11.o(aVar, 4, 10, f0Var);
        vVar11.d('-');
        vVar11.n(j$.time.temporal.a.DAY_OF_YEAR, 3);
        vVar11.q();
        vVar11.c(kVar);
        vVar11.r(e0Var, sVar);
        v vVar12 = new v();
        vVar12.c(qVar);
        vVar12.o(j$.time.temporal.i.c, 4, 10, f0Var);
        vVar12.e("-W");
        vVar12.n(j$.time.temporal.i.b, 2);
        vVar12.d('-');
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_WEEK;
        vVar12.n(aVar7, 1);
        vVar12.q();
        vVar12.c(kVar);
        vVar12.r(e0Var, sVar);
        v vVar13 = new v();
        vVar13.c(qVar);
        vVar13.c(new g());
        g = vVar13.r(e0Var, null);
        v vVar14 = new v();
        vVar14.c(qVar);
        vVar14.n(aVar, 4);
        vVar14.n(aVar2, 2);
        vVar14.n(aVar3, 2);
        vVar14.q();
        vVar14.c(qVar2);
        vVar14.h("+HHMMss", "Z");
        vVar14.c(qVar3);
        vVar14.r(e0Var, sVar);
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
        vVar15.q();
        vVar15.j(aVar7, hashMap);
        vVar15.e(", ");
        vVar15.p();
        vVar15.o(aVar3, 1, 2, f0.NOT_NEGATIVE);
        vVar15.d(' ');
        vVar15.j(aVar2, hashMap2);
        vVar15.d(' ');
        vVar15.n(aVar, 4);
        vVar15.d(' ');
        vVar15.n(aVar4, 2);
        vVar15.d(':');
        vVar15.n(aVar5, 2);
        vVar15.q();
        vVar15.d(':');
        vVar15.n(aVar6, 2);
        vVar15.p();
        vVar15.d(' ');
        vVar15.h("+HHMM", "GMT");
        RFC_1123_DATE_TIME = vVar15.r(e0.SMART, sVar);
    }

    public DateTimeFormatter(d dVar, Locale locale, c0 c0Var, e0 e0Var, j$.time.chrono.l lVar) {
        this.a = (d) Objects.requireNonNull(dVar, "printerParser");
        this.b = (Locale) Objects.requireNonNull(locale, "locale");
        this.c = (c0) Objects.requireNonNull(c0Var, "decimalStyle");
        this.d = (e0) Objects.requireNonNull(e0Var, "resolverStyle");
        this.e = lVar;
    }

    public static DateTimeParseException a(CharSequence charSequence, RuntimeException runtimeException) {
        String charSequence2;
        if (charSequence.length() > 64) {
            charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
        } else {
            charSequence2 = charSequence.toString();
        }
        DateTimeParseException dateTimeParseException = new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed: " + runtimeException.getMessage(), runtimeException);
        charSequence.toString();
        return dateTimeParseException;
    }

    public static DateTimeFormatter ofLocalizedDate(FormatStyle formatStyle) {
        Objects.requireNonNull(formatStyle, "dateStyle");
        v vVar = new v();
        vVar.f(formatStyle, null);
        return vVar.r(e0.SMART, j$.time.chrono.s.c);
    }

    public static DateTimeFormatter ofLocalizedDateTime(FormatStyle formatStyle) {
        Objects.requireNonNull(formatStyle, "dateTimeStyle");
        v vVar = new v();
        vVar.f(formatStyle, formatStyle);
        return vVar.r(e0.SMART, j$.time.chrono.s.c);
    }

    public static DateTimeFormatter ofLocalizedTime(FormatStyle formatStyle) {
        Objects.requireNonNull(formatStyle, "timeStyle");
        v vVar = new v();
        vVar.f(null, formatStyle);
        return vVar.r(e0.SMART, j$.time.chrono.s.c);
    }

    public static DateTimeFormatter ofPattern(String str) {
        v vVar = new v();
        vVar.i(str);
        return vVar.s(Locale.getDefault(), e0.SMART, null);
    }

    public final Object b(CharSequence charSequence, j$.desugar.sun.nio.fs.m mVar) {
        Objects.requireNonNull(charSequence, "text");
        Objects.requireNonNull(mVar, "query");
        try {
            return c(charSequence).F(mVar);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw a(charSequence, e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x0314, code lost:
    
        if (((java.util.HashMap) r8.a).containsKey(j$.time.temporal.a.SECOND_OF_MINUTE) != false) goto L127;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.format.d0 c(java.lang.CharSequence r24) {
        /*
            Method dump skipped, instructions count: 1078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.c(java.lang.CharSequence):j$.time.format.d0");
    }

    public final d d() {
        d dVar = this.a;
        return !dVar.b ? dVar : new d(dVar.a, false);
    }

    public String format(TemporalAccessor temporalAccessor) {
        StringBuilder sb = new StringBuilder(32);
        d dVar = this.a;
        Objects.requireNonNull(temporalAccessor, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            dVar.k(new y(temporalAccessor, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    public TemporalAccessor parse(CharSequence charSequence) {
        Objects.requireNonNull(charSequence, "text");
        try {
            return c(charSequence);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw a(charSequence, e2);
        }
    }

    public final String toString() {
        String dVar = this.a.toString();
        return dVar.startsWith("[") ? dVar : dVar.substring(1, dVar.length() - 1);
    }

    public DateTimeFormatter withLocale(Locale locale) {
        if (this.b.equals(locale)) {
            return this;
        }
        return new DateTimeFormatter(this.a, locale, this.c, this.d, this.e);
    }

    public static DateTimeFormatter ofPattern(String str, Locale locale) {
        v vVar = new v();
        vVar.i(str);
        return vVar.s(locale, e0.SMART, null);
    }
}
