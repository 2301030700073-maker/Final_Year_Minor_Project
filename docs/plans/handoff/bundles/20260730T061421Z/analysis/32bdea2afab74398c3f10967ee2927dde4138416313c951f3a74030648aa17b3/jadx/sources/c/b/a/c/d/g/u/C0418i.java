package c.b.a.c.d.g.u;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zzdb;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;

/* renamed from: c.b.a.c.d.g.u.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0418i implements c.b.a.c.d.g.m, c.b.a.c.d.g.n {

    /* renamed from: b, reason: collision with root package name */
    public final c.b.a.c.d.g.d f2909b;

    /* renamed from: c, reason: collision with root package name */
    public final c.b.a.c.d.g.g f2910c;

    /* renamed from: d, reason: collision with root package name */
    public final F f2911d;
    public final C0412c e;
    public final int h;
    public final zzdb i;
    public boolean j;
    public final /* synthetic */ C0416g l;

    /* renamed from: a, reason: collision with root package name */
    public final Queue f2908a = new LinkedList();
    public final Set f = new HashSet();
    public final Map g = new HashMap();
    public ConnectionResult k = null;

    public C0418i(C0416g c0416g, c.b.a.c.d.g.l lVar) {
        this.l = c0416g;
        Looper looper = c0416g.m.getLooper();
        c.b.a.c.d.j.k a2 = lVar.a().a();
        c.b.a.c.d.g.j jVar = lVar.f2884b;
        c.b.a.c.b.a.n0(jVar.f2878a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        c.b.a.c.d.g.d a3 = jVar.f2878a.a(lVar.f2883a, looper, a2, lVar.f2885c, this, this);
        this.f2909b = a3;
        this.f2910c = a3;
        this.f2911d = lVar.f2886d;
        this.e = new C0412c();
        this.h = lVar.f;
        if (this.f2909b.j()) {
            this.i = new zzdb(c0416g.f2906d, c0416g.m, lVar.a().a());
        } else {
            this.i = null;
        }
    }

    public final void a() {
        c.b.a.c.b.a.W(this.l.m);
        b(C0416g.n);
        C0412c c0412c = this.e;
        Objects.requireNonNull(c0412c);
        c0412c.a(false, C0416g.n);
        for (s sVar : (s[]) this.g.keySet().toArray(new s[this.g.size()])) {
            c(new D(sVar, new c.b.a.c.j.a()));
        }
        d(new ConnectionResult(4));
        if (this.f2909b.c()) {
            this.f2909b.f(new l(this));
        }
    }

    public final void b(Status status) {
        c.b.a.c.b.a.W(this.l.m);
        Iterator it = this.f2908a.iterator();
        while (it.hasNext()) {
            ((AbstractC0415f) it.next()).b(status);
        }
        this.f2908a.clear();
    }

    public final void c(AbstractC0415f abstractC0415f) {
        c.b.a.c.b.a.W(this.l.m);
        if (this.f2909b.c()) {
            e(abstractC0415f);
            l();
            return;
        }
        this.f2908a.add(abstractC0415f);
        ConnectionResult connectionResult = this.k;
        if (connectionResult != null) {
            if ((connectionResult.f3361b == 0 || connectionResult.f3362c == null) ? false : true) {
                onConnectionFailed(this.k);
                return;
            }
        }
        g();
    }

    public final void d(ConnectionResult connectionResult) {
        Iterator it = this.f.iterator();
        if (!it.hasNext()) {
            this.f.clear();
            return;
        }
        G g = (G) it.next();
        if (connectionResult == ConnectionResult.e) {
            this.f2909b.l();
        }
        Objects.requireNonNull(g);
        throw null;
    }

    public final void e(AbstractC0415f abstractC0415f) {
        abstractC0415f.c(this.e, h());
        try {
            abstractC0415f.d(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.f2909b.i();
        }
    }

    public final void f() {
        c.b.a.c.b.a.W(this.l.m);
        this.k = null;
    }

    public final void g() {
        c.b.a.c.b.a.W(this.l.m);
        if (this.f2909b.c() || this.f2909b.b()) {
            return;
        }
        C0416g c0416g = this.l;
        c.b.a.c.d.j.G g = c0416g.f;
        Context context = c0416g.f2906d;
        c.b.a.c.d.g.d dVar = this.f2909b;
        Objects.requireNonNull(g);
        c.b.a.c.b.a.R(context);
        c.b.a.c.b.a.R(dVar);
        int i = 0;
        if (dVar.k()) {
            int a2 = dVar.a();
            int i2 = g.f2950a.get(a2, -1);
            if (i2 != -1) {
                i = i2;
            } else {
                int i3 = 0;
                while (true) {
                    if (i3 >= g.f2950a.size()) {
                        i = i2;
                        break;
                    }
                    int keyAt = g.f2950a.keyAt(i3);
                    if (keyAt > a2 && g.f2950a.get(keyAt) == 0) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i == -1) {
                    i = g.f2951b.c(context, a2);
                }
                g.f2950a.put(a2, i);
            }
        }
        if (i != 0) {
            onConnectionFailed(new ConnectionResult(i, null));
            return;
        }
        n nVar = new n(this.l, this.f2909b, this.f2911d);
        if (this.f2909b.j()) {
            zzdb zzdbVar = this.i;
            c.b.a.c.i.e eVar = zzdbVar.zzg;
            if (eVar != null) {
                eVar.i();
            }
            zzdbVar.zzf.h = Integer.valueOf(System.identityHashCode(zzdbVar));
            c.b.a.c.d.g.f fVar = zzdbVar.zzd;
            Context context2 = zzdbVar.zzb;
            Looper looper = zzdbVar.zzc.getLooper();
            c.b.a.c.d.j.k kVar = zzdbVar.zzf;
            zzdbVar.zzg = (c.b.a.c.i.e) fVar.a(context2, looper, kVar, kVar.g, zzdbVar, zzdbVar);
            zzdbVar.zzh = nVar;
            Set set = zzdbVar.zze;
            if (set == null || set.isEmpty()) {
                zzdbVar.zzc.post(new x(zzdbVar));
            } else {
                zzdbVar.zzg.g();
            }
        }
        this.f2909b.h(nVar);
    }

    public final boolean h() {
        return this.f2909b.j();
    }

    public final void i() {
        f();
        d(ConnectionResult.e);
        k();
        for (u uVar : this.g.values()) {
            try {
                new c.b.a.c.j.b();
                throw null;
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                this.f2909b.i();
            } catch (RemoteException unused2) {
            }
        }
        while (this.f2909b.c() && !this.f2908a.isEmpty()) {
            e((AbstractC0415f) this.f2908a.remove());
        }
        l();
    }

    public final void j() {
        f();
        this.j = true;
        this.e.a(true, B.f2887a);
        Handler handler = this.l.m;
        Message obtain = Message.obtain(handler, 9, this.f2911d);
        long j = this.l.f2903a;
        handler.sendMessageDelayed(obtain, 5000L);
        Handler handler2 = this.l.m;
        Message obtain2 = Message.obtain(handler2, 11, this.f2911d);
        long j2 = this.l.f2904b;
        handler2.sendMessageDelayed(obtain2, 120000L);
        this.l.f.f2950a.clear();
    }

    public final void k() {
        if (this.j) {
            this.l.m.removeMessages(11, this.f2911d);
            this.l.m.removeMessages(9, this.f2911d);
            this.j = false;
        }
    }

    public final void l() {
        this.l.m.removeMessages(12, this.f2911d);
        Handler handler = this.l.m;
        handler.sendMessageDelayed(handler.obtainMessage(12, this.f2911d), this.l.f2905c);
    }

    @Override // c.b.a.c.d.g.m
    public final void onConnected(Bundle bundle) {
        if (Looper.myLooper() == this.l.m.getLooper()) {
            i();
        } else {
            this.l.m.post(new RunnableC0419j(this));
        }
    }

    @Override // c.b.a.c.d.g.n
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        c.b.a.c.i.e eVar;
        c.b.a.c.b.a.W(this.l.m);
        zzdb zzdbVar = this.i;
        if (zzdbVar != null && (eVar = zzdbVar.zzg) != null) {
            eVar.i();
        }
        f();
        this.l.f.f2950a.clear();
        d(connectionResult);
        if (connectionResult.f3361b == 4) {
            b(C0416g.o);
            return;
        }
        if (this.f2908a.isEmpty()) {
            this.k = connectionResult;
            return;
        }
        synchronized (C0416g.p) {
        }
        if (this.l.b(connectionResult, this.h)) {
            return;
        }
        if (connectionResult.f3361b == 18) {
            this.j = true;
        }
        if (this.j) {
            Handler handler = this.l.m;
            Message obtain = Message.obtain(handler, 9, this.f2911d);
            long j = this.l.f2903a;
            handler.sendMessageDelayed(obtain, 5000L);
            return;
        }
        String str = this.f2911d.f2892c.f2880c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38);
        sb.append("API: ");
        sb.append(str);
        sb.append(" is not available on this device.");
        b(new Status(17, sb.toString()));
    }

    @Override // c.b.a.c.d.g.m
    public final void onConnectionSuspended(int i) {
        if (Looper.myLooper() == this.l.m.getLooper()) {
            j();
        } else {
            this.l.m.post(new k(this));
        }
    }
}
