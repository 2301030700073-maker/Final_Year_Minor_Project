package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: class, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cclass<V> implements InterfaceFutureC3942wq<V> {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f8608do;

    /* renamed from: if, reason: not valid java name */
    public static final Object f8611if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Cgoto f8612do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Cnew f8613do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Object f8614do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f8610do = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Logger f8609do = Logger.getLogger(Cclass.class.getName());

    /* renamed from: class$case, reason: invalid class name */
    public static final class Ccase<V> implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Cclass<V> f8615do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceFutureC3942wq<? extends V> f8616do;

        public Ccase(Cclass<V> cclass, InterfaceFutureC3942wq<? extends V> interfaceFutureC3942wq) {
            this.f8615do = cclass;
            this.f8616do = interfaceFutureC3942wq;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f8615do.f8614do != this) {
                return;
            }
            if (Cclass.f8608do.mo4931if(this.f8615do, this, Cclass.m4924try(this.f8616do))) {
                Cclass.m4923if(this.f8615do);
            }
        }
    }

    /* renamed from: class$do, reason: invalid class name */
    public static abstract class Cdo {
        /* renamed from: do, reason: not valid java name */
        public abstract boolean mo4929do(Cclass<?> cclass, Cnew cnew, Cnew cnew2);

        /* renamed from: for, reason: not valid java name */
        public abstract boolean mo4930for(Cclass<?> cclass, Cgoto cgoto, Cgoto cgoto2);

        /* renamed from: if, reason: not valid java name */
        public abstract boolean mo4931if(Cclass<?> cclass, Object obj, Object obj2);

        /* renamed from: new, reason: not valid java name */
        public abstract void mo4932new(Cgoto cgoto, Cgoto cgoto2);

        /* renamed from: try, reason: not valid java name */
        public abstract void mo4933try(Cgoto cgoto, Thread thread);
    }

    /* renamed from: class$else, reason: invalid class name */
    public static final class Celse extends Cdo {
        @Override // defpackage.Cclass.Cdo
        /* renamed from: do */
        public final boolean mo4929do(Cclass<?> cclass, Cnew cnew, Cnew cnew2) {
            synchronized (cclass) {
                if (cclass.f8613do != cnew) {
                    return false;
                }
                cclass.f8613do = cnew2;
                return true;
            }
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: for */
        public final boolean mo4930for(Cclass<?> cclass, Cgoto cgoto, Cgoto cgoto2) {
            synchronized (cclass) {
                if (cclass.f8612do != cgoto) {
                    return false;
                }
                cclass.f8612do = cgoto2;
                return true;
            }
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: if */
        public final boolean mo4931if(Cclass<?> cclass, Object obj, Object obj2) {
            synchronized (cclass) {
                if (cclass.f8614do != obj) {
                    return false;
                }
                cclass.f8614do = obj2;
                return true;
            }
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: new */
        public final void mo4932new(Cgoto cgoto, Cgoto cgoto2) {
            cgoto.f8620do = cgoto2;
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: try */
        public final void mo4933try(Cgoto cgoto, Thread thread) {
            cgoto.f8621do = thread;
        }
    }

    /* renamed from: class$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final Cfor f8617do = new Cfor(new Cdo());

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Throwable f8618do;

        /* renamed from: class$for$do, reason: invalid class name */
        public class Cdo extends Throwable {
            public Cdo() {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public Cfor(Throwable th) {
            boolean z = Cclass.f8610do;
            th.getClass();
            this.f8618do = th;
        }
    }

    /* renamed from: class$goto, reason: invalid class name */
    public static final class Cgoto {

        /* renamed from: if, reason: not valid java name */
        public static final Cgoto f8619if = new Cgoto(0);

        /* renamed from: do, reason: not valid java name */
        public volatile Cgoto f8620do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public volatile Thread f8621do;

        public Cgoto(int i) {
        }

        public Cgoto() {
            Cclass.f8608do.mo4933try(this, Thread.currentThread());
        }
    }

    /* renamed from: class$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f8622do;

        /* renamed from: if, reason: not valid java name */
        public static final Cif f8623if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Throwable f8624do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f8625do;

        static {
            if (Cclass.f8610do) {
                f8623if = null;
                f8622do = null;
            } else {
                f8623if = new Cif(false, null);
                f8622do = new Cif(true, null);
            }
        }

        public Cif(boolean z, Throwable th) {
            this.f8625do = z;
            this.f8624do = th;
        }
    }

    /* renamed from: class$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cnew f8626if = new Cnew(null, null);

        /* renamed from: do, reason: not valid java name */
        public Cnew f8627do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Runnable f8628do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Executor f8629do;

        public Cnew(Runnable runnable, Executor executor) {
            this.f8628do = runnable;
            this.f8629do = executor;
        }
    }

    /* renamed from: class$try, reason: invalid class name */
    public static final class Ctry extends Cdo {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cgoto, Thread> f8630do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cclass, Cgoto> f8631for;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cgoto, Cgoto> f8632if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cclass, Cnew> f8633new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cclass, Object> f8634try;

        public Ctry(AtomicReferenceFieldUpdater<Cgoto, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Cgoto, Cgoto> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<Cclass, Cgoto> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<Cclass, Cnew> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<Cclass, Object> atomicReferenceFieldUpdater5) {
            this.f8630do = atomicReferenceFieldUpdater;
            this.f8632if = atomicReferenceFieldUpdater2;
            this.f8631for = atomicReferenceFieldUpdater3;
            this.f8633new = atomicReferenceFieldUpdater4;
            this.f8634try = atomicReferenceFieldUpdater5;
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: do */
        public final boolean mo4929do(Cclass<?> cclass, Cnew cnew, Cnew cnew2) {
            AtomicReferenceFieldUpdater<Cclass, Cnew> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f8633new;
                if (atomicReferenceFieldUpdater.compareAndSet(cclass, cnew, cnew2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(cclass) == cnew);
            return false;
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: for */
        public final boolean mo4930for(Cclass<?> cclass, Cgoto cgoto, Cgoto cgoto2) {
            AtomicReferenceFieldUpdater<Cclass, Cgoto> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f8631for;
                if (atomicReferenceFieldUpdater.compareAndSet(cclass, cgoto, cgoto2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(cclass) == cgoto);
            return false;
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: if */
        public final boolean mo4931if(Cclass<?> cclass, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater<Cclass, Object> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f8634try;
                if (atomicReferenceFieldUpdater.compareAndSet(cclass, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(cclass) == obj);
            return false;
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: new */
        public final void mo4932new(Cgoto cgoto, Cgoto cgoto2) {
            this.f8632if.lazySet(cgoto, cgoto2);
        }

        @Override // defpackage.Cclass.Cdo
        /* renamed from: try */
        public final void mo4933try(Cgoto cgoto, Thread thread) {
            this.f8630do.lazySet(cgoto, thread);
        }
    }

    static {
        Cdo celse;
        try {
            celse = new Ctry(AtomicReferenceFieldUpdater.newUpdater(Cgoto.class, Thread.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cgoto.class, Cgoto.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cclass.class, Cgoto.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cclass.class, Cnew.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cclass.class, Object.class, "do"));
            th = null;
        } catch (Throwable th) {
            th = th;
            celse = new Celse();
        }
        f8608do = celse;
        if (th != null) {
            f8609do.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f8611if = new Object();
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4922for(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f8609do.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4923if(Cclass<?> cclass) {
        Cnew cnew;
        Cnew cnew2;
        Cnew cnew3 = null;
        while (true) {
            Cgoto cgoto = cclass.f8612do;
            if (f8608do.mo4930for(cclass, cgoto, Cgoto.f8619if)) {
                while (cgoto != null) {
                    Thread thread = cgoto.f8621do;
                    if (thread != null) {
                        cgoto.f8621do = null;
                        LockSupport.unpark(thread);
                    }
                    cgoto = cgoto.f8620do;
                }
                do {
                    cnew = cclass.f8613do;
                } while (!f8608do.mo4929do(cclass, cnew, Cnew.f8626if));
                while (true) {
                    cnew2 = cnew3;
                    cnew3 = cnew;
                    if (cnew3 == null) {
                        break;
                    }
                    cnew = cnew3.f8627do;
                    cnew3.f8627do = cnew2;
                }
                while (cnew2 != null) {
                    cnew3 = cnew2.f8627do;
                    Runnable runnable = cnew2.f8628do;
                    if (runnable instanceof Ccase) {
                        Ccase ccase = (Ccase) runnable;
                        cclass = ccase.f8615do;
                        if (cclass.f8614do == ccase) {
                            if (f8608do.mo4931if(cclass, ccase, m4924try(ccase.f8616do))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m4922for(runnable, cnew2.f8629do);
                    }
                    cnew2 = cnew3;
                }
                return;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Object m4924try(InterfaceFutureC3942wq<?> interfaceFutureC3942wq) {
        Object obj;
        if (interfaceFutureC3942wq instanceof Cclass) {
            Object obj2 = ((Cclass) interfaceFutureC3942wq).f8614do;
            if (!(obj2 instanceof Cif)) {
                return obj2;
            }
            Cif cif = (Cif) obj2;
            return cif.f8625do ? cif.f8624do != null ? new Cif(false, cif.f8624do) : Cif.f8623if : obj2;
        }
        boolean isCancelled = interfaceFutureC3942wq.isCancelled();
        if ((!f8610do) && isCancelled) {
            return Cif.f8623if;
        }
        boolean z = false;
        while (true) {
            try {
                try {
                    obj = interfaceFutureC3942wq.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new Cif(false, e);
                }
                return new Cfor(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + interfaceFutureC3942wq, e));
            } catch (ExecutionException e2) {
                return new Cfor(e2.getCause());
            } catch (Throwable th2) {
                return new Cfor(th2);
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj == null ? f8611if : obj;
    }

    @Override // defpackage.InterfaceFutureC3942wq
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        Cnew cnew = this.f8613do;
        Cnew cnew2 = Cnew.f8626if;
        if (cnew != cnew2) {
            Cnew cnew3 = new Cnew(runnable, executor);
            do {
                cnew3.f8627do = cnew;
                if (f8608do.mo4929do(this, cnew, cnew3)) {
                    return;
                } else {
                    cnew = this.f8613do;
                }
            } while (cnew != cnew2);
        }
        m4922for(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f8614do;
        if (!(obj == null) && !(obj instanceof Ccase)) {
            return false;
        }
        Cif cif = f8610do ? new Cif(z, new CancellationException("Future.cancel() was called.")) : z ? Cif.f8622do : Cif.f8623if;
        boolean z2 = false;
        Cclass<V> cclass = this;
        while (true) {
            if (f8608do.mo4931if(cclass, obj, cif)) {
                m4923if(cclass);
                if (!(obj instanceof Ccase)) {
                    return true;
                }
                InterfaceFutureC3942wq<? extends V> interfaceFutureC3942wq = ((Ccase) obj).f8616do;
                if (!(interfaceFutureC3942wq instanceof Cclass)) {
                    interfaceFutureC3942wq.cancel(z);
                    return true;
                }
                cclass = (Cclass) interfaceFutureC3942wq;
                obj = cclass.f8614do;
                if (!(obj == null) && !(obj instanceof Ccase)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = cclass.f8614do;
                if (!(obj instanceof Ccase)) {
                    return z2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: case, reason: not valid java name */
    public final String m4925case() {
        Object obj = this.f8614do;
        if (obj instanceof Ccase) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            InterfaceFutureC3942wq<? extends V> interfaceFutureC3942wq = ((Ccase) obj).f8616do;
            return Creturn.m7984try(sb, interfaceFutureC3942wq == this ? "this future" : String.valueOf(interfaceFutureC3942wq), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4926do(StringBuilder sb) {
        V v;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(v == this ? "this future" : String.valueOf(v));
        sb.append("]");
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4927else(Cgoto cgoto) {
        cgoto.f8621do = null;
        while (true) {
            Cgoto cgoto2 = this.f8612do;
            if (cgoto2 == Cgoto.f8619if) {
                return;
            }
            Cgoto cgoto3 = null;
            while (cgoto2 != null) {
                Cgoto cgoto4 = cgoto2.f8620do;
                if (cgoto2.f8621do != null) {
                    cgoto3 = cgoto2;
                } else if (cgoto3 != null) {
                    cgoto3.f8620do = cgoto4;
                    if (cgoto3.f8621do == null) {
                        break;
                    }
                } else if (!f8608do.mo4930for(this, cgoto2, cgoto4)) {
                    break;
                }
                cgoto2 = cgoto4;
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00bc  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ad -> B:33:0x00b3). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r18, java.util.concurrent.TimeUnit r20) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Cclass.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f8614do instanceof Cif;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof Ccase)) & (this.f8614do != null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    public final V m4928new(Object obj) {
        if (obj instanceof Cif) {
            Throwable th = ((Cif) obj).f8624do;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof Cfor) {
            throw new ExecutionException(((Cfor) obj).f8618do);
        }
        if (obj == f8611if) {
            return null;
        }
        return obj;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f8614do instanceof Cif) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m4926do(sb);
        } else {
            try {
                str = m4925case();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m4926do(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f8614do;
            if ((obj2 != null) & (!(obj2 instanceof Ccase))) {
                return m4928new(obj2);
            }
            Cgoto cgoto = this.f8612do;
            Cgoto cgoto2 = Cgoto.f8619if;
            if (cgoto != cgoto2) {
                Cgoto cgoto3 = new Cgoto();
                do {
                    Cdo cdo = f8608do;
                    cdo.mo4932new(cgoto3, cgoto);
                    if (cdo.mo4930for(this, cgoto, cgoto3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f8614do;
                            } else {
                                m4927else(cgoto3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof Ccase))));
                        return m4928new(obj);
                    }
                    cgoto = this.f8612do;
                } while (cgoto != cgoto2);
            }
            return m4928new(this.f8614do);
        }
        throw new InterruptedException();
    }
}
