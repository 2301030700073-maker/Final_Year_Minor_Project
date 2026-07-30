package defpackage;

import defpackage.InterfaceC0634Yo;
import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* renamed from: Lg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0341Lg extends AbstractC0319Kg implements InterfaceC0184Ed {

    /* renamed from: do, reason: not valid java name */
    public final Executor f1975do;

    public C0341Lg(Executor executor) {
        Method method;
        this.f1975do = executor;
        Method method2 = C4021y9.f16683do;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = C4021y9.f16683do) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.f1975do;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0341Lg) && ((C0341Lg) obj).f1975do == this.f1975do;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f1975do);
    }

    @Override // defpackage.AbstractC3338mb
    /* renamed from: if, reason: not valid java name */
    public final void mo1340if(InterfaceC3161jb interfaceC3161jb, Runnable runnable) {
        try {
            this.f1975do.execute(runnable);
        } catch (RejectedExecutionException e) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e);
            InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) interfaceC3161jb.mo814new(InterfaceC0634Yo.Cif.f4763do);
            if (interfaceC0634Yo != null) {
                interfaceC0634Yo.j(cancellationException);
            }
            C0185Ee.f870do.mo1340if(interfaceC3161jb, runnable);
        }
    }

    @Override // defpackage.AbstractC3338mb
    public final String toString() {
        return this.f1975do.toString();
    }
}
