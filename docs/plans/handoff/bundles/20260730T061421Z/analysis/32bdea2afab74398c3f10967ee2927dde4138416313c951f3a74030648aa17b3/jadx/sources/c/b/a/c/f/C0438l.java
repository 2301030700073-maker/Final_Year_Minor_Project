package c.b.a.c.f;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* renamed from: c.b.a.c.f.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0438l {
    public static HashMap f;
    public static Object k;
    public static boolean l;

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f3041a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b, reason: collision with root package name */
    public static final Uri f3042b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f3043c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f3044d = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    public static final AtomicBoolean e = new AtomicBoolean();
    public static final HashMap g = new HashMap();
    public static final HashMap h = new HashMap();
    public static final HashMap i = new HashMap();
    public static final HashMap j = new HashMap();
    public static String[] m = new String[0];

    public static long a(ContentResolver contentResolver, String str) {
        Object obj;
        synchronized (C0438l.class) {
            d(contentResolver);
            obj = k;
        }
        long j2 = 0;
        Long l2 = (Long) b(i, str, 0L);
        if (l2 != null) {
            return l2.longValue();
        }
        String c2 = c(contentResolver, str);
        if (c2 != null) {
            try {
                long parseLong = Long.parseLong(c2);
                l2 = Long.valueOf(parseLong);
                j2 = parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        f(obj, i, str, l2);
        return j2;
    }

    public static Object b(HashMap hashMap, String str, Object obj) {
        synchronized (C0438l.class) {
            if (!hashMap.containsKey(str)) {
                return null;
            }
            Object obj2 = hashMap.get(str);
            if (obj2 != null) {
                obj = obj2;
            }
            return obj;
        }
    }

    public static String c(ContentResolver contentResolver, String str) {
        Cursor query;
        synchronized (C0438l.class) {
            d(contentResolver);
            Object obj = k;
            if (f.containsKey(str)) {
                String str2 = (String) f.get(str);
                return str2 != null ? str2 : null;
            }
            for (String str3 : m) {
                if (str.startsWith(str3)) {
                    if (!l || f.isEmpty()) {
                        String[] strArr = m;
                        HashMap hashMap = f;
                        query = contentResolver.query(f3042b, null, null, strArr, null);
                        TreeMap treeMap = new TreeMap();
                        if (query != null) {
                            while (query.moveToNext()) {
                                try {
                                    treeMap.put(query.getString(0), query.getString(1));
                                } finally {
                                    query.close();
                                }
                            }
                        }
                        hashMap.putAll(treeMap);
                        l = true;
                        if (f.containsKey(str)) {
                            String str4 = (String) f.get(str);
                            return str4 != null ? str4 : null;
                        }
                    }
                    return null;
                }
            }
            query = contentResolver.query(f3041a, null, null, new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(1);
                        if (string != null && string.equals(null)) {
                            string = null;
                        }
                        e(obj, str, string);
                        return string != null ? string : null;
                    }
                } finally {
                    if (query != null) {
                    }
                }
            }
            e(obj, str, null);
            return null;
        }
    }

    public static void d(ContentResolver contentResolver) {
        if (f == null) {
            e.set(false);
            f = new HashMap();
            k = new Object();
            l = false;
            contentResolver.registerContentObserver(f3041a, true, new C0439m());
            return;
        }
        if (e.getAndSet(false)) {
            f.clear();
            g.clear();
            h.clear();
            i.clear();
            j.clear();
            k = new Object();
            l = false;
        }
    }

    public static void e(Object obj, String str, String str2) {
        synchronized (C0438l.class) {
            if (obj == k) {
                f.put(str, str2);
            }
        }
    }

    public static void f(Object obj, HashMap hashMap, String str, Object obj2) {
        synchronized (C0438l.class) {
            if (obj == k) {
                hashMap.put(str, obj2);
                f.remove(str);
            }
        }
    }

    public static boolean g(ContentResolver contentResolver, String str, boolean z) {
        Object obj;
        synchronized (C0438l.class) {
            d(contentResolver);
            obj = k;
        }
        Boolean bool = (Boolean) b(g, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String c2 = c(contentResolver, str);
        if (c2 != null && !c2.equals("")) {
            if (f3043c.matcher(c2).matches()) {
                z = true;
                bool = Boolean.TRUE;
            } else if (f3044d.matcher(c2).matches()) {
                z = false;
                bool = Boolean.FALSE;
            } else {
                Log.w("Gservices", "attempt to read gservices key " + str + " (value \"" + c2 + "\") as boolean");
            }
        }
        f(obj, g, str, bool);
        return z;
    }
}
