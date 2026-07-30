package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;

/* loaded from: classes3.dex */
public final /* synthetic */ class XS implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C4041yT f4512do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4513for;

    public /* synthetic */ XS(C4041yT c4041yT, int i) {
        this.f4513for = i;
        this.f4512do = c4041yT;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f4513for;
        C4041yT c4041yT = this.f4512do;
        switch (i) {
            case 0:
                c4041yT.m8745synchronized();
                break;
            case 1:
                c4041yT.mo1960catch();
                if (c4041yT.m7574this().f16763new.m8289if()) {
                    c4041yT.mo2249case().f13720goto.m7369if("Deferred Deep Link already retrieved. Not fetching again.");
                    break;
                } else {
                    long m8802do = c4041yT.m7574this().f16765try.m8802do();
                    c4041yT.m7574this().f16765try.m8803if(1 + m8802do);
                    if (m8802do >= 5) {
                        c4041yT.mo2249case().f13722new.m7369if("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        c4041yT.m7574this().f16763new.m8288do(true);
                        break;
                    } else {
                        if (c4041yT.f16771do == null) {
                            c4041yT.f16771do = new PT(c4041yT, (TS) ((C3393nT) c4041yT).f14527do, 0);
                        }
                        c4041yT.f16771do.m452if(0L);
                        break;
                    }
                }
            default:
                RV rv = c4041yT.f16772do;
                TS ts = rv.f3187do;
                QS qs = ts.f3683do;
                TS.m2247this(qs);
                qs.mo1960catch();
                if (rv.m2039if()) {
                    boolean m2038for = rv.m2038for();
                    C4041yT c4041yT2 = ts.f3702do;
                    C4040yS c4040yS = ts.f3701do;
                    if (m2038for) {
                        TS.m2245goto(c4040yS);
                        c4040yS.f16762new.m188if(null);
                        Bundle bundle = new Bundle();
                        bundle.putString("source", "(not set)");
                        bundle.putString("medium", "(not set)");
                        bundle.putString("_cis", "intent");
                        bundle.putLong("_cc", 1L);
                        TS.m2244else(c4041yT2);
                        c4041yT2.f("auto", "_cmpx", bundle);
                    } else {
                        TS.m2245goto(c4040yS);
                        BS bs = c4040yS.f16762new;
                        String m187do = bs.m187do();
                        if (TextUtils.isEmpty(m187do)) {
                            C3156jS c3156jS = ts.f3695do;
                            TS.m2247this(c3156jS);
                            c3156jS.f13721if.m7369if("Cache still valid but referrer not found");
                        } else {
                            long m8802do2 = ((c4040yS.f16742case.m8802do() / 3600000) - 1) * 3600000;
                            Uri parse = Uri.parse(m187do);
                            Bundle bundle2 = new Bundle();
                            Pair pair = new Pair(parse.getPath(), bundle2);
                            for (String str : parse.getQueryParameterNames()) {
                                bundle2.putString(str, parse.getQueryParameter(str));
                            }
                            ((Bundle) pair.second).putLong("_cc", m8802do2);
                            Object obj = pair.first;
                            String str2 = obj == null ? "app" : (String) obj;
                            TS.m2244else(c4041yT2);
                            c4041yT2.f(str2, "_cmp", (Bundle) pair.second);
                        }
                        bs.m188if(null);
                    }
                    TS.m2245goto(c4040yS);
                    c4040yS.f16742case.m8803if(0L);
                    break;
                }
                break;
        }
    }
}
