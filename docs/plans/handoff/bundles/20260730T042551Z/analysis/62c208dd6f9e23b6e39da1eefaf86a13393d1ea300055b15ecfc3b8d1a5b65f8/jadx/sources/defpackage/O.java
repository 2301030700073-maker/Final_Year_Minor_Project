package defpackage;

import android.content.Context;
import com.facebook.appevents.internal.ActivityLifecycleTracker;

/* loaded from: classes.dex */
public final /* synthetic */ class O implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f2464break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f2465do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2466do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f2467for = 0;

    public /* synthetic */ O(long j, String str, Context context) {
        this.f2465do = j;
        this.f2464break = str;
        this.f2466do = context;
    }

    public /* synthetic */ O(C0445Qb c0445Qb, long j, String str) {
        this.f2466do = c0445Qb;
        this.f2465do = j;
        this.f2464break = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2467for;
        final String str = this.f2464break;
        final long j = this.f2465do;
        Object obj = this.f2466do;
        switch (i) {
            case 0:
                ActivityLifecycleTracker.m5376onActivityResumed$lambda2(j, str, (Context) obj);
                break;
            default:
                final C0445Qb c0445Qb = (C0445Qb) obj;
                c0445Qb.f2970do.f13736if.m6567do(new Runnable() { // from class: Ob
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0357Mb c0357Mb = C0445Qb.this.f2964do;
                        C2642dc c2642dc = c0357Mb.f2205do;
                        if (c2642dc != null && c2642dc.f12513do.get()) {
                            return;
                        }
                        c0357Mb.f2201do.f3239do.mo660if(j, str);
                    }
                });
                break;
        }
    }
}
