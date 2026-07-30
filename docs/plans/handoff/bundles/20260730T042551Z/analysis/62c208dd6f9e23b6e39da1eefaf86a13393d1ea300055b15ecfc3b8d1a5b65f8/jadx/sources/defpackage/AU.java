package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;

/* loaded from: classes3.dex */
public final class AU implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: do, reason: not valid java name */
    public volatile C2753fS f89do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3217kU f90do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile boolean f91do;

    public AU(C3217kU c3217kU) {
        this.f90do = c3217kU;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m75do(Intent intent) {
        this.f90do.mo1960catch();
        Context mo2255for = this.f90do.mo2255for();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.f91do) {
                this.f90do.mo2249case().f13723this.m7369if("Connection attempt already in progress");
                return;
            }
            this.f90do.mo2249case().f13723this.m7369if("Using local app measurement service");
            this.f91do = true;
            connectionTracker.bindService(mo2255for, intent, this.f90do.f13993do, 129);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                Preconditions.checkNotNull(this.f89do);
                this.f90do.mo2253do().m1964public(new QO(this, this.f89do.getService(), 3));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f89do = null;
                this.f91do = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        C3156jS c3156jS = ((TS) ((C3393nT) this.f90do).f14527do).f3695do;
        if (c3156jS == null || !((AbstractC3570qT) c3156jS).f15118do) {
            c3156jS = null;
        }
        if (c3156jS != null) {
            c3156jS.f13722new.m7368for("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f91do = false;
            this.f89do = null;
        }
        this.f90do.mo2253do().m1964public(new RunnableC2932iU(this, 1));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        C3217kU c3217kU = this.f90do;
        c3217kU.mo2249case().f13720goto.m7369if("Service connection suspended");
        c3217kU.mo2253do().m1964public(new BU(this, 0));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f91do = false;
                this.f90do.mo2249case().f13717do.m7369if("Service connected with null binder");
                return;
            }
            Object obj = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    obj = queryLocalInterface instanceof YR ? (YR) queryLocalInterface : new ZR(iBinder);
                    this.f90do.mo2249case().f13723this.m7369if("Bound to IMeasurementService interface");
                } else {
                    this.f90do.mo2249case().f13717do.m7368for("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f90do.mo2249case().f13717do.m7369if("Service connect failed to get IMeasurementService");
            }
            if (obj == null) {
                this.f91do = false;
                try {
                    ConnectionTracker.getInstance().unbindService(this.f90do.mo2255for(), this.f90do.f13993do);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f90do.mo2253do().m1964public(new PO(this, obj, 5));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        C3217kU c3217kU = this.f90do;
        c3217kU.mo2249case().f13720goto.m7369if("Service disconnected");
        c3217kU.mo2253do().m1964public(new YO(this, componentName));
    }
}
