package c.b.a.c.d.j;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.IGmsServiceBroker;

/* renamed from: c.b.a.c.d.j.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ServiceConnectionC0424e implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final int f2957a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f2958b;

    public ServiceConnectionC0424e(z zVar, int i) {
        this.f2958b = zVar;
        this.f2957a = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f2958b.s(16);
            return;
        }
        synchronized (this.f2958b.f) {
            z zVar = this.f2958b;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            zVar.g = (queryLocalInterface == null || !(queryLocalInterface instanceof IGmsServiceBroker)) ? new n(iBinder) : (IGmsServiceBroker) queryLocalInterface;
        }
        z zVar2 = this.f2958b;
        int i = this.f2957a;
        Handler handler = zVar2.f2988d;
        handler.sendMessage(handler.obtainMessage(7, i, -1, new h(zVar2, 0)));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f2958b.f) {
            this.f2958b.g = null;
        }
        Handler handler = this.f2958b.f2988d;
        handler.sendMessage(handler.obtainMessage(6, this.f2957a, 1));
    }
}
