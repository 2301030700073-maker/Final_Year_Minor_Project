package defpackage;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class QU {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ LU f2954do;

    public QU(LU lu) {
        this.f2954do = lu;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1971do() {
        LU lu = this.f2954do;
        lu.mo1960catch();
        if (lu.m7574this().m8720import(lu.mo2257new().currentTimeMillis())) {
            lu.m7574this().f16749do.m8288do(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                lu.mo2249case().f13723this.m7369if("Detected application was in foreground");
                m1972for(lu.mo2257new().currentTimeMillis());
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1972for(long j) {
        LU lu = this.f2954do;
        lu.mo1960catch();
        if (((TS) ((C3393nT) lu).f14527do).m2248break()) {
            lu.m7574this().f16753for.m8803if(j);
            long elapsedRealtime = lu.mo2257new().elapsedRealtime();
            C3156jS mo2249case = lu.mo2249case();
            mo2249case.f13723this.m7368for("Session started, time", Long.valueOf(elapsedRealtime));
            Long valueOf = Long.valueOf(j / 1000);
            lu.m8798final().m8739package("auto", "_sid", valueOf, j);
            C4040yS m7574this = lu.m7574this();
            m7574this.f16764new.m8803if(valueOf.longValue());
            lu.m7574this().f16749do.m8288do(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            lu.m8798final().m8735extends("auto", "_s", bundle, j);
            String m187do = lu.m7574this().f16751for.m187do();
            if (TextUtils.isEmpty(m187do)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", m187do);
            lu.m8798final().m8735extends("auto", "_ssr", bundle2, j);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1973if(long j, boolean z) {
        LU lu = this.f2954do;
        lu.mo1960catch();
        lu.m1328return();
        if (lu.m7574this().m8720import(j)) {
            lu.m7574this().f16749do.m8288do(true);
            lu.m8796class().m4909switch();
        }
        lu.m7574this().f16753for.m8803if(j);
        if (lu.m7574this().f16749do.m8289if()) {
            m1972for(j);
        }
    }
}
