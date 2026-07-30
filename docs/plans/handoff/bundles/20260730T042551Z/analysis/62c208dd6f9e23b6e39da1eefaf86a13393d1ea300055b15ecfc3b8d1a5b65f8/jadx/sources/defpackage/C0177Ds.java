package defpackage;

import android.annotation.SuppressLint;
import com.google.firebase.perf.util.Timer;
import defpackage.R0;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* renamed from: Ds, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0177Ds {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f694do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f695do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Runtime f696do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentLinkedQueue<R0> f697do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f698do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ScheduledFuture f699do;

    @SuppressLint({"ThreadPoolCreation"})
    public C0177Ds() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        Runtime runtime = Runtime.getRuntime();
        this.f699do = null;
        this.f695do = -1L;
        this.f698do = newSingleThreadScheduledExecutor;
        this.f697do = new ConcurrentLinkedQueue<>();
        this.f696do = runtime;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m405do(Timer timer) {
        synchronized (this) {
            try {
                this.f698do.schedule(new RunnableC3998xn(5, this, timer), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                Q0 q0 = f694do;
                e.getMessage();
                q0.m1819case();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final R0 m406for(Timer timer) {
        if (timer == null) {
            return null;
        }
        long m6126do = timer.m6126do() + timer.f11971do;
        R0.Cdo m2007interface = R0.m2007interface();
        m2007interface.m6307super();
        R0.m2008strictfp((R0) m2007interface.f12107if, m6126do);
        Runtime runtime = this.f696do;
        int m3119if = C0685aK.m3119if(((runtime.totalMemory() - runtime.freeMemory()) * 1) / 1024);
        m2007interface.m6307super();
        R0.m2009volatile((R0) m2007interface.f12107if, m3119if);
        return m2007interface.m6305const();
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m407if(long j, Timer timer) {
        this.f695do = j;
        try {
            this.f699do = this.f698do.scheduleAtFixedRate(new RunnableC3667s9(4, this, timer), 0L, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            Q0 q0 = f694do;
            e.getMessage();
            q0.m1819case();
        }
    }
}
