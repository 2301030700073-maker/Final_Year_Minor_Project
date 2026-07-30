package defpackage;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.ConnectionResult;
import com.joeykrim.rootcheck.R;
import j$.util.DesugarTimeZone;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class NJ {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicReference<C3558qH> f2363do = new AtomicReference<>();

    /* renamed from: case, reason: not valid java name */
    public static String m1514case(Resources resources, SimpleDateFormat simpleDateFormat) {
        String pattern = simpleDateFormat.toPattern();
        String string = resources.getString(R.string.mtrl_picker_text_input_year_abbr);
        String string2 = resources.getString(R.string.mtrl_picker_text_input_month_abbr);
        String string3 = resources.getString(R.string.mtrl_picker_text_input_day_abbr);
        if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage())) {
            pattern = pattern.replaceAll("d+", "d").replaceAll("M+", "M").replaceAll("y+", "y");
        }
        return pattern.replace("d", string3).replace("M", string2).replace("y", string);
    }

    /* renamed from: do, reason: not valid java name */
    public static long m1515do(long j) {
        Calendar m1521this = m1521this(null);
        m1521this.setTimeInMillis(j);
        return m1520new(m1521this).getTimeInMillis();
    }

    /* renamed from: else, reason: not valid java name */
    public static DateFormat m1516else(int i, Locale locale) {
        DateFormat dateInstance = DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        return dateInstance;
    }

    @TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
    /* renamed from: for, reason: not valid java name */
    public static android.icu.text.DateFormat m1517for(String str, Locale locale) {
        android.icu.text.DateFormat instanceForSkeleton;
        TimeZone timeZone;
        DisplayContext displayContext;
        instanceForSkeleton = android.icu.text.DateFormat.getInstanceForSkeleton(str, locale);
        timeZone = TimeZone.getTimeZone("UTC");
        instanceForSkeleton.setTimeZone(timeZone);
        displayContext = DisplayContext.CAPITALIZATION_FOR_STANDALONE;
        instanceForSkeleton.setContext(displayContext);
        return instanceForSkeleton;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Calendar m1518goto() {
        C3558qH c3558qH = f2363do.get();
        if (c3558qH == null) {
            c3558qH = C3558qH.f15087do;
        }
        java.util.TimeZone timeZone = c3558qH.f15089do;
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = c3558qH.f15088do;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        return calendar;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m1519if(int i, int i2, String str, String str2) {
        while (i2 >= 0 && i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            if (str.charAt(i2) == '\'') {
                do {
                    i2 += i;
                    if (i2 >= 0 && i2 < str.length()) {
                    }
                } while (str.charAt(i2) != '\'');
            }
            i2 += i;
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static Calendar m1520new(Calendar calendar) {
        Calendar m1521this = m1521this(calendar);
        Calendar m1521this2 = m1521this(null);
        m1521this2.set(m1521this.get(1), m1521this.get(2), m1521this.get(5));
        return m1521this2;
    }

    /* renamed from: this, reason: not valid java name */
    public static Calendar m1521this(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(DesugarTimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    /* renamed from: try, reason: not valid java name */
    public static SimpleDateFormat m1522try() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) DateFormat.getDateInstance(3, Locale.getDefault())).toPattern().replaceAll("[^dMy/\\-.]", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replaceAll("d{1,2}", "dd").replaceAll("M{1,2}", "MM").replaceAll("y{1,4}", "yyyy").replaceAll("\\.$", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replaceAll("My", "M/y"), Locale.getDefault());
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }
}
