package defpackage;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.util.ProcessUtils;

/* renamed from: iS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2930iS implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f13514break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3156jS f13515do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f13516do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13517for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f13518for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f13519if;

    public RunnableC2930iS(C3156jS c3156jS, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f13517for = i;
        this.f13514break = str;
        this.f13516do = obj;
        this.f13519if = obj2;
        this.f13518for = obj3;
        this.f13515do = c3156jS;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4040yS c4040yS = ((TS) ((C3393nT) this.f13515do).f14527do).f3701do;
        TS.m2245goto(c4040yS);
        if (!((AbstractC3570qT) c4040yS).f15118do) {
            Log.println(6, this.f13515do.m7109finally(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        C3156jS c3156jS = this.f13515do;
        if (c3156jS.f13714do == 0) {
            ZO m7572else = c3156jS.m7572else();
            if (m7572else.f4821if == null) {
                synchronized (m7572else) {
                    if (m7572else.f4821if == null) {
                        ApplicationInfo applicationInfo = m7572else.mo2255for().getApplicationInfo();
                        String myProcessName = ProcessUtils.getMyProcessName();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            m7572else.f4821if = Boolean.valueOf(str != null && str.equals(myProcessName));
                        }
                        if (m7572else.f4821if == null) {
                            m7572else.f4821if = Boolean.TRUE;
                            m7572else.mo2249case().f13717do.m7369if("My process not in the list of running processes");
                        }
                    }
                }
            }
            if (m7572else.f4821if.booleanValue()) {
                this.f13515do.f13714do = 'C';
            } else {
                this.f13515do.f13714do = 'c';
            }
        }
        C3156jS c3156jS2 = this.f13515do;
        if (c3156jS2.f13715do < 0) {
            c3156jS2.f13715do = 106000L;
        }
        char charAt = "01VDIWEA?".charAt(this.f13517for);
        C3156jS c3156jS3 = this.f13515do;
        char c = c3156jS3.f13714do;
        long j = c3156jS3.f13715do;
        String m7105throw = C3156jS.m7105throw(true, this.f13514break, this.f13516do, this.f13519if, this.f13518for);
        StringBuilder sb = new StringBuilder("2");
        sb.append(charAt);
        sb.append(c);
        sb.append(j);
        String m7984try = Creturn.m7984try(sb, CertificateUtil.DELIMITER, m7105throw);
        if (m7984try.length() > 1024) {
            m7984try = this.f13514break.substring(0, 1024);
        }
        CS cs = c4040yS.f16746do;
        if (cs != null) {
            C4040yS c4040yS2 = cs.f379do;
            c4040yS2.mo1960catch();
            if (cs.f379do.m8724static().getLong(cs.f378do, 0L) == 0) {
                cs.m271do();
            }
            if (m7984try == null) {
                m7984try = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            SharedPreferences m8724static = c4040yS2.m8724static();
            String str2 = cs.f381if;
            long j2 = m8724static.getLong(str2, 0L);
            String str3 = cs.f380for;
            if (j2 <= 0) {
                SharedPreferences.Editor edit = c4040yS2.m8724static().edit();
                edit.putString(str3, m7984try);
                edit.putLong(str2, 1L);
                edit.apply();
                return;
            }
            long j3 = j2 + 1;
            boolean z = (c4040yS2.m7571break().O().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
            SharedPreferences.Editor edit2 = c4040yS2.m8724static().edit();
            if (z) {
                edit2.putString(str3, m7984try);
            }
            edit2.putLong(str2, j3);
            edit2.apply();
        }
    }
}
