package defpackage;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* renamed from: Yc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0622Yc {
    /* renamed from: do, reason: not valid java name */
    public static C3712sw<String, String> m2941do(Long l, Long l2) {
        C3712sw<String, String> c3712sw;
        if (l == null && l2 == null) {
            return new C3712sw<>(null, null);
        }
        if (l == null) {
            c3712sw = new C3712sw<>(null, m2943if(l2.longValue()));
        } else {
            if (l2 != null) {
                Calendar m1518goto = NJ.m1518goto();
                Calendar m1521this = NJ.m1521this(null);
                m1521this.setTimeInMillis(l.longValue());
                Calendar m1521this2 = NJ.m1521this(null);
                m1521this2.setTimeInMillis(l2.longValue());
                return m1521this.get(1) == m1521this2.get(1) ? m1521this.get(1) == m1518goto.get(1) ? new C3712sw<>(m2942for(l.longValue(), Locale.getDefault()), m2942for(l2.longValue(), Locale.getDefault())) : new C3712sw<>(m2942for(l.longValue(), Locale.getDefault()), m2944new(l2.longValue(), Locale.getDefault())) : new C3712sw<>(m2944new(l.longValue(), Locale.getDefault()), m2944new(l2.longValue(), Locale.getDefault()));
            }
            c3712sw = new C3712sw<>(m2943if(l.longValue()), null);
        }
        return c3712sw;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m2942for(long j, Locale locale) {
        String format;
        if (Build.VERSION.SDK_INT >= 24) {
            format = NJ.m1517for("MMMd", locale).format(new Date(j));
            return format;
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) NJ.m1516else(2, locale);
        String pattern = simpleDateFormat.toPattern();
        int m1519if = NJ.m1519if(1, 0, pattern, "yY");
        if (m1519if < pattern.length()) {
            int m1519if2 = NJ.m1519if(1, m1519if, pattern, "EMd");
            pattern = pattern.replace(pattern.substring(NJ.m1519if(-1, m1519if, pattern, m1519if2 < pattern.length() ? "EMd," : "EMd") + 1, m1519if2), " ").trim();
        }
        simpleDateFormat.applyPattern(pattern);
        return simpleDateFormat.format(new Date(j));
    }

    /* renamed from: if, reason: not valid java name */
    public static String m2943if(long j) {
        Calendar m1518goto = NJ.m1518goto();
        Calendar m1521this = NJ.m1521this(null);
        m1521this.setTimeInMillis(j);
        return m1518goto.get(1) == m1521this.get(1) ? m2942for(j, Locale.getDefault()) : m2944new(j, Locale.getDefault());
    }

    /* renamed from: new, reason: not valid java name */
    public static String m2944new(long j, Locale locale) {
        String format;
        if (Build.VERSION.SDK_INT < 24) {
            return NJ.m1516else(2, locale).format(new Date(j));
        }
        format = NJ.m1517for("yMMMd", locale).format(new Date(j));
        return format;
    }
}
