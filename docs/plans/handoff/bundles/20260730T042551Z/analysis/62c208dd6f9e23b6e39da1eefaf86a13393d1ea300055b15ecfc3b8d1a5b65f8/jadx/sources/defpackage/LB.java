package defpackage;

import com.google.firebase.perf.metrics.Trace;

/* loaded from: classes3.dex */
public final class LB {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f1934do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name */
    public static void m1304do(Trace trace, C0475Rj c0475Rj) {
        int i = c0475Rj.f3221do;
        if (i > 0) {
            trace.putMetric("_fr_tot", i);
        }
        int i2 = c0475Rj.f3223if;
        if (i2 > 0) {
            trace.putMetric("_fr_slo", i2);
        }
        int i3 = c0475Rj.f3222for;
        if (i3 > 0) {
            trace.putMetric("_fr_fzn", i3);
        }
        String str = trace.f11956break;
        f1934do.m1820do();
    }
}
