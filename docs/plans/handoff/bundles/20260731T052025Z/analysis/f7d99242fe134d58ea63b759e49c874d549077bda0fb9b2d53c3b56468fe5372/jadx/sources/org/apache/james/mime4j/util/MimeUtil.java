package org.apache.james.mime4j.util;

import j$.time.format.DateTimeFormatterBuilder;
import j$.time.format.SignStyle;
import j$.time.temporal.ChronoField;
import j$.util.TimeZoneRetargetClass;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MimeUtil {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        new Random();
        DateTimeFormatterBuilder parseLenient = new DateTimeFormatterBuilder().parseCaseInsensitive().parseLenient();
        ChronoField chronoField = ChronoField.DAY_OF_WEEK;
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        DateTimeFormatterBuilder appendLiteral = parseLenient.appendText(chronoField, hashMap).appendLiteral(", ").appendValue(ChronoField.DAY_OF_MONTH, 1, 2, SignStyle.NOT_NEGATIVE).appendLiteral(' ');
        ChronoField chronoField2 = ChronoField.MONTH_OF_YEAR;
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
        appendLiteral.appendText(chronoField2, hashMap2).appendLiteral(' ').appendValueReduced(ChronoField.YEAR, 4, 4, 1970).appendLiteral(' ').appendValue(ChronoField.HOUR_OF_DAY, 2).appendLiteral(':').appendValue(ChronoField.MINUTE_OF_HOUR, 2).appendLiteral(':').appendValue(ChronoField.SECOND_OF_MINUTE, 2).appendLiteral(' ').appendOffset("+HHMM", "+0000").toFormatter().withZone(TimeZoneRetargetClass.toZoneId(TimeZone.getDefault())).withLocale(Locale.US);
    }

    public static boolean isMessage(String str) {
        return str != null && str.equalsIgnoreCase("message/rfc822");
    }
}
