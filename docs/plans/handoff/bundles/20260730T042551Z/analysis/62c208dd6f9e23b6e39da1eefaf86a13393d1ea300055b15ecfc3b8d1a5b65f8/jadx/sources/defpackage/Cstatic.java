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

/* renamed from: static, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cstatic<V> implements InterfaceFutureC3942wq<V> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f15541do;

    /* renamed from: if, reason: not valid java name */
    public static final Object f15543if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Object f15544do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Cgoto f15545do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile Cnew f15546do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f15542do = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: do, reason: not valid java name */
    public static final Logger f15540do = Logger.getLogger(Cstatic.class.getName());

    /* renamed from: static$case, reason: invalid class name */
    public static final class Ccase<V> implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: static$do, reason: invalid class name */
    public static abstract class Cdo {
        /* renamed from: do, reason: not valid java name */
        public abstract boolean mo8167do(Cstatic<?> cstatic, Cnew cnew, Cnew cnew2);

        /* renamed from: for, reason: not valid java name */
        public abstract boolean mo8168for(Cstatic<?> cstatic, Cgoto cgoto, Cgoto cgoto2);

        /* renamed from: if, reason: not valid java name */
        public abstract boolean mo8169if(Cstatic<?> cstatic, Object obj, Object obj2);

        /* renamed from: new, reason: not valid java name */
        public abstract void mo8170new(Cgoto cgoto, Cgoto cgoto2);

        /* renamed from: try, reason: not valid java name */
        public abstract void mo8171try(Cgoto cgoto, Thread thread);
    }

    /* renamed from: static$else, reason: invalid class name */
    public static final class Celse extends Cdo {
        @Override // defpackage.Cstatic.Cdo
        /* renamed from: do */
        public final boolean mo8167do(Cstatic<?> cstatic, Cnew cnew, Cnew cnew2) {
            synchronized (cstatic) {
                if (cstatic.f15546do != cnew) {
                    return false;
                }
                cstatic.f15546do = cnew2;
                return true;
            }
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: for */
        public final boolean mo8168for(Cstatic<?> cstatic, Cgoto cgoto, Cgoto cgoto2) {
            synchronized (cstatic) {
                if (cstatic.f15545do != cgoto) {
                    return false;
                }
                cstatic.f15545do = cgoto2;
                return true;
            }
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: if */
        public final boolean mo8169if(Cstatic<?> cstatic, Object obj, Object obj2) {
            synchronized (cstatic) {
                if (cstatic.f15544do != obj) {
                    return false;
                }
                cstatic.f15544do = obj2;
                return true;
            }
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: new */
        public final void mo8170new(Cgoto cgoto, Cgoto cgoto2) {
            cgoto.f15550do = cgoto2;
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: try */
        public final void mo8171try(Cgoto cgoto, Thread thread) {
            cgoto.f15549do = thread;
        }
    }

    /* renamed from: static$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Throwable f15547do;

        /* renamed from: static$for$do, reason: invalid class name */
        public class Cdo extends Throwable {
            public Cdo() {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new Cfor(new Cdo());
        }

        public Cfor(Throwable th) {
            boolean z = Cstatic.f15542do;
            th.getClass();
            this.f15547do = th;
        }
    }

    /* renamed from: static$goto, reason: invalid class name */
    public static final class Cgoto {

        /* renamed from: if, reason: not valid java name */
        public static final Cgoto f15548if = new Cgoto(0);

        /* renamed from: do, reason: not valid java name */
        public volatile Thread f15549do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public volatile Cgoto f15550do;

        public Cgoto(int i) {
        }

        public Cgoto() {
            Cstatic.f15541do.mo8171try(this, Thread.currentThread());
        }
    }

    /* renamed from: static$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f15551do;

        /* renamed from: if, reason: not valid java name */
        public static final Cif f15552if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Throwable f15553do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f15554do;

        static {
            if (Cstatic.f15542do) {
                f15552if = null;
                f15551do = null;
            } else {
                f15552if = new Cif(false, null);
                f15551do = new Cif(true, null);
            }
        }

        public Cif(boolean z, Throwable th) {
            this.f15554do = z;
            this.f15553do = th;
        }
    }

    /* renamed from: static$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cnew f15555if = new Cnew(null, null);

        /* renamed from: do, reason: not valid java name */
        public final Runnable f15556do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Executor f15557do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cnew f15558do;

        public Cnew(Runnable runnable, Executor executor) {
            this.f15556do = runnable;
            this.f15557do = executor;
        }
    }

    /* renamed from: static$try, reason: invalid class name */
    public static final class Ctry extends Cdo {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cgoto, Thread> f15559do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cstatic, Cgoto> f15560for;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cgoto, Cgoto> f15561if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cstatic, Cnew> f15562new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cstatic, Object> f15563try;

        public Ctry(AtomicReferenceFieldUpdater<Cgoto, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Cgoto, Cgoto> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<Cstatic, Cgoto> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<Cstatic, Cnew> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<Cstatic, Object> atomicReferenceFieldUpdater5) {
            this.f15559do = atomicReferenceFieldUpdater;
            this.f15561if = atomicReferenceFieldUpdater2;
            this.f15560for = atomicReferenceFieldUpdater3;
            this.f15562new = atomicReferenceFieldUpdater4;
            this.f15563try = atomicReferenceFieldUpdater5;
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: do */
        public final boolean mo8167do(Cstatic<?> cstatic, Cnew cnew, Cnew cnew2) {
            AtomicReferenceFieldUpdater<Cstatic, Cnew> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f15562new;
                if (atomicReferenceFieldUpdater.compareAndSet(cstatic, cnew, cnew2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(cstatic) == cnew);
            return false;
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: for */
        public final boolean mo8168for(Cstatic<?> cstatic, Cgoto cgoto, Cgoto cgoto2) {
            AtomicReferenceFieldUpdater<Cstatic, Cgoto> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f15560for;
                if (atomicReferenceFieldUpdater.compareAndSet(cstatic, cgoto, cgoto2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(cstatic) == cgoto);
            return false;
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: if */
        public final boolean mo8169if(Cstatic<?> cstatic, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater<Cstatic, Object> atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f15563try;
                if (atomicReferenceFieldUpdater.compareAndSet(cstatic, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(cstatic) == obj);
            return false;
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: new */
        public final void mo8170new(Cgoto cgoto, Cgoto cgoto2) {
            this.f15561if.lazySet(cgoto, cgoto2);
        }

        @Override // defpackage.Cstatic.Cdo
        /* renamed from: try */
        public final void mo8171try(Cgoto cgoto, Thread thread) {
            this.f15559do.lazySet(cgoto, thread);
        }
    }

    static {
        Cdo celse;
        try {
            celse = new Ctry(AtomicReferenceFieldUpdater.newUpdater(Cgoto.class, Thread.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cgoto.class, Cgoto.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cstatic.class, Cgoto.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cstatic.class, Cnew.class, "do"), AtomicReferenceFieldUpdater.newUpdater(Cstatic.class, Object.class, "do"));
            th = null;
        } catch (Throwable th) {
            th = th;
            celse = new Celse();
        }
        f15541do = celse;
        if (th != null) {
            f15540do.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f15543if = new Object();
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m8162goto(Cstatic<?> cstatic) {
        Cgoto cgoto;
        Cnew cnew;
        do {
            cgoto = cstatic.f15545do;
        } while (!f15541do.mo8168for(cstatic, cgoto, Cgoto.f15548if));
        while (cgoto != null) {
            Thread thread = cgoto.f15549do;
            if (thread != null) {
                cgoto.f15549do = null;
                LockSupport.unpark(thread);
            }
            cgoto = cgoto.f15550do;
        }
        cstatic.mo1774case();
        do {
            cnew = cstatic.f15546do;
        } while (!f15541do.mo8167do(cstatic, cnew, Cnew.f15555if));
        Cnew cnew2 = null;
        while (cnew != null) {
            Cnew cnew3 = cnew.f15558do;
            cnew.f15558do = cnew2;
            cnew2 = cnew;
            cnew = cnew3;
        }
        while (cnew2 != null) {
            Cnew cnew4 = cnew2.f15558do;
            Runnable runnable = cnew2.f15556do;
            if (runnable instanceof Ccase) {
                ((Ccase) runnable).getClass();
                throw null;
            }
            m8163this(runnable, cnew2.f15557do);
            cnew2 = cnew4;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m8163this(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f15540do.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // defpackage.InterfaceFutureC3942wq
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        Cnew cnew = this.f15546do;
        Cnew cnew2 = Cnew.f15555if;
        if (cnew != cnew2) {
            Cnew cnew3 = new Cnew(runnable, executor);
            do {
                cnew3.f15558do = cnew;
                if (f15541do.mo8167do(this, cnew, cnew3)) {
                    return;
                } else {
                    cnew = this.f15546do;
                }
            } while (cnew != cnew2);
        }
        m8163this(runnable, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: break, reason: not valid java name */
    public final V m8164break(Object obj) {
        if (obj instanceof Cif) {
            Throwable th = ((Cif) obj).f15553do;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof Cfor) {
            throw new ExecutionException(((Cfor) obj).f15547do);
        }
        if (obj == f15543if) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f15544do;
        if ((obj == null) | (obj instanceof Ccase)) {
            Cif cif = f15542do ? new Cif(z, new CancellationException("Future.cancel() was called.")) : z ? Cif.f15551do : Cif.f15552if;
            while (!f15541do.mo8169if(this, obj, cif)) {
                obj = this.f15544do;
                if (!(obj instanceof Ccase)) {
                }
            }
            m8162goto(this);
            if (!(obj instanceof Ccase)) {
                return true;
            }
            ((Ccase) obj).getClass();
            throw null;
        }
        return false;
    }

    /* renamed from: case */
    public void mo1774case() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: const */
    public String mo435const() {
        Object obj = this.f15544do;
        if (obj instanceof Ccase) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            ((Ccase) obj).getClass();
            sb.append("null");
            sb.append("]");
            return sb.toString();
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8165do(StringBuilder sb) {
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
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Cstatic.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f15544do instanceof Cif;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof Ccase)) & (this.f15544do != null);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m8166super(Cgoto cgoto) {
        cgoto.f15549do = null;
        while (true) {
            Cgoto cgoto2 = this.f15545do;
            if (cgoto2 == Cgoto.f15548if) {
                return;
            }
            Cgoto cgoto3 = null;
            while (cgoto2 != null) {
                Cgoto cgoto4 = cgoto2.f15550do;
                if (cgoto2.f15549do != null) {
                    cgoto3 = cgoto2;
                } else if (cgoto3 != null) {
                    cgoto3.f15550do = cgoto4;
                    if (cgoto3.f15549do == null) {
                        break;
                    }
                } else if (!f15541do.mo8168for(this, cgoto2, cgoto4)) {
                    break;
                }
                cgoto2 = cgoto4;
            }
            return;
        }
    }

    /* renamed from: throw */
    public boolean mo1469throw(V v) {
        if (v == null) {
            v = (V) f15543if;
        }
        if (!f15541do.mo8169if(this, null, v)) {
            return false;
        }
        m8162goto(this);
        return true;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f15544do instanceof Cif) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m8165do(sb);
        } else {
            try {
                str = mo435const();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                m8165do(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: while */
    public boolean mo1470while(Throwable th) {
        th.getClass();
        if (!f15541do.mo8169if(this, null, new Cfor(th))) {
            return false;
        }
        m8162goto(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f15544do;
            if ((obj2 != null) & (!(obj2 instanceof Ccase))) {
                return m8164break(obj2);
            }
            Cgoto cgoto = this.f15545do;
            Cgoto cgoto2 = Cgoto.f15548if;
            if (cgoto != cgoto2) {
                Cgoto cgoto3 = new Cgoto();
                do {
                    Cdo cdo = f15541do;
                    cdo.mo8170new(cgoto3, cgoto);
                    if (cdo.mo8168for(this, cgoto, cgoto3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f15544do;
                            } else {
                                m8166super(cgoto3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof Ccase))));
                        return m8164break(obj);
                    }
                    cgoto = this.f15545do;
                } while (cgoto != cgoto2);
            }
            return m8164break(this.f15544do);
        }
        throw new InterruptedException();
    }
}
