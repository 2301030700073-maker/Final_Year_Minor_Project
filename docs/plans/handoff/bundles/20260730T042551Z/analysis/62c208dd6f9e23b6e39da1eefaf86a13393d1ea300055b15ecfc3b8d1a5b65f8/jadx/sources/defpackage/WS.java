package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzo;

/* loaded from: classes.dex */
public final /* synthetic */ class WS implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IBinder f4383do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f4384do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f4385for = 1;

    public /* synthetic */ WS(ServiceConnectionC3630rV serviceConnectionC3630rV, IBinder iBinder) {
        this.f4384do = serviceConnectionC3630rV;
        this.f4383do = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4385for) {
            case 0:
                ServiceConnectionC3630rV serviceConnectionC3630rV = (ServiceConnectionC3630rV) this.f4384do;
                IBinder iBinder = this.f4383do;
                synchronized (serviceConnectionC3630rV) {
                    try {
                        if (iBinder == null) {
                            serviceConnectionC3630rV.m7968do(0, "Null service connection");
                        } else {
                            try {
                                serviceConnectionC3630rV.f15293do = new C4043yV(iBinder);
                                serviceConnectionC3630rV.f15288do = 2;
                                serviceConnectionC3630rV.f15289do.f4137do.execute(new NR(serviceConnectionC3630rV, 1));
                            } catch (RemoteException e) {
                                serviceConnectionC3630rV.m7968do(0, e.getMessage());
                            }
                        }
                    } finally {
                    }
                }
                return;
            default:
                YS ys = (YS) this.f4383do;
                ys.f4740do.p();
                ys.f4740do.d((zzo) this.f4384do);
                return;
        }
    }

    public WS(YS ys, zzo zzoVar) {
        this.f4384do = zzoVar;
        this.f4383do = ys;
    }
}
