package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: Np, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0393Np {

    /* renamed from: if, reason: not valid java name */
    public final int f2439if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f2438do = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public final int f2437do = 64;

    public C0393Np(int i) {
        this.f2439if = i;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1553if(int i, String str) {
        if (str == null) {
            return str;
        }
        String trim = str.trim();
        return trim.length() > i ? trim.substring(0, i) : trim;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized Map<String, String> m1554do() {
        return DesugarCollections.unmodifiableMap(new HashMap(this.f2438do));
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized boolean m1555for(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
        String m1553if = m1553if(this.f2439if, str);
        if (this.f2438do.size() >= this.f2437do && !this.f2438do.containsKey(m1553if)) {
            return false;
        }
        String m1553if2 = m1553if(this.f2439if, str2);
        String str3 = (String) this.f2438do.get(m1553if);
        if (str3 == null ? m1553if2 == null : str3.equals(m1553if2)) {
            return false;
        }
        HashMap hashMap = this.f2438do;
        if (str2 == null) {
            m1553if2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        hashMap.put(m1553if, m1553if2);
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized void m1556new(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key == null) {
                throw new IllegalArgumentException("Custom attribute key must not be null.");
            }
            String m1553if = m1553if(this.f2439if, key);
            if (this.f2438do.size() < this.f2437do || this.f2438do.containsKey(m1553if)) {
                String value = entry.getValue();
                this.f2438do.put(m1553if, value == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : m1553if(this.f2439if, value));
            }
        }
    }
}
