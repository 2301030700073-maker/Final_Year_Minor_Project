package j$.time.format;

import j$.nio.file.x;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalField;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class DateTimeFormatterBuilder {
    public static final j$.desugar.sun.nio.fs.m f = new j$.desugar.sun.nio.fs.m(5);
    public DateTimeFormatterBuilder a;
    public final DateTimeFormatterBuilder b;
    public final List c;
    public final boolean d;
    public int e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', ChronoField.ERA);
        hashMap.put('y', ChronoField.YEAR_OF_ERA);
        hashMap.put('u', ChronoField.YEAR);
        j$.time.temporal.f fVar = j$.time.temporal.h.a;
        hashMap.put('Q', fVar);
        hashMap.put('q', fVar);
        ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
        hashMap.put('M', chronoField);
        hashMap.put('L', chronoField);
        hashMap.put('D', ChronoField.DAY_OF_YEAR);
        hashMap.put('d', ChronoField.DAY_OF_MONTH);
        hashMap.put('F', ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        ChronoField chronoField2 = ChronoField.DAY_OF_WEEK;
        hashMap.put('E', chronoField2);
        hashMap.put('c', chronoField2);
        hashMap.put('e', chronoField2);
        hashMap.put('a', ChronoField.AMPM_OF_DAY);
        hashMap.put('H', ChronoField.HOUR_OF_DAY);
        hashMap.put('k', ChronoField.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', ChronoField.HOUR_OF_AMPM);
        hashMap.put('h', ChronoField.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', ChronoField.MINUTE_OF_HOUR);
        hashMap.put('s', ChronoField.SECOND_OF_MINUTE);
        ChronoField chronoField3 = ChronoField.NANO_OF_SECOND;
        hashMap.put('S', chronoField3);
        hashMap.put('A', ChronoField.MILLI_OF_DAY);
        hashMap.put('n', chronoField3);
        hashMap.put('N', ChronoField.NANO_OF_DAY);
        hashMap.put('g', j$.time.temporal.j.a);
    }

    public DateTimeFormatterBuilder() {
        this.a = this;
        this.c = new ArrayList();
        this.e = -1;
        this.b = null;
        this.d = false;
    }

    public final void a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        d dVar = dateTimeFormatter.a;
        if (dVar.b) {
            dVar = new d(dVar.a, false);
        }
        b(dVar);
    }

    public DateTimeFormatterBuilder appendLiteral(String str) {
        Objects.requireNonNull(str, "literal");
        if (!str.isEmpty()) {
            if (str.length() == 1) {
                b(new c(str.charAt(0)));
                return this;
            }
            b(new n(str));
        }
        return this;
    }

    public DateTimeFormatterBuilder appendOffset(String str, String str2) {
        b(new i(str, str2));
        return this;
    }

    public DateTimeFormatterBuilder appendOffsetId() {
        b(i.e);
        return this;
    }

    public DateTimeFormatterBuilder appendText(TemporalField temporalField, Map<Long, String> map) {
        Objects.requireNonNull(temporalField, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        w wVar = w.FULL;
        b(new o(temporalField, wVar, new a(new x(Collections.singletonMap(wVar, linkedHashMap)))));
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField, int i, int i2, SignStyle signStyle) {
        if (i == i2 && signStyle == SignStyle.NOT_NEGATIVE) {
            return appendValue(temporalField, i2);
        }
        Objects.requireNonNull(temporalField, "field");
        Objects.requireNonNull(signStyle, "signStyle");
        if (i < 1 || i > 19) {
            j$.nio.file.j.l("The minimum width must be from 1 to 19 inclusive but was ", i);
            return null;
        }
        if (i2 < 1 || i2 > 19) {
            j$.nio.file.j.l("The maximum width must be from 1 to 19 inclusive but was ", i2);
            return null;
        }
        if (i2 >= i) {
            c(new h(temporalField, i, i2, signStyle));
            return this;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
    }

    public DateTimeFormatterBuilder appendValueReduced(TemporalField temporalField, int i, int i2, int i3) {
        Objects.requireNonNull(temporalField, "field");
        l lVar = new l(temporalField, i, i2, i3, 0);
        if (i < 1 || i > 10) {
            j$.nio.file.j.l("The minWidth must be from 1 to 10 inclusive but was ", i);
            return null;
        }
        if (i2 < 1 || i2 > 10) {
            j$.nio.file.j.l("The maxWidth must be from 1 to 10 inclusive but was ", i);
            return null;
        }
        if (i2 < i) {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
        long j = i3;
        if (!temporalField.u().e(j)) {
            j$.nio.file.j.c("The base value must be within the range of the field");
            return null;
        }
        if (j + h.f[i2] <= 2147483647L) {
            c(lVar);
            return this;
        }
        j$.nio.file.j.k("Unable to add printer-parser as the range exceeds the capacity of an int");
        return null;
    }

    public final int b(e eVar) {
        Objects.requireNonNull(eVar, "pp");
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.a;
        dateTimeFormatterBuilder.getClass();
        ((ArrayList) dateTimeFormatterBuilder.c).add(eVar);
        this.a.e = -1;
        return ((ArrayList) r1.c).size() - 1;
    }

    public final void c(h hVar) {
        h d;
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.a;
        int i = dateTimeFormatterBuilder.e;
        if (i < 0) {
            dateTimeFormatterBuilder.e = b(hVar);
            return;
        }
        h hVar2 = (h) ((ArrayList) dateTimeFormatterBuilder.c).get(i);
        int i2 = hVar.b;
        int i3 = hVar.c;
        if (i2 == i3 && hVar.d == SignStyle.NOT_NEGATIVE) {
            d = hVar2.e(i3);
            b(hVar.d());
            this.a.e = i;
        } else {
            d = hVar2.d();
            this.a.e = b(hVar);
        }
        ((ArrayList) this.a.c).set(i, d);
    }

    public final void d() {
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.a;
        if (dateTimeFormatterBuilder.b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        int size = ((ArrayList) dateTimeFormatterBuilder.c).size();
        DateTimeFormatterBuilder dateTimeFormatterBuilder2 = this.a;
        if (size <= 0) {
            this.a = dateTimeFormatterBuilder2.b;
            return;
        }
        d dVar = new d(dateTimeFormatterBuilder2.c, dateTimeFormatterBuilder2.d);
        this.a = this.a.b;
        b(dVar);
    }

    public final void e() {
        DateTimeFormatterBuilder dateTimeFormatterBuilder = this.a;
        dateTimeFormatterBuilder.e = -1;
        this.a = new DateTimeFormatterBuilder(dateTimeFormatterBuilder);
    }

    public final DateTimeFormatter f(v vVar, j$.time.chrono.j jVar) {
        return g(Locale.getDefault(), vVar, jVar);
    }

    public final DateTimeFormatter g(Locale locale, v vVar, j$.time.chrono.j jVar) {
        Objects.requireNonNull(locale, "locale");
        while (this.a.b != null) {
            d();
        }
        return new DateTimeFormatter(new d(this.c, false), locale, t.a, vVar, jVar, null);
    }

    public DateTimeFormatterBuilder parseCaseInsensitive() {
        b(m.INSENSITIVE);
        return this;
    }

    public DateTimeFormatterBuilder parseLenient() {
        b(m.LENIENT);
        return this;
    }

    public DateTimeFormatter toFormatter() {
        return g(Locale.getDefault(), v.SMART, null);
    }

    public DateTimeFormatterBuilder(DateTimeFormatterBuilder dateTimeFormatterBuilder) {
        this.a = this;
        this.c = new ArrayList();
        this.e = -1;
        this.b = dateTimeFormatterBuilder;
        this.d = true;
    }

    public DateTimeFormatterBuilder appendLiteral(char c) {
        b(new c(c));
        return this;
    }

    public DateTimeFormatterBuilder appendValue(TemporalField temporalField, int i) {
        Objects.requireNonNull(temporalField, "field");
        if (i >= 1 && i <= 19) {
            c(new h(temporalField, i, i, SignStyle.NOT_NEGATIVE));
            return this;
        }
        j$.nio.file.j.l("The width must be from 1 to 19 inclusive but was ", i);
        return null;
    }
}
