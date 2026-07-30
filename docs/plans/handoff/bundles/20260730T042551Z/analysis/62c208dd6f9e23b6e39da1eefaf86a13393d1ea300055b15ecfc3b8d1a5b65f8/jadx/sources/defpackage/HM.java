package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class HM implements IG {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorC3611rC f1346do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f1345do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name */
    public final Cdo f1344do = new Cdo();

    /* renamed from: HM$do, reason: invalid class name */
    public class Cdo implements Executor {
        public Cdo() {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            HM.this.f1345do.post(runnable);
        }
    }

    public HM(ExecutorService executorService) {
        this.f1346do = new ExecutorC3611rC(executorService);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m852do(Runnable runnable) {
        this.f1346do.execute(runnable);
    }
}
