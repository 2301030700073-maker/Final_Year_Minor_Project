package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatter;
import j$.util.DateRetargetClass;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* renamed from: am, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0710am {

    /* renamed from: do, reason: not valid java name */
    public final SharedPreferences f5009do;

    public C0710am(Context context, String str) {
        this.f5009do = context.getSharedPreferences("FirebaseHeartBeat" + str, 0);
    }

    /* renamed from: break, reason: not valid java name */
    public final synchronized boolean m3154break(long j) {
        if (!this.f5009do.contains("fire-global")) {
            this.f5009do.edit().putLong("fire-global", j).commit();
            return true;
        }
        if (m3155case(this.f5009do.getLong("fire-global", -1L), j)) {
            return false;
        }
        this.f5009do.edit().putLong("fire-global", j).commit();
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public final synchronized boolean m3155case(long j, long j2) {
        return m3164new(j).equals(m3164new(j2));
    }

    /* renamed from: catch, reason: not valid java name */
    public final synchronized void m3156catch(long j, String str) {
        String m3164new = m3164new(j);
        if (this.f5009do.getString("last-used-date", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals(m3164new)) {
            String m3166try = m3166try(m3164new);
            if (m3166try == null) {
                return;
            }
            if (m3166try.equals(str)) {
                return;
            }
            m3158const(str, m3164new);
            return;
        }
        long j2 = this.f5009do.getLong("fire-count", 0L);
        if (j2 + 1 == 30) {
            m3159do();
            j2 = this.f5009do.getLong("fire-count", 0L);
        }
        HashSet hashSet = new HashSet(this.f5009do.getStringSet(str, new HashSet()));
        hashSet.add(m3164new);
        this.f5009do.edit().putStringSet(str, hashSet).putLong("fire-count", j2 + 1).putString("last-used-date", m3164new).commit();
    }

    /* renamed from: class, reason: not valid java name */
    public final synchronized void m3157class(long j) {
        this.f5009do.edit().putLong("fire-global", j).commit();
    }

    /* renamed from: const, reason: not valid java name */
    public final synchronized void m3158const(String str, String str2) {
        m3162goto(str2);
        HashSet hashSet = new HashSet(this.f5009do.getStringSet(str, new HashSet()));
        hashSet.add(str2);
        this.f5009do.edit().putStringSet(str, hashSet).commit();
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m3159do() {
        long j = this.f5009do.getLong("fire-count", 0L);
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        String str2 = null;
        for (Map.Entry<String, ?> entry : this.f5009do.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                for (String str3 : (Set) entry.getValue()) {
                    if (str2 == null || str2.compareTo(str3) > 0) {
                        str = entry.getKey();
                        str2 = str3;
                    }
                }
            }
        }
        HashSet hashSet = new HashSet(this.f5009do.getStringSet(str, new HashSet()));
        hashSet.remove(str2);
        this.f5009do.edit().putStringSet(str, hashSet).putLong("fire-count", j - 1).commit();
    }

    /* renamed from: else, reason: not valid java name */
    public final synchronized void m3160else() {
        String m3164new = m3164new(System.currentTimeMillis());
        this.f5009do.edit().putString("last-used-date", m3164new).commit();
        m3162goto(m3164new);
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized ArrayList m3161for() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (Map.Entry<String, ?> entry : this.f5009do.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                HashSet hashSet = new HashSet((Set) entry.getValue());
                hashSet.remove(m3164new(System.currentTimeMillis()));
                if (!hashSet.isEmpty()) {
                    arrayList.add(new C0729b4(entry.getKey(), new ArrayList(hashSet)));
                }
            }
        }
        m3157class(System.currentTimeMillis());
        return arrayList;
    }

    /* renamed from: goto, reason: not valid java name */
    public final synchronized void m3162goto(String str) {
        String m3166try = m3166try(str);
        if (m3166try == null) {
            return;
        }
        HashSet hashSet = new HashSet(this.f5009do.getStringSet(m3166try, new HashSet()));
        hashSet.remove(str);
        if (hashSet.isEmpty()) {
            this.f5009do.edit().remove(m3166try).commit();
        } else {
            this.f5009do.edit().putStringSet(m3166try, hashSet).commit();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m3163if() {
        SharedPreferences.Editor edit = this.f5009do.edit();
        int i = 0;
        for (Map.Entry<String, ?> entry : this.f5009do.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Set set = (Set) entry.getValue();
                String m3164new = m3164new(System.currentTimeMillis());
                String key = entry.getKey();
                if (set.contains(m3164new)) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(m3164new);
                    i++;
                    edit.putStringSet(key, hashSet);
                } else {
                    edit.remove(key);
                }
            }
        }
        if (i == 0) {
            edit.remove("fire-count");
        } else {
            edit.putLong("fire-count", i);
        }
        edit.commit();
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized String m3164new(long j) {
        if (Build.VERSION.SDK_INT >= 26) {
            return DateRetargetClass.toInstant(new Date(j)).atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j));
    }

    /* renamed from: this, reason: not valid java name */
    public final synchronized boolean m3165this(long j) {
        return m3154break(j);
    }

    /* renamed from: try, reason: not valid java name */
    public final synchronized String m3166try(String str) {
        for (Map.Entry<String, ?> entry : this.f5009do.getAll().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return entry.getKey();
                    }
                }
            }
        }
        return null;
    }
}
