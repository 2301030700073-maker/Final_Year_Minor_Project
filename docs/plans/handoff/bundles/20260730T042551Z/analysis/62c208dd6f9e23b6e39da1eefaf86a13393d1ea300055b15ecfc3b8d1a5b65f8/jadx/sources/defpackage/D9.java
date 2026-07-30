package defpackage;

import j$.util.Objects;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class D9 {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap f515do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ExecutorC3237ks f516do = new ExecutorC3237ks(3);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final M9 f517do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public XV f518do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f519do;

    /* renamed from: D9$do, reason: invalid class name */
    public static class Cdo<TResult> implements InterfaceC0619Xv<TResult>, InterfaceC0487Rv, InterfaceC0377Mv {

        /* renamed from: do, reason: not valid java name */
        public final CountDownLatch f520do = new CountDownLatch(1);

        @Override // defpackage.InterfaceC0377Mv
        /* renamed from: for, reason: not valid java name */
        public final void mo355for() {
            this.f520do.countDown();
        }

        @Override // defpackage.InterfaceC0619Xv
        /* renamed from: if, reason: not valid java name */
        public final void mo356if(TResult tresult) {
            this.f520do.countDown();
        }

        @Override // defpackage.InterfaceC0487Rv
        public final void onFailure(Exception exc) {
            this.f520do.countDown();
        }
    }

    public D9(ScheduledExecutorService scheduledExecutorService, M9 m9) {
        this.f519do = scheduledExecutorService;
        this.f517do = m9;
    }

    /* renamed from: do, reason: not valid java name */
    public static Object m351do(FG fg, TimeUnit timeUnit) {
        Cdo cdo = new Cdo();
        Executor executor = f516do;
        fg.mo590case(executor, cdo);
        fg.mo605try(executor, cdo);
        fg.mo594do(executor, cdo);
        if (!cdo.f520do.await(5L, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (fg.mo604throw()) {
            return fg.mo592class();
        }
        throw new ExecutionException(fg.mo591catch());
    }

    /* renamed from: new, reason: not valid java name */
    public static synchronized D9 m352new(ScheduledExecutorService scheduledExecutorService, M9 m9) {
        D9 d9;
        synchronized (D9.class) {
            String str = m9.f2130do;
            HashMap hashMap = f515do;
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, new D9(scheduledExecutorService, m9));
            }
            d9 = (D9) hashMap.get(str);
        }
        return d9;
    }

    /* renamed from: for, reason: not valid java name */
    public final E9 m353for() {
        synchronized (this) {
            XV xv = this.f518do;
            if (xv == null || !xv.mo604throw()) {
                try {
                    return (E9) m351do(m354if(), TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                    return null;
                }
            }
            return (E9) this.f518do.mo592class();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized FG<E9> m354if() {
        XV xv = this.f518do;
        if (xv == null || (xv.mo602super() && !this.f518do.mo604throw())) {
            Executor executor = this.f519do;
            M9 m9 = this.f517do;
            Objects.requireNonNull(m9);
            this.f518do = LG.m1316for(new CallableC3638rh(m9, 1), executor);
        }
        return this.f518do;
    }
}
