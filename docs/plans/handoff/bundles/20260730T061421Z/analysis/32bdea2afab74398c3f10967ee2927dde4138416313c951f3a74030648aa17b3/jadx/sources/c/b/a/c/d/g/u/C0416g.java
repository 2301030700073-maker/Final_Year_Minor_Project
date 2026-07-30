package c.b.a.c.d.g.u;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: c.b.a.c.d.g.u.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0416g implements Handler.Callback {
    public static final Status n = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status o = new Status(4, "The user must be signed in to make this API call.");
    public static final Object p = new Object();
    public static C0416g q;

    /* renamed from: d, reason: collision with root package name */
    public final Context f2906d;
    public final c.b.a.c.d.b e;
    public final c.b.a.c.d.j.G f;
    public final Handler m;

    /* renamed from: a, reason: collision with root package name */
    public long f2903a = 5000;

    /* renamed from: b, reason: collision with root package name */
    public long f2904b = 120000;

    /* renamed from: c, reason: collision with root package name */
    public long f2905c = 10000;
    public final AtomicInteger g = new AtomicInteger(1);
    public final AtomicInteger h = new AtomicInteger(0);
    public final Map i = new ConcurrentHashMap(5, 0.75f, 1);
    public DialogInterfaceOnCancelListenerC0414e j = null;
    public final Set k = new b.d.i(0);
    public final Set l = new b.d.i(0);

    public C0416g(Context context, Looper looper, c.b.a.c.d.b bVar) {
        this.f2906d = context;
        this.m = new Handler(looper, this);
        this.e = bVar;
        this.f = new c.b.a.c.d.j.G(bVar);
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public static C0416g a(Context context) {
        C0416g c0416g;
        synchronized (p) {
            if (q == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                Looper looper = handlerThread.getLooper();
                Context applicationContext = context.getApplicationContext();
                c.b.a.c.d.b bVar = c.b.a.c.d.b.f2872c;
                q = new C0416g(applicationContext, looper, c.b.a.c.d.b.f2872c);
            }
            c0416g = q;
        }
        return c0416g;
    }

    public final boolean b(ConnectionResult connectionResult, int i) {
        c.b.a.c.d.b bVar = this.e;
        Context context = this.f2906d;
        Objects.requireNonNull(bVar);
        PendingIntent b2 = connectionResult.f3361b != 0 && connectionResult.f3362c != null ? connectionResult.f3362c : bVar.b(context, connectionResult.f3361b, 0, null);
        if (b2 == null) {
            return false;
        }
        bVar.g(context, connectionResult.f3361b, GoogleApiActivity.a(context, b2, i));
        return true;
    }

    public final void c(c.b.a.c.d.g.l lVar) {
        F f = lVar.f2886d;
        C0418i c0418i = (C0418i) this.i.get(f);
        if (c0418i == null) {
            c0418i = new C0418i(this, lVar);
            this.i.put(f, c0418i);
        }
        if (c0418i.h()) {
            this.l.add(f);
        }
        c0418i.g();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        C0418i c0418i = null;
        switch (i) {
            case 1:
                this.f2905c = ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.m.removeMessages(12);
                for (F f : this.i.keySet()) {
                    Handler handler = this.m;
                    handler.sendMessageDelayed(handler.obtainMessage(12, f), this.f2905c);
                }
                return true;
            case 2:
                Objects.requireNonNull((G) message.obj);
                throw null;
            case 3:
                for (C0418i c0418i2 : this.i.values()) {
                    c0418i2.f();
                    c0418i2.g();
                }
                return true;
            case 4:
            case 8:
            case 13:
                t tVar = (t) message.obj;
                C0418i c0418i3 = (C0418i) this.i.get(tVar.f2926c.f2886d);
                if (c0418i3 == null) {
                    c(tVar.f2926c);
                    c0418i3 = (C0418i) this.i.get(tVar.f2926c.f2886d);
                }
                if (!c0418i3.h() || this.h.get() == tVar.f2925b) {
                    c0418i3.c(tVar.f2924a);
                } else {
                    tVar.f2924a.b(n);
                    c0418i3.a();
                }
                return true;
            case 5:
                int i2 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it = this.i.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        C0418i c0418i4 = (C0418i) it.next();
                        if (c0418i4.h == i2) {
                            c0418i = c0418i4;
                        }
                    }
                }
                if (c0418i != null) {
                    c.b.a.c.d.b bVar = this.e;
                    int i3 = connectionResult.f3361b;
                    Objects.requireNonNull(bVar);
                    String a2 = c.b.a.c.d.e.a(i3);
                    String str = connectionResult.f3363d;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(a2).length() + 69);
                    sb.append("Error resolution was canceled by the user, original error message: ");
                    sb.append(a2);
                    sb.append(": ");
                    sb.append(str);
                    c0418i.b(new Status(17, sb.toString()));
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append("Could not find API instance ");
                    sb2.append(i2);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                }
                return true;
            case 6:
                if (this.f2906d.getApplicationContext() instanceof Application) {
                    Application application = (Application) this.f2906d.getApplicationContext();
                    synchronized (H.e) {
                        if (!H.e.f2897d) {
                            application.registerActivityLifecycleCallbacks(H.e);
                            application.registerComponentCallbacks(H.e);
                            H.e.f2897d = true;
                        }
                    }
                    H h = H.e;
                    C0417h c0417h = new C0417h(this);
                    Objects.requireNonNull(h);
                    synchronized (H.e) {
                        h.f2896c.add(c0417h);
                    }
                    H h2 = H.e;
                    if (!h2.f2895b.get()) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!h2.f2895b.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            h2.f2894a.set(true);
                        }
                    }
                    if (!h2.f2894a.get()) {
                        this.f2905c = 300000L;
                    }
                }
                return true;
            case 7:
                c((c.b.a.c.d.g.l) message.obj);
                return true;
            case 9:
                if (this.i.containsKey(message.obj)) {
                    C0418i c0418i5 = (C0418i) this.i.get(message.obj);
                    c.b.a.c.b.a.W(c0418i5.l.m);
                    if (c0418i5.j) {
                        c0418i5.g();
                    }
                }
                return true;
            case 10:
                Iterator it2 = this.l.iterator();
                while (it2.hasNext()) {
                    ((C0418i) this.i.remove((F) it2.next())).a();
                }
                this.l.clear();
                return true;
            case 11:
                if (this.i.containsKey(message.obj)) {
                    C0418i c0418i6 = (C0418i) this.i.get(message.obj);
                    c.b.a.c.b.a.W(c0418i6.l.m);
                    if (c0418i6.j) {
                        c0418i6.k();
                        C0416g c0416g = c0418i6.l;
                        c0418i6.b(c0416g.e.c(c0416g.f2906d, c.b.a.c.d.c.f2873a) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                        c0418i6.f2909b.i();
                    }
                }
                return true;
            case 12:
                if (this.i.containsKey(message.obj)) {
                    C0418i c0418i7 = (C0418i) this.i.get(message.obj);
                    c.b.a.c.b.a.W(c0418i7.l.m);
                    if (c0418i7.f2909b.c() && c0418i7.g.size() == 0) {
                        C0412c c0412c = c0418i7.e;
                        if ((c0412c.f2899a.isEmpty() && c0412c.f2900b.isEmpty()) ? false : true) {
                            c0418i7.l();
                        } else {
                            c0418i7.f2909b.i();
                        }
                    }
                }
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }
}
