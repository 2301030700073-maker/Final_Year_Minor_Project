package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* renamed from: vN, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ServiceConnectionC3858vN implements ServiceConnection {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3917wN f16081do;

    public /* synthetic */ ServiceConnectionC3858vN(C3917wN c3917wN) {
        this.f16081do = c3917wN;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C3917wN c3917wN = this.f16081do;
        c3917wN.f16327do.m6563if("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        c3917wN.m8570do().post(new C3740tN(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C3917wN c3917wN = this.f16081do;
        c3917wN.f16327do.m6563if("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        c3917wN.m8570do().post(new C3799uN(this));
    }
}
