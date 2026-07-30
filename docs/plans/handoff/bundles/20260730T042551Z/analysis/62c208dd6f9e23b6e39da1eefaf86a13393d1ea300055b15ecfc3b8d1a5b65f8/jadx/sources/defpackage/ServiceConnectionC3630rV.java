package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.cloudmessaging.zzf;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* renamed from: rV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ServiceConnectionC3630rV implements ServiceConnection {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ VV f15289do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C4043yV f15293do;

    /* renamed from: do, reason: not valid java name */
    public int f15288do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Messenger f15290do = new Messenger(new zzf(Looper.getMainLooper(), new Handler.Callback() { // from class: pU
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.arg1;
            ServiceConnectionC3630rV serviceConnectionC3630rV = ServiceConnectionC3630rV.this;
            synchronized (serviceConnectionC3630rV) {
                JV jv = (JV) serviceConnectionC3630rV.f15291do.get(i);
                if (jv == null) {
                    return true;
                }
                serviceConnectionC3630rV.f15291do.remove(i);
                serviceConnectionC3630rV.m7969for();
                Bundle data = message.getData();
                if (data.getBoolean("unsupported", false)) {
                    jv.m1039for(new C2855hC("Not supported by GmsCore", null));
                    return true;
                }
                jv.mo373do(data);
                return true;
            }
        }
    }));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque f15292do = new ArrayDeque();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseArray f15291do = new SparseArray();

    public /* synthetic */ ServiceConnectionC3630rV(VV vv) {
        this.f15289do = vv;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized void m7968do(int i, String str) {
        m7970if(i, str, null);
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized void m7969for() {
        if (this.f15288do == 2 && this.f15292do.isEmpty() && this.f15291do.size() == 0) {
            this.f15288do = 3;
            ConnectionTracker.getInstance().unbindService(this.f15289do.f4136do, this);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m7970if(int i, String str, SecurityException securityException) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            "Disconnected: ".concat(String.valueOf(str));
        }
        int i2 = this.f15288do;
        if (i2 == 0) {
            throw new IllegalStateException();
        }
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return;
            }
            this.f15288do = 4;
            return;
        }
        this.f15288do = 4;
        ConnectionTracker.getInstance().unbindService(this.f15289do.f4136do, this);
        C2855hC c2855hC = new C2855hC(str, securityException);
        Iterator it = this.f15292do.iterator();
        while (it.hasNext()) {
            ((JV) it.next()).m1039for(c2855hC);
        }
        this.f15292do.clear();
        for (int i3 = 0; i3 < this.f15291do.size(); i3++) {
            ((JV) this.f15291do.valueAt(i3)).m1039for(c2855hC);
        }
        this.f15291do.clear();
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized boolean m7971new(JV jv) {
        int i = this.f15288do;
        if (i != 0) {
            if (i == 1) {
                this.f15292do.add(jv);
                return true;
            }
            if (i != 2) {
                return false;
            }
            this.f15292do.add(jv);
            this.f15289do.f4137do.execute(new NR(this, 1));
            return true;
        }
        this.f15292do.add(jv);
        Preconditions.checkState(this.f15288do == 0);
        this.f15288do = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            if (ConnectionTracker.getInstance().bindService(this.f15289do.f4136do, intent, this, 1)) {
                this.f15289do.f4137do.schedule(new DO(this, 1), 30L, TimeUnit.SECONDS);
            } else {
                m7968do(0, "Unable to bind to service");
            }
        } catch (SecurityException e) {
            m7970if(0, "Unable to bind to service", e);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f15289do.f4137do.execute(new WS(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f15289do.f4137do.execute(new PR(this, 2));
    }
}
