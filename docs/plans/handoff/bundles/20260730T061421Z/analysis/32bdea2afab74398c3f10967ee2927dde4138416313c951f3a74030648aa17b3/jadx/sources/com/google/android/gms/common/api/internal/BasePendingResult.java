package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import c.b.a.c.b.a;
import c.b.a.c.d.g.o;
import c.b.a.c.d.g.p;
import c.b.a.c.d.g.q;
import c.b.a.c.d.g.r;
import c.b.a.c.d.g.s;
import c.b.a.c.d.g.t;
import c.b.a.c.d.g.u.C;
import c.b.a.c.d.g.u.C0411b;
import c.b.a.c.d.g.u.HandlerC0410a;
import c.b.a.c.d.g.u.J;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@KeepName
/* loaded from: classes.dex */
public abstract class BasePendingResult extends q {
    public static final ThreadLocal n = new J();

    /* renamed from: a, reason: collision with root package name */
    public final Object f3377a;

    /* renamed from: b, reason: collision with root package name */
    public final HandlerC0410a f3378b;

    /* renamed from: c, reason: collision with root package name */
    public final CountDownLatch f3379c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3380d;
    public t e;
    public final AtomicReference f;
    public s g;
    public Status h;
    public volatile boolean i;
    public boolean j;
    public boolean k;
    public zzx l;
    public boolean m;

    @KeepName
    public C0411b mResultGuardian;

    @Deprecated
    public BasePendingResult() {
        this.f3377a = new Object();
        this.f3379c = new CountDownLatch(1);
        this.f3380d = new ArrayList();
        this.f = new AtomicReference();
        this.m = false;
        this.f3378b = new HandlerC0410a(Looper.getMainLooper());
        new WeakReference(null);
    }

    public static void e(s sVar) {
        if (sVar instanceof r) {
            try {
                ((r) sVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(sVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    @Override // c.b.a.c.d.g.q
    public final void a(t tVar) {
        synchronized (this.f3377a) {
            this.e = null;
        }
    }

    public final s b() {
        s sVar;
        synchronized (this.f3377a) {
            a.n0(!this.i, "Result has already been consumed.");
            a.n0(h(), "Result is not ready.");
            sVar = this.g;
            this.g = null;
            this.e = null;
            this.i = true;
        }
        C c2 = (C) this.f.getAndSet(null);
        if (c2 != null) {
            c2.a(this);
        }
        return sVar;
    }

    public abstract s c(Status status);

    public final void d(s sVar) {
        synchronized (this.f3377a) {
            if (this.k || this.j) {
                e(sVar);
                return;
            }
            h();
            boolean z = true;
            a.n0(!h(), "Results have already been set");
            if (this.i) {
                z = false;
            }
            a.n0(z, "Result has already been consumed");
            f(sVar);
        }
    }

    public final void f(s sVar) {
        this.g = sVar;
        this.l = null;
        this.f3379c.countDown();
        this.h = this.g.g();
        if (this.j) {
            this.e = null;
        } else if (this.e != null) {
            this.f3378b.removeMessages(2);
            HandlerC0410a handlerC0410a = this.f3378b;
            t tVar = this.e;
            s b2 = b();
            Objects.requireNonNull(handlerC0410a);
            handlerC0410a.sendMessage(handlerC0410a.obtainMessage(1, new Pair(tVar, b2)));
        } else if (this.g instanceof r) {
            this.mResultGuardian = new C0411b(this, null);
        }
        ArrayList arrayList = this.f3380d;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((p) obj).a(this.h);
        }
        this.f3380d.clear();
    }

    public final void g(Status status) {
        synchronized (this.f3377a) {
            if (!h()) {
                d(c(status));
                this.k = true;
            }
        }
    }

    public final boolean h() {
        return this.f3379c.getCount() == 0;
    }

    public BasePendingResult(o oVar) {
        this.f3377a = new Object();
        this.f3379c = new CountDownLatch(1);
        this.f3380d = new ArrayList();
        this.f = new AtomicReference();
        this.m = false;
        this.f3378b = new HandlerC0410a(oVar != null ? oVar.a() : Looper.getMainLooper());
        new WeakReference(oVar);
    }
}
