package c.b.a.c.d.j;

import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public final class C extends m implements Handler.Callback {

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f2939c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Context f2940d;
    public final Handler e;
    public final c.b.a.c.d.l.a f;
    public final long g;
    public final long h;

    public C(Context context) {
        this.f2940d = context.getApplicationContext();
        this.e = new Handler(context.getMainLooper(), this);
        if (c.b.a.c.d.l.a.f2990b == null) {
            synchronized (c.b.a.c.d.l.a.f2989a) {
                if (c.b.a.c.d.l.a.f2990b == null) {
                    c.b.a.c.d.l.a.f2990b = new c.b.a.c.d.l.a();
                }
            }
        }
        this.f = c.b.a.c.d.l.a.f2990b;
        this.g = 5000L;
        this.h = 300000L;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.f2939c) {
                l lVar = (l) message.obj;
                D d2 = (D) this.f2939c.get(lVar);
                if (d2 != null && d2.f2941a.isEmpty()) {
                    if (d2.f2943c) {
                        d2.g.e.removeMessages(1, d2.e);
                        C c2 = d2.g;
                        c.b.a.c.d.l.a aVar = c2.f;
                        c2.f2940d.unbindService(d2);
                        d2.f2943c = false;
                        d2.f2942b = 2;
                    }
                    this.f2939c.remove(lVar);
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        synchronized (this.f2939c) {
            l lVar2 = (l) message.obj;
            D d3 = (D) this.f2939c.get(lVar2);
            if (d3 != null && d3.f2942b == 3) {
                String valueOf = String.valueOf(lVar2);
                StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                sb.append("Timeout waiting for ServiceConnection callback ");
                sb.append(valueOf);
                Log.wtf("GmsClientSupervisor", sb.toString(), new Exception());
                ComponentName componentName = d3.f;
                if (componentName == null) {
                    Objects.requireNonNull(lVar2);
                    componentName = null;
                }
                if (componentName == null) {
                    componentName = new ComponentName(lVar2.f2970b, "unknown");
                }
                d3.onServiceDisconnected(componentName);
            }
        }
        return true;
    }
}
