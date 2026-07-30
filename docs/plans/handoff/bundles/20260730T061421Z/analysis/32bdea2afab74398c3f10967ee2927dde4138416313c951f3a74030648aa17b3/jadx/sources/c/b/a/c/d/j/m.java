package c.b.a.c.d.j;

import android.content.ServiceConnection;

/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f2973a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static m f2974b;

    public boolean a(String str, String str2, int i, ServiceConnection serviceConnection, String str3) {
        boolean z;
        l lVar = new l(str, str2, i);
        C c2 = (C) this;
        c.b.a.c.b.a.S(serviceConnection, "ServiceConnection must not be null");
        synchronized (c2.f2939c) {
            D d2 = (D) c2.f2939c.get(lVar);
            if (d2 == null) {
                d2 = new D(c2, lVar);
                c.b.a.c.d.l.a aVar = d2.g.f;
                d2.e.a();
                d2.f2941a.add(serviceConnection);
                d2.a(str3);
                c2.f2939c.put(lVar, d2);
            } else {
                c2.e.removeMessages(0, lVar);
                if (d2.f2941a.contains(serviceConnection)) {
                    String valueOf = String.valueOf(lVar);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
                c.b.a.c.d.l.a aVar2 = d2.g.f;
                d2.e.a();
                d2.f2941a.add(serviceConnection);
                int i2 = d2.f2942b;
                if (i2 == 1) {
                    serviceConnection.onServiceConnected(d2.f, d2.f2944d);
                } else if (i2 == 2) {
                    d2.a(str3);
                }
            }
            z = d2.f2943c;
        }
        return z;
    }

    public void b(String str, String str2, int i, ServiceConnection serviceConnection, String str3) {
        l lVar = new l(str, str2, i);
        C c2 = (C) this;
        c.b.a.c.b.a.S(serviceConnection, "ServiceConnection must not be null");
        synchronized (c2.f2939c) {
            D d2 = (D) c2.f2939c.get(lVar);
            if (d2 == null) {
                String valueOf = String.valueOf(lVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            }
            if (!d2.f2941a.contains(serviceConnection)) {
                String valueOf2 = String.valueOf(lVar);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
            c.b.a.c.d.l.a aVar = d2.g.f;
            d2.f2941a.remove(serviceConnection);
            if (d2.f2941a.isEmpty()) {
                c2.e.sendMessageDelayed(c2.e.obtainMessage(0, lVar), c2.g);
            }
        }
    }
}
