package defpackage;

import com.google.android.gms.common.api.Api;
import defpackage.Vy;
import java.io.InterruptedIOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: Ce, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0141Ce {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ThreadPoolExecutor f399do;

    /* renamed from: do, reason: not valid java name */
    public final int f397do = 64;

    /* renamed from: if, reason: not valid java name */
    public final int f401if = 5;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f398do = new ArrayDeque();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayDeque f402if = new ArrayDeque();

    /* renamed from: for, reason: not valid java name */
    public final ArrayDeque f400for = new ArrayDeque();

    /* renamed from: case, reason: not valid java name */
    public final void m279case() {
        int i;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator it = this.f398do.iterator();
                while (true) {
                    i = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    Vy.Cif cif = (Vy.Cif) it.next();
                    if (this.f402if.size() >= this.f397do) {
                        break;
                    }
                    Iterator it2 = this.f402if.iterator();
                    while (it2.hasNext()) {
                        Vy vy = Vy.this;
                        if (!vy.f4280do && vy.f4275do.f296do.f1234new.equals(Vy.this.f4275do.f296do.f1234new)) {
                            i++;
                        }
                    }
                    if (i < this.f401if) {
                        it.remove();
                        arrayList.add(cif);
                        this.f402if.add(cif);
                    }
                }
                m281else();
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        while (i < size) {
            Vy.Cif cif2 = (Vy.Cif) arrayList.get(i);
            ExecutorService m282for = m282for();
            Vy vy2 = Vy.this;
            try {
                try {
                    ((ThreadPoolExecutor) m282for).execute(cif2);
                } catch (Throwable th2) {
                    vy2.f4279do.f16434do.m284new(cif2);
                    throw th2;
                }
            } catch (RejectedExecutionException e) {
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(e);
                vy2.f4278do.getClass();
                ((C3410no) cif2.f4283do).m7615do(vy2, interruptedIOException);
                vy2.f4279do.f16434do.m284new(cif2);
            }
            i++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m280do(Vy.Cif cif) {
        synchronized (this) {
            this.f398do.add(cif);
        }
        m279case();
    }

    /* renamed from: else, reason: not valid java name */
    public final synchronized int m281else() {
        return this.f402if.size() + this.f400for.size();
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized ExecutorService m282for() {
        if (this.f399do == null) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            SynchronousQueue synchronousQueue = new SynchronousQueue();
            byte[] bArr = SJ.f3495do;
            this.f399do = new ThreadPoolExecutor(0, Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, timeUnit, synchronousQueue, new RJ("OkHttp Dispatcher", false));
        }
        return this.f399do;
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m283if(Vy vy) {
        this.f400for.add(vy);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m284new(Vy.Cif cif) {
        ArrayDeque arrayDeque = this.f402if;
        synchronized (this) {
            if (!arrayDeque.remove(cif)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        m279case();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m285try(Vy vy) {
        ArrayDeque arrayDeque = this.f400for;
        synchronized (this) {
            if (!arrayDeque.remove(vy)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        m279case();
    }
}
