package com.amazonaws.util;

import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class DateUtils {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final TimeZone f9074do = DesugarTimeZone.getTimeZone("GMT");

    /* renamed from: do, reason: not valid java name */
    public static final HashMap f9073do = new HashMap();

    /* renamed from: case, reason: not valid java name */
    public static Date m5178case(String str) {
        try {
            return m5183new("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", str);
        } catch (IllegalArgumentException unused) {
            return m5183new("yyyy-MM-dd'T'HH:mm:ss'Z'", str);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m5179do(String str, Date date) {
        return m5181for(str).get().format(date);
    }

    /* renamed from: else, reason: not valid java name */
    public static Date m5180else(String str) {
        return m5183new("EEE, dd MMM yyyy HH:mm:ss z", str);
    }

    /* renamed from: for, reason: not valid java name */
    public static ThreadLocal<SimpleDateFormat> m5181for(final String str) {
        HashMap hashMap = f9073do;
        ThreadLocal<SimpleDateFormat> threadLocal = (ThreadLocal) hashMap.get(str);
        if (threadLocal == null) {
            synchronized (hashMap) {
                threadLocal = (ThreadLocal) hashMap.get(str);
                if (threadLocal == null) {
                    threadLocal = new ThreadLocal<SimpleDateFormat>() { // from class: com.amazonaws.util.DateUtils.1
                        @Override // java.lang.ThreadLocal
                        public final SimpleDateFormat initialValue() {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
                            simpleDateFormat.setTimeZone(DateUtils.f9074do);
                            simpleDateFormat.setLenient(false);
                            return simpleDateFormat;
                        }
                    };
                    hashMap.put(str, threadLocal);
                }
            }
        }
        return threadLocal;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m5182if(Date date) {
        return m5179do("EEE, dd MMM yyyy HH:mm:ss z", date);
    }

    /* renamed from: new, reason: not valid java name */
    public static Date m5183new(String str, String str2) {
        try {
            return m5181for(str).get().parse(str2);
        } catch (ParseException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Date m5184try(String str) {
        return m5183new("yyyyMMdd'T'HHmmss'Z'", str);
    }
}
