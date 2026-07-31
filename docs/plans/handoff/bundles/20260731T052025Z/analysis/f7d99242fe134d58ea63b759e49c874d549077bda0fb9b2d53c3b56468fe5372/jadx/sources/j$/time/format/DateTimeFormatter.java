package j$.time.format;

import j$.time.DateTimeException;
import j$.time.ZoneId;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalQuery;
import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class DateTimeFormatter {
    public static final DateTimeFormatter g;
    public static final DateTimeFormatter h;
    public static final DateTimeFormatter i;
    public static final DateTimeFormatter j;
    public final d a;
    public final Locale b;
    public final t c;
    public final v d;
    public final j$.time.chrono.j e;
    public final ZoneId f;

    static {
        DateTimeFormatterBuilder dateTimeFormatterBuilder = new DateTimeFormatterBuilder();
        ChronoField chronoField = ChronoField.YEAR;
        SignStyle signStyle = SignStyle.EXCEEDS_PAD;
        DateTimeFormatterBuilder appendLiteral = dateTimeFormatterBuilder.appendValue(chronoField, 4, 10, signStyle).appendLiteral('-');
        ChronoField chronoField2 = ChronoField.MONTH_OF_YEAR;
        DateTimeFormatterBuilder appendLiteral2 = appendLiteral.appendValue(chronoField2, 2).appendLiteral('-');
        ChronoField chronoField3 = ChronoField.DAY_OF_MONTH;
        DateTimeFormatterBuilder appendValue = appendLiteral2.appendValue(chronoField3, 2);
        v vVar = v.STRICT;
        j$.time.chrono.q qVar = j$.time.chrono.q.c;
        DateTimeFormatter f = appendValue.f(vVar, qVar);
        g = f;
        DateTimeFormatterBuilder parseCaseInsensitive = new DateTimeFormatterBuilder().parseCaseInsensitive();
        parseCaseInsensitive.a(f);
        parseCaseInsensitive.appendOffsetId().f(vVar, qVar);
        DateTimeFormatterBuilder parseCaseInsensitive2 = new DateTimeFormatterBuilder().parseCaseInsensitive();
        parseCaseInsensitive2.a(f);
        parseCaseInsensitive2.e();
        parseCaseInsensitive2.appendOffsetId().f(vVar, qVar);
        DateTimeFormatterBuilder dateTimeFormatterBuilder2 = new DateTimeFormatterBuilder();
        ChronoField chronoField4 = ChronoField.HOUR_OF_DAY;
        DateTimeFormatterBuilder appendLiteral3 = dateTimeFormatterBuilder2.appendValue(chronoField4, 2).appendLiteral(':');
        ChronoField chronoField5 = ChronoField.MINUTE_OF_HOUR;
        DateTimeFormatterBuilder appendValue2 = appendLiteral3.appendValue(chronoField5, 2);
        appendValue2.e();
        DateTimeFormatterBuilder appendLiteral4 = appendValue2.appendLiteral(':');
        ChronoField chronoField6 = ChronoField.SECOND_OF_MINUTE;
        DateTimeFormatterBuilder appendValue3 = appendLiteral4.appendValue(chronoField6, 2);
        appendValue3.e();
        appendValue3.b(new f(ChronoField.NANO_OF_SECOND));
        DateTimeFormatter f2 = appendValue3.f(vVar, null);
        h = f2;
        DateTimeFormatterBuilder parseCaseInsensitive3 = new DateTimeFormatterBuilder().parseCaseInsensitive();
        parseCaseInsensitive3.a(f2);
        parseCaseInsensitive3.appendOffsetId().f(vVar, null);
        DateTimeFormatterBuilder parseCaseInsensitive4 = new DateTimeFormatterBuilder().parseCaseInsensitive();
        parseCaseInsensitive4.a(f2);
        parseCaseInsensitive4.e();
        parseCaseInsensitive4.appendOffsetId().f(vVar, null);
        DateTimeFormatterBuilder parseCaseInsensitive5 = new DateTimeFormatterBuilder().parseCaseInsensitive();
        parseCaseInsensitive5.a(f);
        DateTimeFormatterBuilder appendLiteral5 = parseCaseInsensitive5.appendLiteral('T');
        appendLiteral5.a(f2);
        DateTimeFormatter f3 = appendLiteral5.f(vVar, qVar);
        i = f3;
        DateTimeFormatterBuilder parseCaseInsensitive6 = new DateTimeFormatterBuilder().parseCaseInsensitive();
        parseCaseInsensitive6.a(f3);
        DateTimeFormatterBuilder appendOffsetId = parseCaseInsensitive6.parseLenient().appendOffsetId();
        m mVar = m.STRICT;
        appendOffsetId.b(mVar);
        DateTimeFormatter f4 = appendOffsetId.f(vVar, qVar);
        DateTimeFormatterBuilder dateTimeFormatterBuilder3 = new DateTimeFormatterBuilder();
        dateTimeFormatterBuilder3.a(f4);
        dateTimeFormatterBuilder3.e();
        DateTimeFormatterBuilder appendLiteral6 = dateTimeFormatterBuilder3.appendLiteral('[');
        m mVar2 = m.SENSITIVE;
        appendLiteral6.b(mVar2);
        int i2 = 1;
        appendLiteral6.b(new g(i2));
        appendLiteral6.appendLiteral(']').f(vVar, qVar);
        DateTimeFormatterBuilder dateTimeFormatterBuilder4 = new DateTimeFormatterBuilder();
        dateTimeFormatterBuilder4.a(f3);
        dateTimeFormatterBuilder4.e();
        DateTimeFormatterBuilder appendOffsetId2 = dateTimeFormatterBuilder4.appendOffsetId();
        appendOffsetId2.e();
        DateTimeFormatterBuilder appendLiteral7 = appendOffsetId2.appendLiteral('[');
        appendLiteral7.b(mVar2);
        appendLiteral7.b(new g(i2));
        appendLiteral7.appendLiteral(']').f(vVar, qVar);
        DateTimeFormatterBuilder appendValue4 = new DateTimeFormatterBuilder().parseCaseInsensitive().appendValue(chronoField, 4, 10, signStyle).appendLiteral('-').appendValue(ChronoField.DAY_OF_YEAR, 3);
        appendValue4.e();
        appendValue4.appendOffsetId().f(vVar, qVar);
        DateTimeFormatterBuilder appendLiteral8 = new DateTimeFormatterBuilder().parseCaseInsensitive().appendValue(j$.time.temporal.h.c, 4, 10, signStyle).appendLiteral("-W").appendValue(j$.time.temporal.h.b, 2).appendLiteral('-');
        ChronoField chronoField7 = ChronoField.DAY_OF_WEEK;
        DateTimeFormatterBuilder appendValue5 = appendLiteral8.appendValue(chronoField7, 1);
        appendValue5.e();
        appendValue5.appendOffsetId().f(vVar, qVar);
        DateTimeFormatterBuilder parseCaseInsensitive7 = new DateTimeFormatterBuilder().parseCaseInsensitive();
        parseCaseInsensitive7.getClass();
        parseCaseInsensitive7.b(new g(0));
        j = parseCaseInsensitive7.f(vVar, null);
        DateTimeFormatterBuilder appendValue6 = new DateTimeFormatterBuilder().parseCaseInsensitive().appendValue(chronoField, 4).appendValue(chronoField2, 2).appendValue(chronoField3, 2);
        appendValue6.e();
        DateTimeFormatterBuilder appendOffset = appendValue6.parseLenient().appendOffset("+HHMMss", "Z");
        appendOffset.b(mVar);
        appendOffset.f(vVar, qVar);
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
        DateTimeFormatterBuilder parseLenient = new DateTimeFormatterBuilder().parseCaseInsensitive().parseLenient();
        parseLenient.e();
        DateTimeFormatterBuilder appendLiteral9 = parseLenient.appendText(chronoField7, hashMap).appendLiteral(", ");
        appendLiteral9.d();
        DateTimeFormatterBuilder appendValue7 = appendLiteral9.appendValue(chronoField3, 1, 2, SignStyle.NOT_NEGATIVE).appendLiteral(' ').appendText(chronoField2, hashMap2).appendLiteral(' ').appendValue(chronoField, 4).appendLiteral(' ').appendValue(chronoField4, 2).appendLiteral(':').appendValue(chronoField5, 2);
        appendValue7.e();
        DateTimeFormatterBuilder appendValue8 = appendValue7.appendLiteral(':').appendValue(chronoField6, 2);
        appendValue8.d();
        appendValue8.appendLiteral(' ').appendOffset("+HHMM", "GMT").f(v.SMART, qVar);
    }

    public DateTimeFormatter(d dVar, Locale locale, t tVar, v vVar, j$.time.chrono.j jVar, ZoneId zoneId) {
        this.a = (d) Objects.requireNonNull(dVar, "printerParser");
        this.b = (Locale) Objects.requireNonNull(locale, "locale");
        this.c = (t) Objects.requireNonNull(tVar, "decimalStyle");
        this.d = (v) Objects.requireNonNull(vVar, "resolverStyle");
        this.e = jVar;
        this.f = zoneId;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x031c, code lost:
    
        if (((java.util.HashMap) r9.a).containsKey(j$.time.temporal.ChronoField.SECOND_OF_MINUTE) != false) goto L132;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.format.u a(java.lang.CharSequence r24) {
        /*
            Method dump skipped, instructions count: 1086
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.DateTimeFormatter.a(java.lang.CharSequence):j$.time.format.u");
    }

    public String format(TemporalAccessor temporalAccessor) {
        StringBuilder sb = new StringBuilder(32);
        d dVar = this.a;
        Objects.requireNonNull(temporalAccessor, "temporal");
        Objects.requireNonNull(sb, "appendable");
        try {
            dVar.k(new r(temporalAccessor, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    public <T> T parse(CharSequence charSequence, TemporalQuery<T> temporalQuery) {
        String charSequence2;
        Objects.requireNonNull(charSequence, "text");
        Objects.requireNonNull(temporalQuery, "query");
        try {
            return (T) a(charSequence).L(temporalQuery);
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

    public final String toString() {
        String dVar = this.a.toString();
        return dVar.startsWith("[") ? dVar : dVar.substring(1, dVar.length() - 1);
    }

    public DateTimeFormatter withLocale(Locale locale) {
        if (this.b.equals(locale)) {
            return this;
        }
        return new DateTimeFormatter(this.a, locale, this.c, this.d, this.e, this.f);
    }

    public DateTimeFormatter withZone(ZoneId zoneId) {
        if (Objects.equals(this.f, zoneId)) {
            return this;
        }
        return new DateTimeFormatter(this.a, this.b, this.c, this.d, this.e, zoneId);
    }
}
