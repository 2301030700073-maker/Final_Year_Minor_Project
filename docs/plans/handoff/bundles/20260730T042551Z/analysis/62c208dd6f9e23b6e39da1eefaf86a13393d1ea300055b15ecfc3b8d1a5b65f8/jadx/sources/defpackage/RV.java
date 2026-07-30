package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class RV {

    /* renamed from: do, reason: not valid java name */
    public final TS f3187do;

    public RV(TS ts) {
        this.f3187do = ts;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2037do(String str, Bundle bundle) {
        String uri;
        TS ts = this.f3187do;
        QS qs = ts.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        if (ts.m2248break()) {
            return;
        }
        if (bundle.isEmpty()) {
            uri = null;
        } else {
            if (str == null || str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            uri = builder.build().toString();
        }
        if (TextUtils.isEmpty(uri)) {
            return;
        }
        C4040yS c4040yS = ts.f3701do;
        TS.m2245goto(c4040yS);
        c4040yS.f16762new.m188if(uri);
        TS.m2245goto(c4040yS);
        c4040yS.f16742case.m8803if(ts.f3692do.currentTimeMillis());
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m2038for() {
        if (!m2039if()) {
            return false;
        }
        TS ts = this.f3187do;
        long currentTimeMillis = ts.f3692do.currentTimeMillis();
        C4040yS c4040yS = ts.f3701do;
        TS.m2245goto(c4040yS);
        return currentTimeMillis - c4040yS.f16742case.m8802do() > ts.f3685do.m3003native(null, C3684sQ.i);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m2039if() {
        C4040yS c4040yS = this.f3187do.f3701do;
        TS.m2245goto(c4040yS);
        return c4040yS.f16742case.m8802do() > 0;
    }
}
