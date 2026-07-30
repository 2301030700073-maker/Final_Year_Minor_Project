package c.b.a.c.d.j;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient$zzd;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.IGmsServiceBroker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class z implements c.b.a.c.d.g.d {

    /* renamed from: a, reason: collision with root package name */
    public F f2985a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f2986b;

    /* renamed from: c, reason: collision with root package name */
    public final m f2987c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f2988d;
    public final Object e;
    public final Object f;
    public IGmsServiceBroker g;
    public InterfaceC0420a h;
    public IInterface i;
    public final ArrayList j;
    public ServiceConnectionC0424e k;
    public int l;
    public final A m;
    public final B n;
    public final int o;
    public final String p;
    public ConnectionResult q;
    public boolean r;
    public AtomicInteger s;
    public final Set t;
    public final Account u;

    public z(Context context, Looper looper, int i, k kVar, c.b.a.c.d.g.m mVar, c.b.a.c.d.g.n nVar) {
        synchronized (m.f2973a) {
            if (m.f2974b == null) {
                m.f2974b = new C(context.getApplicationContext());
            }
        }
        m mVar2 = m.f2974b;
        c.b.a.c.d.b bVar = c.b.a.c.d.b.f2872c;
        c.b.a.c.b.a.R(mVar);
        c.b.a.c.b.a.R(nVar);
        A a2 = new A(mVar);
        B b2 = new B(nVar);
        String str = kVar.f;
        this.e = new Object();
        this.f = new Object();
        this.j = new ArrayList();
        this.l = 1;
        this.q = null;
        this.r = false;
        this.s = new AtomicInteger(0);
        c.b.a.c.b.a.S(context, "Context must not be null");
        this.f2986b = context;
        c.b.a.c.b.a.S(looper, "Looper must not be null");
        c.b.a.c.b.a.S(mVar2, "Supervisor must not be null");
        this.f2987c = mVar2;
        c.b.a.c.b.a.S(bVar, "API availability must not be null");
        this.f2988d = new HandlerC0422c(this, looper);
        this.o = i;
        this.m = a2;
        this.n = b2;
        this.p = str;
        this.u = kVar.f2965a;
        Set set = kVar.f2967c;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.t = set;
    }

    @Override // c.b.a.c.d.g.d
    public boolean b() {
        boolean z;
        synchronized (this.e) {
            z = this.l == 2 || this.l == 3;
        }
        return z;
    }

    @Override // c.b.a.c.d.g.d
    public boolean c() {
        boolean z;
        synchronized (this.e) {
            z = this.l == 4;
        }
        return z;
    }

    @Override // c.b.a.c.d.g.d
    public void e(IAccountAccessor iAccountAccessor, Set set) {
        Bundle r = r();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.o);
        getServiceRequest.f3406d = this.f2986b.getPackageName();
        getServiceRequest.g = r;
        if (set != null) {
            getServiceRequest.f = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (j()) {
            Account account = this.u;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            getServiceRequest.h = account;
            if (iAccountAccessor != null) {
                getServiceRequest.e = iAccountAccessor.asBinder();
            }
        }
        getServiceRequest.i = new Feature[0];
        try {
            try {
                synchronized (this.f) {
                    if (this.g != null) {
                        this.g.getService(new BaseGmsClient$zzd(this, this.s.get()), getServiceRequest);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                }
            } catch (RemoteException | RuntimeException e) {
                Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
                int i = this.s.get();
                Handler handler = this.f2988d;
                handler.sendMessage(handler.obtainMessage(1, i, -1, new C0426g(this, 8, null, null)));
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            Handler handler2 = this.f2988d;
            handler2.sendMessage(handler2.obtainMessage(6, this.s.get(), 1));
        } catch (SecurityException e3) {
            throw e3;
        }
    }

    @Override // c.b.a.c.d.g.d
    public void f(c.b.a.c.d.g.u.l lVar) {
        lVar.f2914a.l.m.post(new c.b.a.c.d.g.u.m(lVar));
    }

    @Override // c.b.a.c.d.g.d
    public void h(InterfaceC0420a interfaceC0420a) {
        c.b.a.c.b.a.S(interfaceC0420a, "Connection progress callbacks cannot be null.");
        this.h = interfaceC0420a;
        t(2, null);
    }

    @Override // c.b.a.c.d.g.d
    public void i() {
        this.s.incrementAndGet();
        synchronized (this.j) {
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                AbstractC0423d abstractC0423d = (AbstractC0423d) this.j.get(i);
                synchronized (abstractC0423d) {
                    abstractC0423d.f2954a = null;
                }
            }
            this.j.clear();
        }
        synchronized (this.f) {
            this.g = null;
        }
        t(1, null);
    }

    @Override // c.b.a.c.d.g.d
    public boolean j() {
        return false;
    }

    @Override // c.b.a.c.d.g.d
    public boolean k() {
        return true;
    }

    @Override // c.b.a.c.d.g.d
    public final String l() {
        F f;
        if (!c() || (f = this.f2985a) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return f.f2948b;
    }

    public abstract String m();

    public abstract String n();

    public abstract IInterface o(IBinder iBinder);

    public final boolean p(int i, int i2, IInterface iInterface) {
        boolean z;
        synchronized (this.e) {
            if (this.l != i) {
                z = false;
            } else {
                t(i2, iInterface);
                z = true;
            }
        }
        return z;
    }

    public final IInterface q() {
        IInterface iInterface;
        synchronized (this.e) {
            if (this.l == 5) {
                throw new DeadObjectException();
            }
            if (!c()) {
                throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
            }
            c.b.a.c.b.a.n0(this.i != null, "Client is connected but service is null");
            iInterface = this.i;
        }
        return iInterface;
    }

    public Bundle r() {
        return new Bundle();
    }

    public final void s(int i) {
        int i2;
        if (v()) {
            i2 = 5;
            this.r = true;
        } else {
            i2 = 4;
        }
        Handler handler = this.f2988d;
        handler.sendMessage(handler.obtainMessage(i2, this.s.get(), 16));
    }

    public final void t(int i, IInterface iInterface) {
        c.b.a.c.b.a.C0((i == 4) == (iInterface != null));
        synchronized (this.e) {
            this.l = i;
            this.i = iInterface;
            if (i != 1) {
                if (i == 2 || i == 3) {
                    if (this.k != null && this.f2985a != null) {
                        String str = this.f2985a.f2947a;
                        String str2 = this.f2985a.f2948b;
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 70 + String.valueOf(str2).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(str);
                        sb.append(" on ");
                        sb.append(str2);
                        Log.e("GmsClient", sb.toString());
                        this.f2987c.b(this.f2985a.f2947a, this.f2985a.f2948b, this.f2985a.f2949c, this.k, u());
                        this.s.incrementAndGet();
                    }
                    this.k = new ServiceConnectionC0424e(this, this.s.get());
                    F f = new F("com.google.android.gms", n(), false, 129);
                    this.f2985a = f;
                    if (!this.f2987c.a(f.f2947a, f.f2948b, f.f2949c, this.k, u())) {
                        String str3 = this.f2985a.f2947a;
                        String str4 = this.f2985a.f2948b;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 34 + String.valueOf(str4).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(str3);
                        sb2.append(" on ");
                        sb2.append(str4);
                        Log.e("GmsClient", sb2.toString());
                        int i2 = this.s.get();
                        Handler handler = this.f2988d;
                        handler.sendMessage(handler.obtainMessage(7, i2, -1, new h(this, 16)));
                    }
                } else if (i == 4) {
                    System.currentTimeMillis();
                }
            } else if (this.k != null) {
                this.f2987c.b(n(), "com.google.android.gms", 129, this.k, u());
                this.k = null;
            }
        }
    }

    public final String u() {
        String str = this.p;
        return str == null ? this.f2986b.getClass().getName() : str;
    }

    public final boolean v() {
        boolean z;
        synchronized (this.e) {
            z = this.l == 3;
        }
        return z;
    }

    public final boolean w() {
        if (this.r || TextUtils.isEmpty(m()) || TextUtils.isEmpty(null)) {
            return false;
        }
        try {
            Class.forName(m());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
