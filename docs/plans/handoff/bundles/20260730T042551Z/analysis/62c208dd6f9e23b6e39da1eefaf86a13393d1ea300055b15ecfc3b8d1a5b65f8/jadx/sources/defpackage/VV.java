package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zze;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class VV {

    /* renamed from: do, reason: not valid java name */
    public static VV f4134do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4136do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f4137do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ServiceConnectionC3630rV f4138do = new ServiceConnectionC3630rV(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f4135do = 1;

    public VV(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f4137do = scheduledExecutorService;
        this.f4136do = context.getApplicationContext();
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized VV m2648do(Context context) {
        VV vv;
        synchronized (VV.class) {
            if (f4134do == null) {
                zze.zza();
                f4134do = new VV(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new NamedThreadFactory("MessengerIpcClient"))));
            }
            vv = f4134do;
        }
        return vv;
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized XV m2649for(JV jv) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            "Queueing ".concat(jv.toString());
        }
        if (!this.f4138do.m7971new(jv)) {
            ServiceConnectionC3630rV serviceConnectionC3630rV = new ServiceConnectionC3630rV(this);
            this.f4138do = serviceConnectionC3630rV;
            serviceConnectionC3630rV.m7971new(jv);
        }
        return jv.f1648do.f1160do;
    }

    /* renamed from: if, reason: not valid java name */
    public final XV m2650if(int i, Bundle bundle) {
        int i2;
        synchronized (this) {
            i2 = this.f4135do;
            this.f4135do = i2 + 1;
        }
        return m2649for(new DV(i2, i, bundle));
    }
}
