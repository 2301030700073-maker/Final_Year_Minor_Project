package defpackage;

import android.os.Looper;
import java.util.concurrent.Executor;

/* renamed from: v2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3837v2 extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public static final ExecutorC3778u2 f15982do = new Executor() { // from class: u2
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            C3837v2.m8422throw().f15984do.f16929do.execute(runnable);
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile C3837v2 f15983do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4106zd f15984do = new C4106zd();

    /* renamed from: throw, reason: not valid java name */
    public static C3837v2 m8422throw() {
        if (f15983do != null) {
            return f15983do;
        }
        synchronized (C3837v2.class) {
            if (f15983do == null) {
                f15983do = new C3837v2();
            }
        }
        return f15983do;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m8423while(Runnable runnable) {
        C4106zd c4106zd = this.f15984do;
        if (c4106zd.f16927do == null) {
            synchronized (c4106zd.f16928do) {
                if (c4106zd.f16927do == null) {
                    c4106zd.f16927do = C4106zd.m8807throw(Looper.getMainLooper());
                }
            }
        }
        c4106zd.f16927do.post(runnable);
    }
}
