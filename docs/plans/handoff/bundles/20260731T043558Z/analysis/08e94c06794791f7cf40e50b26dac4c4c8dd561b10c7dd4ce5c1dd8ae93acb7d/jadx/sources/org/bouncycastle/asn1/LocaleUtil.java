package org.bouncycastle.asn1;

import com.allproperty.android.consumer.BuildConfig;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.bouncycastle.util.Longs;

/* loaded from: classes6.dex */
public class LocaleUtil {
    private static final Map localeCache = new HashMap();
    public static Locale EN_Locale = forEN();

    static Date epochAdjust(Date date) throws ParseException {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return date;
        }
        Map map = localeCache;
        synchronized (map) {
            Long l = (Long) map.get(locale);
            if (l == null) {
                l = longValueOf(new SimpleDateFormat("yyyyMMddHHmmssz").parse("19700101000000GMT+00:00").getTime());
                map.put(locale, l);
            }
            if (l.longValue() == 0) {
                return date;
            }
            return new Date(date.getTime() - l.longValue());
        }
    }

    private static Locale forEN() {
        if (BuildConfig.LOCALE.equalsIgnoreCase(Locale.getDefault().getLanguage())) {
            return Locale.getDefault();
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        for (int i = 0; i != availableLocales.length; i++) {
            if (BuildConfig.LOCALE.equalsIgnoreCase(availableLocales[i].getLanguage())) {
                return availableLocales[i];
            }
        }
        return Locale.getDefault();
    }

    private static Long longValueOf(long j) {
        return Longs.valueOf(j);
    }
}
