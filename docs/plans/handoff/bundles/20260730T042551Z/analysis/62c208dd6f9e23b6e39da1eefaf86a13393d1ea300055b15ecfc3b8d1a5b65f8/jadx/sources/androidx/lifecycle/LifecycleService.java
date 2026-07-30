package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.Ctry;
import defpackage.C0173Do;
import defpackage.InterfaceC2714eq;

/* loaded from: classes.dex */
public class LifecycleService extends Service implements InterfaceC2714eq {

    /* renamed from: do, reason: not valid java name */
    public final Cthrow f7065do = new Cthrow(this);

    @Override // defpackage.InterfaceC2714eq
    public final Ctry getLifecycle() {
        return this.f7065do.f7142do;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        C0173Do.m401try(intent, "intent");
        this.f7065do.m4276do(Ctry.Cdo.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f7065do.m4276do(Ctry.Cdo.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        Ctry.Cdo cdo = Ctry.Cdo.ON_STOP;
        Cthrow cthrow = this.f7065do;
        cthrow.m4276do(cdo);
        cthrow.m4276do(Ctry.Cdo.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        this.f7065do.m4276do(Ctry.Cdo.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
