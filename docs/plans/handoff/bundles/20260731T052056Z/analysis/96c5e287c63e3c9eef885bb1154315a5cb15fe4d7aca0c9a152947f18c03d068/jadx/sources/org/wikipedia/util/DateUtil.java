package org.wikipedia.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.icu.text.RelativeDateTimeFormatter;
import android.os.Build;
import android.text.format.DateFormat;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.format.DateTimeFormatter;
import j$.time.format.FormatStyle;
import j$.util.DesugarDate;
import j$.util.DesugarTimeZone;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.uuid.UuidKt;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.R;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DateUtil {
    public static final ConcurrentHashMap DATE_FORMATS = new ConcurrentHashMap();
    public static final ConcurrentHashMap DATE_TIME_FORMATTERS = new ConcurrentHashMap();

    public static Date dbDateParse(String str) {
        str.getClass();
        Locale locale = Locale.ROOT;
        locale.getClass();
        Date parse = getCachedDateFormat("yyyyMMddHHmmss", locale, true, false).parse(str);
        parse.getClass();
        return parse;
    }

    public static SimpleDateFormat getCachedDateFormat(String str, Locale locale, boolean z, boolean z2) {
        ConcurrentHashMap concurrentHashMap = DATE_FORMATS;
        Object obj = concurrentHashMap.get(str);
        Object obj2 = obj;
        if (obj == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(z2 ? DateFormat.getBestDateTimePattern(locale, str) : str, locale);
            if (z) {
                simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            }
            Object putIfAbsent = concurrentHashMap.putIfAbsent(str, simpleDateFormat);
            obj2 = simpleDateFormat;
            if (putIfAbsent != null) {
                obj2 = putIfAbsent;
            }
        }
        return (SimpleDateFormat) obj2;
    }

    public static DateTimeFormatter getCachedDateTimeFormatter(String str, Locale locale, boolean z) {
        Object obj = DATE_TIME_FORMATTERS.get(str);
        if (obj != null) {
            return (DateTimeFormatter) obj;
        }
        if (z) {
            str = DateFormat.getBestDateTimePattern(locale, str);
        }
        DateTimeFormatter ofPattern = DateTimeFormatter.ofPattern(str, locale);
        ofPattern.getClass();
        return ofPattern;
    }

    public static String getDateStringWithSkeletonPattern(String str, Date date) {
        Locale locale = Locale.getDefault();
        locale.getClass();
        String format = getCachedDateFormat(str, locale, false, true).format(date);
        format.getClass();
        return format;
    }

    public static String getMMMMdYYYY(Date date, boolean z) {
        date.getClass();
        Locale locale = Locale.getDefault();
        locale.getClass();
        String format = getCachedDateFormat("MMMM d, yyyy", locale, z, false).format(date);
        format.getClass();
        return format;
    }

    public static String getShortDateString(LocalDate localDate) {
        localDate.getClass();
        String format = DateTimeFormatter.ofLocalizedDate(FormatStyle.MEDIUM).format(localDate);
        format.getClass();
        return format;
    }

    public static String getTimeAndDateString(Context context, String str) {
        str.getClass();
        return getDateStringWithSkeletonPattern(DateFormat.is24HourFormat(context) ? "HH:mm, MMM d, yyyy" : "hh:mm a, MMM d, yyyy", iso8601DateParse(str));
    }

    public static String getYMDDateString(LocalDate localDate) {
        Locale locale = Locale.getDefault();
        locale.getClass();
        String format = getCachedDateTimeFormatter("yyyyMMdd", locale, false).format(localDate);
        format.getClass();
        return format;
    }

    public static String getYearDifferenceString(int i, Context context, String str) {
        Resources resources;
        context.getClass();
        str.getClass();
        int i2 = Calendar.getInstance().get(1) - i;
        KProperty[] kPropertyArr = ContextKt.$$delegatedProperties;
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        Locale locale = new Locale(str);
        Locale locale2 = UuidKt.getLocales(configuration).mImpl.get(0);
        if (Intrinsics.areEqual(locale2 != null ? locale2.getLanguage() : null, locale.getLanguage())) {
            resources = context.getResources();
            resources.getClass();
        } else {
            NodeUtils.setDesiredLocale(configuration, locale);
            Resources resources2 = context.createConfigurationContext(configuration).getResources();
            configuration.setLocale(locale2);
            context.createConfigurationContext(configuration);
            resources2.getClass();
            resources = resources2;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            RelativeDateTimeFormatter relativeDateTimeFormatter = RelativeDateTimeFormatter.getInstance(resources.getConfiguration().getLocales().getFirstMatch(new String[]{str}));
            String format = i2 != -1 ? i2 != 0 ? i2 != 1 ? relativeDateTimeFormatter.format(i2, RelativeDateTimeFormatter.Direction.LAST, RelativeDateTimeFormatter.RelativeUnit.YEARS) : relativeDateTimeFormatter.format(RelativeDateTimeFormatter.Direction.LAST, RelativeDateTimeFormatter.AbsoluteUnit.YEAR) : relativeDateTimeFormatter.format(RelativeDateTimeFormatter.Direction.THIS, RelativeDateTimeFormatter.AbsoluteUnit.YEAR) : relativeDateTimeFormatter.format(RelativeDateTimeFormatter.Direction.NEXT, RelativeDateTimeFormatter.AbsoluteUnit.YEAR);
            format.getClass();
            return format;
        }
        if (i2 == 0) {
            return ContextKt.getString(context, str, R.string.this_year, new Object[0]);
        }
        String quantityString = resources.getQuantityString(R.plurals.diff_years, i2, Integer.valueOf(i2));
        quantityString.getClass();
        return quantityString;
    }

    public static Date iso8601DateParse(String str) {
        str.getClass();
        Date from = DesugarDate.from(Instant.parse(str));
        from.getClass();
        return from;
    }

    public static String yearToStringWithEra(int i) {
        Date time = new GregorianCalendar(i < 0 ? i + 1 : i, 1, 1).getTime();
        time.getClass();
        return getDateStringWithSkeletonPattern(i < 0 ? "y GG" : "y", time);
    }
}
