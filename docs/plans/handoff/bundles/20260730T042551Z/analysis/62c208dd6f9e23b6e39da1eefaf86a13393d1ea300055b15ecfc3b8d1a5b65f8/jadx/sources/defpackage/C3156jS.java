package defpackage;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzok;

/* renamed from: jS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3156jS extends AbstractC3570qT {

    /* renamed from: case, reason: not valid java name */
    public final C3274lS f13713case;

    /* renamed from: do, reason: not valid java name */
    public char f13714do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f13715do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f13716do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3274lS f13717do;

    /* renamed from: else, reason: not valid java name */
    public final C3274lS f13718else;

    /* renamed from: for, reason: not valid java name */
    public final C3274lS f13719for;

    /* renamed from: goto, reason: not valid java name */
    public final C3274lS f13720goto;

    /* renamed from: if, reason: not valid java name */
    public final C3274lS f13721if;

    /* renamed from: new, reason: not valid java name */
    public final C3274lS f13722new;

    /* renamed from: this, reason: not valid java name */
    public final C3274lS f13723this;

    /* renamed from: try, reason: not valid java name */
    public final C3274lS f13724try;

    public C3156jS(TS ts) {
        super(ts);
        this.f13714do = (char) 0;
        this.f13715do = -1L;
        this.f13717do = new C3274lS(this, 6, false, false);
        this.f13721if = new C3274lS(this, 6, true, false);
        this.f13719for = new C3274lS(this, 6, false, true);
        this.f13722new = new C3274lS(this, 5, false, false);
        this.f13724try = new C3274lS(this, 5, true, false);
        this.f13713case = new C3274lS(this, 5, false, true);
        this.f13718else = new C3274lS(this, 4, false, false);
        this.f13720goto = new C3274lS(this, 3, false, false);
        this.f13723this = new C3274lS(this, 2, false, false);
    }

    /* renamed from: public, reason: not valid java name */
    public static String m7103public(String str) {
        if (TextUtils.isEmpty(str)) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? (zzok.zza() && C3684sQ.S.m2158do(null).booleanValue()) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str : str.substring(0, lastIndexOf);
    }

    /* renamed from: super, reason: not valid java name */
    public static String m7104super(Object obj, boolean z) {
        String className;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (obj == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            if (String.valueOf(obj).charAt(0) == '-') {
                str = "-";
            }
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            return str + Math.round(Math.pow(10.0d, valueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof C3215kS ? ((C3215kS) obj).f13989do : z ? "-" : String.valueOf(obj);
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String m7103public = m7103public(TS.class.getCanonicalName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        while (true) {
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m7103public(className).equals(m7103public)) {
                sb.append(": ");
                sb.append(stackTraceElement);
                break;
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m7105throw(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (str == null) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String m7104super = m7104super(obj, z);
        String m7104super2 = m7104super(obj2, z);
        String m7104super3 = m7104super(obj3, z);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(m7104super)) {
            sb.append(str2);
            sb.append(m7104super);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(m7104super2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(m7104super2);
        }
        if (!TextUtils.isEmpty(m7104super3)) {
            sb.append(str3);
            sb.append(m7104super3);
        }
        return sb.toString();
    }

    /* renamed from: while, reason: not valid java name */
    public static C3215kS m7106while(String str) {
        if (str == null) {
            return null;
        }
        return new C3215kS(str);
    }

    /* renamed from: default, reason: not valid java name */
    public final C3274lS m7107default() {
        return this.f13713case;
    }

    /* renamed from: extends, reason: not valid java name */
    public final String m7108extends() {
        long abs;
        Pair<String, Long> pair;
        if (m7574this().f16746do == null) {
            return null;
        }
        CS cs = m7574this().f16746do;
        C4040yS c4040yS = cs.f379do;
        c4040yS.mo1960catch();
        c4040yS.mo1960catch();
        long j = cs.f379do.m8724static().getLong(cs.f378do, 0L);
        if (j == 0) {
            cs.m271do();
            abs = 0;
        } else {
            abs = Math.abs(j - c4040yS.mo2257new().currentTimeMillis());
        }
        long j2 = cs.f377do;
        if (abs >= j2) {
            if (abs <= (j2 << 1)) {
                String string = c4040yS.m8724static().getString(cs.f380for, null);
                long j3 = c4040yS.m8724static().getLong(cs.f381if, 0L);
                cs.m271do();
                pair = (string == null || j3 <= 0) ? C4040yS.f16741do : new Pair<>(string, Long.valueOf(j3));
                if (pair != null || pair == C4040yS.f16741do) {
                    return null;
                }
                return Creturn.m7982new(String.valueOf(pair.second), CertificateUtil.DELIMITER, (String) pair.first);
            }
            cs.m271do();
        }
        pair = null;
        if (pair != null) {
        }
        return null;
    }

    @Override // defpackage.AbstractC3570qT
    /* renamed from: final */
    public final boolean mo1961final() {
        return false;
    }

    /* renamed from: finally, reason: not valid java name */
    public final String m7109finally() {
        String str;
        synchronized (this) {
            if (this.f13716do == null) {
                Object obj = ((C3393nT) this).f14527do;
                this.f13716do = ((TS) obj).f3705for != null ? ((TS) obj).f3705for : "FA";
            }
            Preconditions.checkNotNull(this.f13716do);
            str = this.f13716do;
        }
        return str;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m7110import(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && m7111native(i)) {
            Log.println(i, m7109finally(), m7105throw(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        QS qs = ((TS) ((C3393nT) this).f14527do).f3683do;
        if (qs == null) {
            Log.println(6, m7109finally(), "Scheduler not set. Not logging error/warn");
        } else {
            if (!((AbstractC3570qT) qs).f15118do) {
                Log.println(6, m7109finally(), "Scheduler not initialized. Not logging error/warn");
                return;
            }
            if (i < 0) {
                i = 0;
            }
            qs.m1964public(new RunnableC2930iS(this, i >= 9 ? 8 : i, str, obj, obj2, obj3));
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final boolean m7111native(int i) {
        return Log.isLoggable(m7109finally(), i);
    }

    /* renamed from: return, reason: not valid java name */
    public final C3274lS m7112return() {
        return this.f13720goto;
    }

    /* renamed from: static, reason: not valid java name */
    public final C3274lS m7113static() {
        return this.f13717do;
    }

    /* renamed from: switch, reason: not valid java name */
    public final C3274lS m7114switch() {
        return this.f13723this;
    }

    /* renamed from: throws, reason: not valid java name */
    public final C3274lS m7115throws() {
        return this.f13722new;
    }
}
